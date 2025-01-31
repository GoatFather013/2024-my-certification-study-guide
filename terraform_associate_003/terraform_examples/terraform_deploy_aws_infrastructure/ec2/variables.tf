# Description: This file contains the variables that are used in the instances.tf file.

variable "availability_zones" { # This variable is used to specify the availability zones.
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}
variable "ami" {} # This variable is used to specify the AMI ID.
variable "subnet_id" {} # This variable is used to specify the subnet ID.
variable "subnet_ids" { # This variable is used to specify the subnet IDs.
  description = "List of subnet IDs" # This is the description of the variable. 
  type        = list(string) # This is the type of the variable. (list of strings)
  default     = [] # This is the default value of the variable.
}
variable "instance_type" {} # This variable is used to specify the instance type.
variable "instance_type_k8s" {} # This variable is used to specify the instance type for the Kubernetes cluster. 
variable "test-sg_id" {} # This variable is used to specify the security group ID.
variable "test-sg-k8s_id" {} # This variable is used to specify the security group ID for the Kubernetes cluster
variable "private_ips" { # This variable is used to specify the private IPs.
  description = "List of private IPs" # This is the description of the variable.
  type        = list(string) # This is the type of the variable. (list of strings)
  default     = ["10.150.0.50", "10.150.1.50", "10.150.2.50"] # This is the default value of the variable.
}
# variable public_key {}
variable "instance_profile_k8s_name" {} # This variable is used to specify the instance profile name for the Kubernetes cluster.
variable "instance_profile_k8s_arn" {} # This variable is used to specify the instance profile ARN for the Kubernetes cluster.