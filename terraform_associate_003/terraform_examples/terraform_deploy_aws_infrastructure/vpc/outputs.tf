# This file contains the output variables that are used to display the output of the terraform apply command.

output "subnet_id-1a" { # Output variable to display the subnet id of the subnet created in the availability zone 1a
  value = aws_subnet.test_subnet-1a.id # The value of the output variable is the id of the subnet created in the availability zone 1a
}

output "subnet_id-1b" { # Output variable to display the subnet id of the subnet created in the availability zone 1b
  value = aws_subnet.test_subnet-1b.id # The value of the output variable is the id of the subnet created in the availability zone 1b
}

output "subnet_id-1c" { # Output variable to display the subnet id of the subnet created in the availability zone 1c
  value = aws_subnet.test_subnet-1c.id # The value of the output variable is the id of the subnet created in the availability zone 1c
}

output "ami_id" { # Output variable to display the ami id of the ami used to create the ec2 instance
  value = data.aws_ssm_parameter.test_name.value # The value of the output variable is the id of the ami used to create the ec2 instance
}

output "vpc_id" { # Output variable to display the vpc id of the vpc created
  value = aws_vpc.test_vpc.id # The value of the output variable is the id of the vpc created
}