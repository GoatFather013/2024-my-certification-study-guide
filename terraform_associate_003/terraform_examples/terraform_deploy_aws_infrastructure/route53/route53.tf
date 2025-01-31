# This file is used to create a Route53 record that points to the load balancer DNS name.

provider "aws" { # Define the AWS provider
  region     = "eu-west-1" # Set the region to eu-west-1 
  access_key = var.R53_AWS_ACCESS_KEY_ID # Set the access key to the value of the R53_AWS_ACCESS_KEY_ID variable 
  secret_key = var.R53_AWS_SECRET_ACCESS_KEY # Set the secret key to the value of the R53_AWS_SECRET_ACCESS_KEY variable 
}

resource "aws_route53_record" "k8s-test-dns" { # Create a Route53 record
  zone_id = var.R53_HOSTED_ZONE_ID # Set the zone ID to the value of the R53_HOSTED_ZONE_ID variable 
  name    = format("k8s-test-control-plane.%s", var.R53_DOMAIN_NAME) # Set the name to the value of the R53_DOMAIN_NAME variable
  type    = "A" # Set the type to A
  alias { # Define an alias
    name = var.load-balancer-dns-name # Set the name to the value of the load-balancer-dns-name variable
    zone_id = var.load-balancer-zone-id # Set the zone ID to the value of the load-balancer-zone-id variable
    evaluate_target_health = false # Set evaluate_target_health to false
  }
}