data "aws_ami" "debian" {
  most_recent = true

  filter {
    name   = "name"
    values = ["debian-11-amd64-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["136693071363"]
}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "defaults" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}
