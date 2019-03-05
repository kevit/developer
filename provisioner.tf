provisioner "local-exec" {
    command = "ansible-playbook -i '${self.public_ip},' --private-key ${var.ssh_key_private} provision.yml"
}
