### This is the main file where all the modules are called and the variables are passed to the modules.
### The modules are called in the order of VPC, Security Groups, Instance Role, EC2 Instances, Load Balancer, and Route53.
### The variables are passed to the modules from the variables.tf file.

terraform { 
  backend "remote" { # terraform block for remote backend configuration
    organization = "example-organization" # organization name
    workspaces { # workspaces block for workspace configuration
      name = "example-workspace" # name of the workspace
    }

  }
}

provider "aws" { # provider block for AWS provider configuration
  region = var.main_region # region variable is passed to the provider block
}

module "vpc" { # module block for VPC module
  source = "./modules/vpc" # source of the module
  region = var.main_region # region variable is passed to the module
}
module "securitygroups" { # module block for Security Groups module
  source = "./modules/securitygroups" # source of the module
  vpc_id = module.vpc.vpc_id # vpc_id variable is passed to the module
}

module "instancerole" { # module block for Instance Role module
  source = "./modules/instancerole" # source of the module
}

module "instances" { # module block for EC2 Instances module
  source     = "./modules/ec2" # source of the module
  depends_on = [module.route53, module.route53] # dependency on Route53 module

  ami                       = module.vpc.ami_id  # ami_id variable is passed to the module
  subnet_id                 = module.vpc.subnet_id-1a # subnet_id variable is passed to the module
  subnet_ids                = [module.vpc.subnet_id-1a, module.vpc.subnet_id-1b, module.vpc.subnet_id-1c] # subnet_ids variable is passed to the module
  instance_type             = "t3.micro" # instance_type variable is passed to the module
  instance_type_k8s         = "t3.medium" # instance_type_k8s variable is passed to the module
  test-sg_id                = [module.securitygroups.test-sg_id] # test-sg_id variable is passed to the module
  test-sg-k8s_id            = [module.securitygroups.test-sg-k8s_id] # test-sg-k8s_id variable is passed to the module
  instance_profile_k8s_name = module.instancerole.k8s_profile_name # instance_profile_k8s_name variable is passed to the module
  instance_profile_k8s_arn  = module.instancerole.k8s-role-arn # instance_profile_k8s_arn variable is passed to the module
}

module "loadbalancer" { # module block for Load Balancer module
  source       = "./modules/loadbalancer" # source of the module
  subnet_ids   = [module.vpc.subnet_id-1a, module.vpc.subnet_id-1b, module.vpc.subnet_id-1c] # subnet_ids variable is passed to the module
  vpc_id       = module.vpc.vpc_id # vpc_id variable is passed to the module
  instance_ids = module.instances.instance_ids # instance_ids variable is passed to the module
}

module "route53" { # module block for Route53 module
  source                    = "./modules/route53" # source of the module
  load-balancer-dns-name    = module.loadbalancer.loadbalancer-dns-name # load-balancer-dns-name variable is passed to the module
  load-balancer-zone-id     = module.loadbalancer.loadbalancer-zone-id # load-balancer-zone-id variable is passed to the module
  R53_AWS_ACCESS_KEY_ID     = var.R53_AWS_ACCESS_KEY_ID # R53_AWS_ACCESS_KEY_ID variable is passed to the module
  R53_AWS_SECRET_ACCESS_KEY = var.R53_AWS_SECRET_ACCESS_KEY # R53_AWS_SECRET_ACCESS_KEY variable is passed to the module
  R53_HOSTED_ZONE_ID        = var.R53_HOSTED_ZONE_ID # R53_HOSTED_ZONE_ID variable is passed to the module
  R53_DOMAIN_NAME           = var.R53_DOMAIN_NAME # R53_DOMAIN_NAME variable is passed to the module
}