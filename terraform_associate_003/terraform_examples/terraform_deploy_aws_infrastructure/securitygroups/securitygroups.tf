# This file is used to create security groups in AWS.
# The security groups are created in the VPC that gets created in the VPC module.

resource "aws_security_group" "test_sg" { # Resource block to create a security group
  name        = "test_sg" # Name of the security group
  description = "Allow inbound traffic" # Description of the security group
  vpc_id      = var.vpc_id # VPC ID where the security group is created

  ingress { # Ingress block to allow inbound traffic
    from_port   = 22 # Port number from where the traffic is allowed
    to_port     = 22 # Port number to where the traffic is allowed
    protocol    = "tcp" # Protocol of the traffic
    cidr_blocks = [""] # IP address from where the traffic is allowed
  }
  ingress { # Ingress block to allow inbound traffic
    from_port   = 22 # Port number from where the traffic is allowed
    to_port     = 22 # Port number to where the traffic is allowed
    protocol    = "tcp" # Protocol of the traffic
    cidr_blocks = [""] # IP address from where the traffic is allowed
  }
  egress { # Egress block to allow outbound traffic
    from_port   = 0 # Port number from where the traffic is allowed
    to_port     = 0 # Port number to where the traffic is allowed
    protocol    = "-1" # Protocol of the traffic (-1 means all protocols)
    cidr_blocks = ["0.0.0.0/0"] # IP address to where the traffic is allowed
  }
}

resource "aws_security_group" "test_k8s_sg" { # Resource block to create a security group
  name        = "test_k8s_sg" # Name of the security group
  description = "Allow inbound traffic" # Description of the security group
  vpc_id      = var.vpc_id # VPC ID where the security group is created

  ingress { # Ingress block to allow inbound traffic
    from_port   = 22 # Port number from where the traffic is allowed
    to_port     = 22 # Port number to where the traffic is allowed
    protocol    = "tcp" # Protocol of the traffic
    cidr_blocks = [""] # IP address from where the traffic is allowed
  }
  ingress { # Ingress block to allow inbound traffic
    from_port   = 22 # Port number from where the traffic is allowed
    to_port     = 22 # Port number to where the traffic is allowed
    protocol    = "tcp" # Protocol of the traffic
    cidr_blocks = [""] # IP address from where the traffic is allowed
  }
  ingress { # Ingress block to allow inbound traffic
    from_port   = 6443 # Port number from where the traffic is allowed
    to_port     = 6443 # Port number to where the traffic is allowed
    protocol    = "tcp" # Protocol of the traffic
    cidr_blocks = [""] # IP address from where the traffic is allowed
  }
  ingress { # Ingress block to allow inbound traffic
    from_port   = 6443 # Port number from where the traffic is allowed
    to_port     = 6443 # Port number to where the traffic is allowed
    protocol    = "tcp" # Protocol of the traffic
    cidr_blocks = [""] # IP address from where the traffic is allowed
  }
  ingress { # Ingress block to allow inbound traffic
    from_port   = 8080 # Port number from where the traffic is allowed
    to_port     = 8080 # Port number to where the traffic is allowed
    protocol    = "tcp" # Protocol of the traffic
    cidr_blocks = [""] # IP address from where the traffic is allowed
  }
  ingress { # Ingress block to allow inbound traffic
    from_port   = 8080 # Port number from where the traffic is allowed
    to_port     = 8080 # Port number to where the traffic is allowed
    protocol    = "tcp" # Protocol of the traffic
    cidr_blocks = [""] # IP address from where the traffic is allowed
  }
  ingress { # Ingress block to allow inbound traffic
    from_port   = 40627 # Port number from where the traffic is allowed
    to_port     = 40627 # Port number to where the traffic is allowed
    protocol    = "tcp" # Protocol of the traffic
    cidr_blocks = ["93.90.66.142/32"] # IP address from where the traffic is allowed
  }
  ingress { # Ingress block to allow inbound traffic
    from_port   = 40627 # Port number from where the traffic is allowed
    to_port     = 40627 # Port number to where the traffic is allowed
    protocol    = "tcp" # Protocol of the traffic
    cidr_blocks = [""]
  }
  egress { # Egress block to allow outbound traffic
    from_port   = 0 # Port number from where the traffic is allowed
    to_port     = 0 # Port number to where the traffic is allowed
    protocol    = "-1" # Protocol of the traffic (-1 means all protocols)
    cidr_blocks = ["0.0.0.0/0"] # IP address to where the traffic is allowed
  }
}

resource "aws_security_group_rule" "k8s_group_ingress" { # Resource block to create a security group rule
  type                     = "ingress" # Type of the security group rule
  from_port                = 0 # Port number from where the traffic is allowed
  to_port                  = 0 # Port number to where the traffic is allowed
  protocol                 = "-1" # Protocol of the traffic (-1 means all protocols)
  security_group_id        = aws_security_group.test_k8s_sg.id # ID of the security group
  source_security_group_id = aws_security_group.test_k8s_sg.id # ID of the source security group
}