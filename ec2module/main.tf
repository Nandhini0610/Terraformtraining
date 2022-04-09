resource "aws_instance" "ec2instance" {
  ami                         = var.ami_name
  instance_type               = var.instancetype
  associate_public_ip_address = var.publicip
  availability_zone           = var.az
  tags                        = var.tag
  vpc_security_group_ids      = var.securitygroups

}


