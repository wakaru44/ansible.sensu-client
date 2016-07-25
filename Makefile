help:
	@echo "Troposphere code to generate a personal workstation in the cloud";
	@echo "";
	@echo "inventory      - create an inventory file to be edited";
	@echo "provision      - provision the thing";
	@echo "todo           - show the TO DO's and tasks";
	@echo "";


provision:
	ansible-playbook playbook.yml -i .ansible/hosts -v

inventory:
	bash tool_create_inventory.sh

todo:
	grep  -r "TODO:" * --exclude-dir ENV --exclude-dir env --exclude-dir env2 --exclude Makefile
