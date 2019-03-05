---
all:
  hosts:
    master:
      hostname: ${hostname}
      ansible_port: ${ssh_port}
      ansible_host: ${ssh_host}
      ansible_user: ${ssh_user}
      ansible_ssh_private_key_file: ${ssh_key}
      playbook: master.yml
