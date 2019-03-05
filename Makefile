.DEFAULT_GOAL := help


current-dir = $(shell pwd)
ansible = $(shell command -v ansible)
ansible-playbook = $(shell command -v ansible-playbook)
inventory = $(shell ./scripts/terraform.py --root . --hostfile)

#export ANSIBLE_INVENTORY
#export ANSIBLE_CONFIG=$(current-dir)/machine_inventory.yml


requirements: ## Install requirements from scratch
	ansible-galaxy install -r requirements.yml -p roles --ignore-errors --force

inventory: ## build inventory
	./scripts/terraform.py --root . --hostfile

ping: ## ping hosts
	$(ansible) all $(ansible-flags) -m ping

provision: ## provision ansible to VM
	$(ansible-playbook) -u fedora -i '${self.public_ip},' --private-key ${var.ssh_key_private} provision.yml

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
