variable "availability_zones" {
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}
variable "ami" {}
variable "subnet_id" {}
variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
  default     = []
}
variable "instance_type" {}
variable "instance_type_k8s" {}
variable "test-sg_id" {}
variable "test-sg-k8s_id" {}
variable "private_ips" {
  description = "List of private IPs"
  type        = list(string)
  default     = ["10.150.0.50", "10.150.1.50", "10.150.2.50"]
}
# variable public_key {}
variable "instance_profile_k8s_name" {}
variable "instance_profile_k8s_arn" {}