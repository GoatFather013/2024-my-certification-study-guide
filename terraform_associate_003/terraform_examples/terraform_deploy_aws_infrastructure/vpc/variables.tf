# This file contains the variables that are used in the vpc.tf file

variable "region" { # Variable to store the region in which the infrastructure is to be deployed
  description = "The AWS region to deploy to" # Description of the variable
  type        = string # The type of the variable is string
  default     = "us-east-1" # The default value of the variable is us-east-1
}