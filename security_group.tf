resource "aws_security_group" "jenkins-sg" {
  name        = "jenkins-sg"
  description = "Internet Traffic to Jenkins Server"
  vpc_id      = aws_vpc.infrastructure_vpc.id
  ingress {
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags        = {
    Name = "Jenkins Security Group"
  }
}