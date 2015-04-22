FROM ubuntu:trusty
MAINTAINER Josh Cox <josh 'at' webhosting coop>

ENV DOCKER_ANSIBLE_UPDATED 20150422
RUN apt-get -y update
RUN apt-get install -y python-yaml python-jinja2 git python python-dev python-pip python-virtualenv
RUN rm -rf /var/lib/apt/lists/*

# RUN git clone http://github.com/ansible/ansible.git /tmp/ansible
# Install Ansible.
RUN pip install ansible

RUN apt-get clean

# WORKDIR /tmp/ansible
# ENV PATH /tmp/ansible/bin:/sbin:/usr/sbin:/usr/bin
# ENV ANSIBLE_LIBRARY /tmp/ansible/library
# ENV PYTHONPATH /tmp/ansible/lib:$PYTHON_PATH
# Example usage
# RUN git clone http://github.com/yourusername/yourrepo.git /tmp/example
# ADD inventory /etc/ansible/hosts
# WORKDIR /tmp/examples
# RUN ansible-playbook site.yml -c local
# EXPOSE 22 3000
# ENTRYPOINT [“/usr/bin/foo”]

# Define default command.
CMD ["bash"]
