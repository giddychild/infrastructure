output "vpc_id" {
  value = aws_vpc.infrastructure_vpc.id
}

output "vpc_cidr_block" {
  value = aws_vpc.infrastructure_vpc.cidr_block
}

output "public_subnet_1a_id" {
  value = aws_subnet.public_subnet_1a.id
}

output "public_subnet_1b_id" {
  value = aws_subnet.public_subnet_1b.id
}