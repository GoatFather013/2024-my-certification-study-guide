# This file contains the output variables for the security groups created in the main.tf file.

output "test-sg_id" { # Output variable to store the ID of the security group
  description = "ID of the security group" # Description of the output variable
  value       = aws_security_group.test_sg.id # Value of the output variable
}

output "test-sg-k8s_id" { # Output variable to store the ID of the k8s security group 
  description = "ID of the k8s security group" # Description of the output variable
  value       = aws_security_group.test_k8s_sg.id # Value of the output variable
}