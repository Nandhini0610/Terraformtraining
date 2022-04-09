resource "aws_instance" "ec2instance" {
  ami                         = data.aws_ami.myamiid.id
  instance_type               = var.instancetype
  subnet_id                   = data.aws_subnet.mysubnet.id
  associate_public_ip_address = var.publicip
  availability_zone           = var.az
  tags                        = var.tag
  vpc_security_group_ids      = var.securitygroups

}


