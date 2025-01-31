# This file contains the variables that are used in the main.tf file

variable "main_region" { # This is the main region where the infrastructure will be deployed
  description = "The AWS region to deploy to" # Description of the variable
  type        = string # The type of the variable
  default     = "us-east-1" # The default value of the variable

}
variable "R53_AWS_ACCESS_KEY_ID" { # The AWS Access Key ID for the Route53 provider
  description = "The AWS Access Key ID for the Route53 provider" # Description of the variable
  type        = string # The type of the variable
  default     = "" # The default value of the variable
}
variable "R53_AWS_SECRET_ACCESS_KEY" { # The AWS Secret Access Key for the Route53 provider
  description = "The AWS Secret Access Key for the Route53 provider" # Description of the variable
  type        = string # The type of the variable
  default     = "" # The default value of the variable
}
variable "R53_HOSTED_ZONE_ID" { # The Route53 Hosted Zone ID
  description = "The Route53 Hosted Zone ID" # Description of the variable
  type        = string # The type of the variable
  default     = "" # The default value of the variable
}
variable "R53_DOMAIN_NAME" { # The Route53 Domain Name
  description = "The Route53 Domain Name" # Description of the variable
  type        = string # The type of the variable
  default     = ""  # The default value of the variable
}