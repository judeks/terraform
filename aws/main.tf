
#create the primary vpc for workloads

resource "aws_vpc" "vpc-primary" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name        = "primary-vpc"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}


resource "aws_subnet" "public-subnet" {
  vpc_id                  = aws_vpc.vpc-primary.id
  cidr_block              = var.public_subnet_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name        = "public-subnet"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

resource "aws_subnet" "private-subnet" {
  vpc_id            = aws_vpc.vpc-primary.id
  cidr_block        = var.private_subnet_cidr
  availability_zone = var.availability_zone

  tags = {
    Name        = "private-subnet"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

# route table for the vpc
resource "aws_route_table" "main-route-table" {
  vpc_id = aws_vpc.vpc-primary.id

  tags = {
    Name        = "main-route-table"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

# route association
resource "aws_route_table_association" "public-subnet-association" {
  subnet_id      = aws_subnet.public-subnet.id
  route_table_id = aws_route_table.main-route-table.id
}

resource "aws_route_table_association" "private-subnet-association" {
  subnet_id      = aws_subnet.private-subnet.id
  route_table_id = aws_route_table.main-route-table.id
}


# Example Security Group
resource "aws_security_group" "example" {
  name        = "example-security-group"
  description = "Example security group for our VPC"
  vpc_id      = aws_vpc.vpc-primary.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "example-security-group"
    Environment = var.environment
  }
}
