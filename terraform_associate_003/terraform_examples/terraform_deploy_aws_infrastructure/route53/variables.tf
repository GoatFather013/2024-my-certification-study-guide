# This file contains the variables that are used in the main.tf file

variable "load-balancer-dns-name" { # Define the load-balancer-dns-name variable
  description = "The DNS name of the load balancer" # Set the description of the variable
  type        = string # Set the type of the variable to string
  default     = "" # Set the default value of the variable to an empty string
}

variable "load-balancer-zone-id" { # Define the load-balancer-zone-id variable
  description = "The Zone ID of the load balancer" # Set the description of the variable 
  type        = string # Set the type of the variable to string
  default     = "" # Set the default value of the variable to an empty string
}

variable "R53_AWS_ACCESS_KEY_ID" {  # Define the R53_AWS_ACCESS_KEY_ID variable
  description = "The AWS Access Key ID for the Route53 provider" # Set the description of the variable
  type        = string # Set the type of the variable to string
  default     = "" # Set the default value of the variable to an empty string
}
variable "R53_AWS_SECRET_ACCESS_KEY" { # Define the R53_AWS_SECRET_ACCESS_KEY variable
  description = "The AWS Secret Access Key for the Route53 provider" # Set the description of the variable
  type        = string # Set the type of the variable to string
  default     = "" # Set the default value of the variable to an empty string
}
variable "R53_HOSTED_ZONE_ID" { # Define the R53_HOSTED_ZONE_ID variable
  description = "The Route53 Hosted Zone ID" # Set the description of the variable
  type        = string # Set the type of the variable to string
  default     = "" # Set the default value of the variable to an empty string
}
variable "R53_DOMAIN_NAME" { # Define the R53_DOMAIN_NAME variable
  description = "The Route53 Domain Name" # Set the description of the variable
  type        = string # Set the type of the variable to string
  default     = "" # Set the default value of the variable to an empty string
}