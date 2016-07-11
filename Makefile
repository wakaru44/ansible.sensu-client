help:
	@echo "the usual"

prov:
	 ansible-playbook playbook.yml -i .ansible/hosts

