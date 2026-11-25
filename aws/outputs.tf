output "vpc_id" {
  description = "The ID of the primary VPC"
  value       = aws_vpc.vpc-primary.id
}

output "vpc_arn" {
  description = "The ARN of the primary VPC"
  value       = aws_vpc.vpc-primary.arn
}

output "vpc_cidr_block" {
  description = "The CIDR block of the primary VPC"
  value       = aws_vpc.vpc-primary.cidr_block
}



output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public-subnet.id
}

output "private_subnet_id" {
  description = "ID of the private subnet"
  value       = aws_subnet.private-subnet.id
}

output "route_table_id" {
  description = "ID of the main route table"
  value       = aws_route_table.main-route-table.id
}

output "security_group_id" {
  description = "ID of the security group"
  value       = aws_security_group.example.id
}