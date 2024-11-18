# This file is used to create an IAM role and associate it with an instance profile.

# The IAM role is used to define the permissions that the EC2 instances will have.
resource "aws_iam_policy" "k8s_policy" { # The IAM policy is used to define the permissions that the EC2 instances will have.
  name        = "k8s_policy" # The name of the IAM policy.
  description = "Allow EC2 k8s actions" # The description of the IAM policy.
  policy = jsonencode({ # The policy document that defines the permissions for the IAM policy.
    Version = "2012-10-17", # The version of the policy document.
  Statement = [ # The list of statements that define the permissions for the IAM policy.
      {
        Effect = "Allow", # The effect of the statement.
        Action = [ # The list of actions that are allowed by the statement.
          "ec2:AssignPrivateIpAddresses",
          "ec2:AttachNetworkInterface",
          "ec2:CreateNetworkInterface",
          "ec2:DeleteNetworkInterface",
          "ec2:DescribeInstances",
          "ec2:DescribeTags",
          "ec2:DescribeNetworkInterfaces",
          "ec2:DescribeInstanceTypes",
          "ec2:DetachNetworkInterface",
          "ec2:ModifyNetworkInterfaceAttribute",
          "ec2:UnassignPrivateIpAddresses"
        ],
        Resource = "*" # The resource that the actions are allowed on.
      },
      {
        Effect = "Allow", # The effect of the statement.
        Action = [ # The list of actions that are allowed by the statement.
          "ecr:GetAuthorizationToken",
          "ecr:BatchCheckLayerAvailability",
          "ecr:GetDownloadUrlForLayer",
          "ecr:GetRepositoryPolicy",
          "ecr:DescribeRepositories",
          "ecr:ListImages",
          "ecr:DescribeImages"
        ],
        Resource = "*" # The resource that the actions are allowed on.
      },
      {
        Effect = "Allow", # The effect of the statement.
        Action = [ # The list of actions that are allowed by the statement.
          "ssm:GetParametersByPath",
          "ssm:GetParameters",
          "ssm:GetParameter"
        ],
        Resource = [ # The list of resources that the actions are allowed on.
          "arn:aws:ssm:us-east-1:*:parameter/kubernetes/",
          "arn:aws:ssm:us-east-1:*:parameter/kubernetes/*"
        ]
      },
      {
        Effect = "Allow", # The effect of the statement.
        Action = [ # The list of actions that are allowed by the statement.
          "ssm:DescribeParameters"
        ],
        Resource = "*" # The resource that the actions are allowed on.
      },
      {
        Effect = "Allow", # The effect of the statement.
        Action = [ # The list of actions that are allowed by the statement.
          "ec2:AssignPrivateIpAddresses",
          "ec2:AttachNetworkInterface",
          "ec2:CreateNetworkInterface",
          "ec2:DeleteNetworkInterface",
          "ec2:DescribeInstances",
          "ec2:DescribeTags",
          "ec2:DescribeNetworkInterfaces",
          "ec2:DescribeInstanceTypes",
          "ec2:DetachNetworkInterface",
          "ec2:ModifyNetworkInterfaceAttribute",
          "ec2:UnassignPrivateIpAddresses"
        ],
        Resource = "*" # The resource that the actions are allowed on.
      },
      {
        Effect = "Allow", # The effect of the statement.
        Action = [ # The list of actions that are allowed by the statement.
          "ecr:GetAuthorizationToken",
          "ecr:BatchCheckLayerAvailability",
          "ecr:GetDownloadUrlForLayer",
          "ecr:GetRepositoryPolicy",
          "ecr:DescribeRepositories",
          "ecr:ListImages",
          "ecr:DescribeImages"
        ],
        Resource = "*" # The resource that the actions are allowed on.
      },
      {
        Effect = "Allow", # The effect of the statement.
        Action = [ # The list of actions that are allowed by the statement.
          "ssm:GetParametersByPath", 
          "ssm:GetParameters",
          "ssm:GetParameter"
        ],
        Resource = [ # The list of resources that the actions are allowed on.
          "arn:aws:ssm:us-east-1:*:parameter/kubernetes/",
          "arn:aws:ssm:us-east-1:*:parameter/kubernetes/*"
        ]
      },
      {
        Effect = "Allow", # The effect of the statement.
        Action = [ # The list of actions that are allowed by the statement.
          "ssm:DescribeParameters"
        ],
        Resource = "*" # The resource that the actions are allowed on.
      }
    ]
  })
}

# The IAM role is used to define the permissions that the EC2 instances will have.
resource "aws_iam_role" "k8s_role" { # The IAM role is used to define the permissions that the EC2 instances will have.
  name                = "k8s_role" # The name of the IAM role.
  managed_policy_arns = [aws_iam_policy.k8s_policy.arn] # The ARN of the IAM policy that is attached to the IAM role.
  assume_role_policy = jsonencode({ # The policy document that defines the permissions for the IAM role.
    Version = "2012-10-17", # The version of the policy document.
    Statement = [ # The list of statements that define the permissions for the IAM role.
      {
        Effect = "Allow", # The effect of the statement.
        Principal = { # The principal that is allowed to assume the IAM role.
          Service = ["ec2.amazonaws.com", "ecr.amazonaws.com"] # The list of services that are allowed to assume the IAM role.
        },
        Action = "sts:AssumeRole" # The action that is allowed by the statement.
      }
    ]
  })
}

# The instance profile is used to associate the IAM role with the EC2 instances.
resource "aws_iam_instance_profile" "k8s_instance_profile" { # The instance profile is used to associate the IAM role with the EC2 instances.
  name = "k8s_instance_profile" # The name of the instance profile.
  role = aws_iam_role.k8s_role.name # The name of the IAM role that is associated with the instance profile.
}