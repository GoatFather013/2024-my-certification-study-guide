# This file contains the outputs of the terraform script
# The outputs are the IDs and IP addresses of the EC2 instances
# The outputs are used to display the information after the terraform script is executed

output "instance_ids" { # Output the IDs of the EC2 instances
  description = "List of IDs of the EC2 instances" # Description of the output 
  value       = aws_instance.test_instance_k8s[*].id # Value of the output
}

output "PrivateIP_test_instance" { # Output the private IP of the EC2 instance 
  description = "Private IP of the EC2 instance" # Description of the output
  value       = aws_instance.test_instance.private_ip # Value of the output 
}

output "PrivateIP_test_instance_k8s_node_1" { # Output the private IP of the k8s node 1 instance
  description = "Private IP of the k8s node 1 instance" # Description of the output
  value       = aws_instance.test_instance_k8s[0].private_ip # Value of the output
}

output "PrivateIP_test_instance_k8s_node_2" { # Output the private IP of the k8s node 2 instance
  description = "Private IP of the k8s node 2 instance" # Description of the output
  value       = aws_instance.test_instance_k8s[1].private_ip # Value of the output
}

output "PrivateIP_test_instance_k8s_node_3" { # Output the private IP of the k8s node 3 instance
  description = "Private IP of the k8s node 3 instance" # Description of the output
  value       = aws_instance.test_instance_k8s[2].private_ip # Value of the output
}

output "PublicIP_test_instance" { # Output the public IP of the EC2 instance
  description = "Public IP of the EC2 instance" # Description of the output
  value       = aws_instance.test_instance.public_ip # Value of the output
}

output "PublicIP_test_instance_k8s_node_1" { # Output the public IP of the k8s node 1 instance
  description = "Public IP of the k8s node 1 instance" # Description of the output
  value       = aws_instance.test_instance_k8s[0].public_ip  # Value of the output
} 

output "PublicIP_test_instance_k8s_node_2" { # Output the public IP of the k8s node 2 instance
  description = "Public IP of the k8s node 2 instance" # Description of the output
  value       = aws_instance.test_instance_k8s[1].public_ip # Value of the output
}

output "PublicIP_test_instance_k8s_node_3" { # Output the public IP of the k8s node 3 instance
  description = "Public IP of the k8s node 3 instance"  # Description of the output
  value       = aws_instance.test_instance_k8s[2].public_ip # Value of the output
}