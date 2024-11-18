# The output block is used to define the output values of the modules used in the main configuration file.

output "securitygroups" { # output block for Security Groups module
  value = module.securitygroups # value of the output
}

output "instances" { # output block for EC2 Instances module
  value = module.instances # value of the output
}

output "instancerole" { # output block for Instance Role module
  value = module.instancerole # value of the output
}

output "loadbalancer" { # output block for Load Balancer module
  value = module.loadbalancer # value of the output
}

output "route53" { # output block for Route53 module
  value = module.route53 # value of the output
}