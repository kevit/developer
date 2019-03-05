data "template_file" "inventory" {
  template = "${file("${path.module}/inventory.tpl")}"
  vars = {
    hostname = "developer"
    ssh_host = "10.10.10.10"
    ssh_port = "22"
    ssh_user = "ec2-user"
    ssh_key  = "jenkins"
    ssh_host =  "${aws_instance.devel.private_ip}"
  }
}

