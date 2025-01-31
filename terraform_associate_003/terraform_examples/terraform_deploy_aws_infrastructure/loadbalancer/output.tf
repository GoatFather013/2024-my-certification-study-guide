# This file contains the output variables for the load balancer created in the main.tf file.

output "loadbalancer-arn" { # Output the ARN of the load balancer
  value = aws_lb.k8s-test-nlb.arn # ARN of the load balancer
}

output "loadbalancer-dns-name" { # Output the DNS name of the load balancer
  value = aws_lb.k8s-test-nlb.dns_name # DNS name of the load balancer
}

output "loadbalancer-zone-id" { # Output the zone ID of the load balancer
  value = aws_lb.k8s-test-nlb.zone_id # Zone ID of the load balancer
}