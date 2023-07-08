resource "aws_eip" "elastic-ip-jenkins" {
  //vpc  = true
  domain = "vpc"
  tags = {
    Name = "Jenkins EIP A"
  }
}

resource "aws_eip_association" "jenkins-association" {
  instance_id = aws_instance.jenkins-vm.id
  allocation_id = aws_eip.elastic-ip-jenkins.id
}