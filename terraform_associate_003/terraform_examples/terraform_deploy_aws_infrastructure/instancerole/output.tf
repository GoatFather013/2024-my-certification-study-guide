# The output.tf file is used to output the role name, role ARN, instance profile name, and instance profile ARN. 

output "k8s-role-name" { # Output the role name
  value = aws_iam_role.k8s_role.name # Output the role name
}
output "k8s-role-arn" { # Output the role arn 
  value = aws_iam_role.k8s_role.arn # Output the role arn
}
output "k8s_profile_name" { # Output the instance profile name
  value = aws_iam_instance_profile.k8s_instance_profile.name # Output the instance profile name
}

output "k8s_profile_arn" { # Output the instance profile arn
  value = aws_iam_instance_profile.k8s_instance_profile.arn # Output the instance profile arn
}