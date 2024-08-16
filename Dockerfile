		FROM ubuntu:20.04
		
		# Install Ansible and dependencies
		RUN apt-get update && \
		    apt-get install -y software-properties-common && \
		    apt-add-repository --yes --update ppa:ansible/ansible && \
		    apt-get install -y ansible python3-pip && \
		    pip3 install boto3
		
		# Copy Ansible playbook
		COPY ansible-playbook.yaml ansible-playbook.yaml
		
		# Set entrypoint
ENTRYPOINT ["ansible-playbook.yaml", "ansible-playbook.yaml"]