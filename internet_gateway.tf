resource "aws_internet_gateway" "infrastructure-igw" {
  vpc_id = aws_vpc.infrastructure_vpc.id
  tags   = {
    Name = "Infrastructure-IGW"
  }
}