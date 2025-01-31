# This file is used to create a network load balancer and associate it with target groups and listeners.

resource "aws_lb" "k8s-test-nlb" { # Create a network load balancer
  name               = "k8s-test-nlb" # Name of the load balancer
  internal           = false # Whether the load balancer is internal or external 
  load_balancer_type = "network" # Type of the load balancer
  subnets            = var.subnet_ids # Subnets in which the load balancer will be created
  tags = { # Tags for the load balancer
    "kubernetes.io/cluster/kubernetes" = "owned" # Tag for the kubernetes cluster
  }
}

resource "aws_lb_target_group" "k8s-test-tg-22" { # Create a target group for port 22
  name     = "k8s-test-tg-22" # Name of the target group
  port     = 22 # Port for the target group
  protocol = "TCP" # Protocol for the target group
  vpc_id   = var.vpc_id # VPC in which the target group will be created
}

resource "aws_lb_target_group" "k8s-test-tg-6443" { # Create a target group for port 6443
  name     = "k8s-test-tg-6443" # Name of the target group
  port     = 6443 # Port for the target group
  protocol = "TCP" # Protocol for the target group
  vpc_id   = var.vpc_id # VPC in which the target group will be created
} 

resource "aws_lb_target_group" "k8s-test-tg-8080" { # Create a target group for port 8080
  name     = "k8s-test-tg-8080" # Name of the target group
  port     = 8080 # Port for the target group
  protocol = "TCP" # Protocol for the target group
  vpc_id   = var.vpc_id # VPC in which the target group will be created
}

resource "aws_lb_target_group" "k8s-test-tg-40627" { # Create a target group for port 40627
  name     = "k8s-test-tg-40627" # Name of the target group
  port     = 40627 # Port for the target group
  protocol = "TCP" # Protocol for the target group
  vpc_id   = var.vpc_id # VPC in which the target group will be created
}

resource "aws_lb_target_group_attachment" "k8s-test-tga-22" { # Attach target group to instances for port 22
  count            = length(var.instance_ids) # Number of instances to attach (Length of the instance_ids list)
  target_group_arn = aws_lb_target_group.k8s-test-tg-22.arn # ARN of the target group
  target_id        = var.instance_ids[count.index] # ID of the instance (Index of the instance_ids list)
  port             = 22  # Port for the target group 
}

resource "aws_lb_target_group_attachment" "k8s-test-tga-6443" { # Attach target group to instances for port 6443
  count            = length(var.instance_ids) # Number of instances to attach (Length of the instance_ids list)
  target_group_arn = aws_lb_target_group.k8s-test-tg-6443.arn # ARN of the target group
  target_id        = var.instance_ids[count.index] # ID of the instance (Index of the instance_ids list)
  port             = 6443 # Port for the target group
}
resource "aws_lb_target_group_attachment" "k8s-test-tga-8080" { # Attach target group to instances for port 8080
  count            = length(var.instance_ids)  # Number of instances to attach (Length of the instance_ids list)
  target_group_arn = aws_lb_target_group.k8s-test-tg-8080.arn # ARN of the target group
  target_id        = var.instance_ids[count.index] # ID of the instance (Index of the instance_ids list)
  port             = 8080 # Port for the target group
}

resource "aws_lb_target_group_attachment" "k8s-test-tga-40627" { # Attach target group to instances for port 40627
  count            = length(var.instance_ids) # Number of instances to attach (Length of the instance_ids list)
  target_group_arn = aws_lb_target_group.k8s-test-tg-40627.arn # ARN of the target group 
  target_id        = var.instance_ids[count.index] # ID of the instance (Index of the instance_ids list)
  port             = 40627 # Port for the target group
}

resource "aws_lb_listener" "k8s-test-lt-22" { # Create a listener for port 22
  load_balancer_arn = aws_lb.k8s-test-nlb.arn # ARN of the load balancer
  port              = 22 # Port for the listener
  protocol          = "TCP" # Protocol for the listener

  default_action { # Default action for the listener
    type             = "forward" # Type of the action
    target_group_arn = aws_lb_target_group.k8s-test-tg-22.arn # ARN of the target group
  }
}

resource "aws_lb_listener" "k8s-test-lt-6443" { # Create a listener for port 6443
  load_balancer_arn = aws_lb.k8s-test-nlb.arn # ARN of the load balancer
  port              = 6443 # Port for the listener
  protocol          = "TCP" # Protocol for the listener

  default_action { # Default action for the listener
    type             = "forward" # Type of the action
    target_group_arn = aws_lb_target_group.k8s-test-tg-6443.arn # ARN of the target group
  }
}

resource "aws_lb_listener" "k8s-test-lt-8080" { # Create a listener for port 8080
  load_balancer_arn = aws_lb.k8s-test-nlb.arn # ARN of the load balancer
  port              = 8080 # Port for the listener
  protocol          = "TCP" # Protocol for the listener

  default_action { # Default action for the listener
    type             = "forward" # Type of the action
    target_group_arn = aws_lb_target_group.k8s-test-tg-8080.arn # ARN of the target group
  }
}

resource "aws_lb_listener" "k8s-test-lt-40627" { # Create a listener for port 40627
  load_balancer_arn = aws_lb.k8s-test-nlb.arn # ARN of the load balancer
  port              = 40627 # Port for the listener 
  protocol          = "TCP" # Protocol for the listener

  default_action {
    type             = "forward" # Type of the action
    target_group_arn = aws_lb_target_group.k8s-test-tg-40627.arn # ARN of the target group
  }
}