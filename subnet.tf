resource "aws_subnet" "public_subnet_1a" {
  cidr_block        = var.public_subnet_1a_cidr
  vpc_id            = aws_vpc.infrastructure_vpc.id
  availability_zone = "us-east-1a"
  tags              = {
    Name = "Public Subnet A"
  }
}

resource "aws_subnet" "public_subnet_1b" {
  cidr_block        = var.public_subnet_1b_cidr
  vpc_id            = aws_vpc.infrastructure_vpc.id
  availability_zone = "us-east-1b"
  tags              = {
    Name = "Public Subnet B"
  }
}