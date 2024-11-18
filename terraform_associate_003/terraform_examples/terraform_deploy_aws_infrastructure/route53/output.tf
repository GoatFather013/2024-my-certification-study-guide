# This file is used to output the DNS name of the created Route53 record

output "name" { # Output the DNS name of the created Route53 record
  value = aws_route53_record.k8s-test-dns.name # The value is the DNS name of the created Route53 record
}