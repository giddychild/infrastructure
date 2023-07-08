variable "region" {
  default = ""
  description = "AWS Region"
  type        = string
}

variable "vpc_cidr" {
  default = ""
  description = "VPC CIDR Block"
  type        = string
}

variable "public_subnet_1a_cidr" {
  default = ""
  description = "Infrastructure Subnet A CIDR Block"
}

variable "public_subnet_1b_cidr" {
  default = ""
  description = "Infrastructure Subnet B CIDR Block"
}

variable "ec2_instance_type_1" {
  default = ""
  description = "EC2 Instance Type to Launch"
}

variable "ec2_server_ami_1" {
  default = ""
  description = "EC2 Server AMI"
}

variable "key_pair" {
  default = ""
  description = "EC2 Key Pair"
}