test:
	ANSIBLE_CONFIG=./tests/ansible.cfg ansible-playbook tests/test.yml -i tests/inventory --syntax-check -vvv
