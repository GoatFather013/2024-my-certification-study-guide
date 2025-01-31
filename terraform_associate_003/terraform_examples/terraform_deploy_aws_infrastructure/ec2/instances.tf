# This file is used to create EC2 instances in AWS

resource "aws_key_pair" "test_key_pair" { # Create a key pair
  key_name   = "test_key_pair" # Name of the key pair
  public_key = "example_public_key" # Public key
}

resource "aws_instance" "test_instance" { # Create an EC2 instance
  ami                    = var.ami # AMI ID 
  subnet_id              = var.subnet_id # Subnet ID
  instance_type          = var.instance_type # Instance type
  vpc_security_group_ids = var.test-sg_id # Security group ID
  key_name               = aws_key_pair.test_key_pair.key_name # Key pair name
  tags = { # Tags for the EC2 instance
    Name = "test_instance" # Name of the EC2 instance
  }
}

resource "aws_instance" "test_instance_k8s" { # Create an EC2 instance
  count         = length(var.subnet_ids) # Number of instances to create (length of subnet_ids)
  ami           = var.ami # AMI ID
  instance_type = var.instance_type_k8s # Instance type
  ebs_block_device { # EBS block device
    device_name = "/dev/xvda" # Device name
    volume_size = 30 # Volume size
    volume_type = "gp3" # Volume type
    iops        = 3000 # IOPS
    throughput  = 125 # Throughput
  }
  subnet_id              = var.subnet_ids[count.index] # Subnet ID (based on count.index)
  vpc_security_group_ids = var.test-sg-k8s_id # Security group ID
  key_name               = aws_key_pair.test_key_pair.key_name # Key pair name
  private_ip             = var.private_ips[count.index] # Private IP (based on count.index)
  private_dns_name_options { # Private DNS name options
    enable_resource_name_dns_a_record = true # Enable resource name DNS A record
  }
  tags = { # Tags for the EC2 instance
    Name                               = "test_instance_k8s-${count.index + 1}" # Name of the EC2 instance
    "kubernetes.io/cluster/kubernetes" = "owned" # Kubernetes cluster
  } 
  iam_instance_profile = var.instance_profile_k8s_name # IAM instance profile name
}