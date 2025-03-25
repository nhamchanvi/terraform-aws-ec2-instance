module "ec2-instance" {
  source        = "../../"
  name          = "training-terrafrom-module"
  ami           = data.aws_ami.debian.id
  instance_type = "t3.micro"
  subnet_id     = data.aws_subnets.defaults.ids[0]
  tags          = local.tags
}
