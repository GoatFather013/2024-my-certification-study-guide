# This file is used to create a VPC, 3 subnets, an internet gateway, and a route table with a route to the internet gateway.

# The VPC is created with the CIDR block
resource "aws_vpc" "test_vpc" { # The VPC resource is created
  cidr_block           = "10.150.0.0/16" # The CIDR block of the VPC
  enable_dns_support   = true # Enable DNS support for the VPC
  enable_dns_hostnames = true # Enable DNS hostnames for the VPC
  tags = { # The tags for the VPC
    Name = "test_vpc" # The name of the VPC
  }
}

# The subnets are created in the availability zones us-east-1a, us-east-1b, and us-east-1c
# The subnets are associated with the VPC
resource "aws_subnet" "test_subnet-1a" { # The subnet resource is created
  vpc_id                  = aws_vpc.test_vpc.id # The ID of the VPC
  availability_zone       = "us-east-1a" # The availability zone of the subnet
  cidr_block              = "10.150.0.0/24" # The CIDR block of the subnet
  map_public_ip_on_launch = true # Map public IP on launch
  tags = { # The tags for the subnet
    Name = "test_subnet-1a" # The name of the subnet
  }
}

resource "aws_subnet" "test_subnet-1b" { # The subnet resource is created
  vpc_id                  = aws_vpc.test_vpc.id # The ID of the VPC
  availability_zone       = "us-east-1b" # The availability zone of the subnet
  cidr_block              = "10.150.1.0/24" # The CIDR block of the subnet
  map_public_ip_on_launch = true # Map public IP on launch
  tags = { # The tags for the subnet
    Name = "test_subnet-1b" # The name of the subnet
  }
}

resource "aws_subnet" "test_subnet-1c" { # The subnet resource is created
  vpc_id                  = aws_vpc.test_vpc.id # The ID of the VPC
  availability_zone       = "us-east-1c" # The availability zone of the subnet
  cidr_block              = "10.150.2.0/24" # The CIDR block of the subnet
  map_public_ip_on_launch = true # Map public IP on launch
  tags = { # The tags for the subnet
    Name = "test_subnet-1c" # The name of the subnet
  }
}

# The internet gateway is created and associated with the VPC
resource "aws_internet_gateway" "test_igw" { # The internet gateway resource is created
  vpc_id = aws_vpc.test_vpc.id # The ID of the VPC
  tags = { # The tags for the internet gateway 
    Name = "test_igw" # The name of the internet gateway
  }
}

# The route table is created and a route to the internet gateway is added
# The route table is associated with the VPC
resource "aws_route" "test_igw_public_route" { # The route resource is created
  route_table_id         = aws_vpc.test_vpc.main_route_table_id # The ID of the route table
  destination_cidr_block = "0.0.0.0/0" # The destination CIDR block
  gateway_id             = aws_internet_gateway.test_igw.id # The ID of the internet gateway
}

# The data source aws_ssm_parameter is used to get the latest Amazon Linux AMI ID
data "aws_ssm_parameter" "test_name" { # The data source for the Amazon Linux AMI ID
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2" # The name of the parameter
}