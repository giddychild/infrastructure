resource "aws_route_table" "infrastructure_igw_rt" {
  vpc_id = aws_vpc.infrastructure_vpc.id
  tags   = {
    Name = "Security IGW RT"
  }
}

resource "aws_route_table" "infrastructure_public_rt" {
  vpc_id = aws_vpc.infrastructure_vpc.id
  tags   = {
    Name = "Production Public RT"
  }
}