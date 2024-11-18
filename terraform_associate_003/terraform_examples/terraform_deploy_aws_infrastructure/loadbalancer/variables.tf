# This file contains the variables that are used in the main.tf file

variable "subnet_ids" { # List of subnet IDs
  description = "List of subnet IDs" # Description of the variable
  type        = list(string)  # Type of the variable (List of strings)
  default     = [] # Default value of the variable (Empty list)
}

variable "vpc_id" {} # VPC ID

variable "instance_ids" {} # List of instance IDs