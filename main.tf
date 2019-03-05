provider "aws" {
  region = "eu-central-1"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

module "security_group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "2.7.0"

  name        = "devel_instance"
  description = "Security group for developer instance"
  vpc_id      = "${var.vpc_id}"

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["ssh-tcp", "all-icmp"]
  egress_rules        = ["all-all"]
}

module "ec2" {
  source = "terraform-aws-modules/ec2-instance/aws"

  instance_count = 1

  name                        = "devel"
  ami                         = "${var.ami}"
  instance_type               = "${var.instance_type}"
  key_name                    = "${var.key_name}"
  subnet_id                   = "${element(data.aws_subnet_ids.all.ids, 0)}"
  vpc_security_group_ids      = ["${module.security_group.this_security_group_id}"]
  associate_public_ip_address = false
  tags = {
        Environment = "dev"
        Developer = "true"
  }
}

resource "aws_volume_attachment" "this_ec2" {
  device_name = "/dev/sdh"
  volume_id   = "${aws_ebs_volume.this.id}"
  instance_id = "${module.ec2.id[0]}"
}

resource "aws_ebs_volume" "this" {
  availability_zone = "${module.ec2.availability_zone[0]}"
  size              = 30
}
