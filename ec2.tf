resource "aws_instance" "jenkins-vm" {
  ami           = var.ec2_server_ami_1
  instance_type               = var.ec2_instance_type_1
  tags = {
    Name = "Jenkins_Server"
  }
  iam_instance_profile = aws_iam_instance_profile.EC2_SSM_profile.id
  subnet_id = aws_subnet.public_subnet_1a.id
  vpc_security_group_ids = [aws_security_group.jenkins-sg.id]
  user_data = file("user_data_jenkins.sh")
  key_name      = var.key_pair
}
