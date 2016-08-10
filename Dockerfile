FROM ubuntu:trusty
MAINTAINER Josh Cox <josh 'at' webhosting coop>

ENV DOCKER_ANSIBLE_UPDATED 20160810
RUN apt-get -y update
RUN apt-get install -y python-yaml python-jinja2 git python python-dev python-pip python-virtualenv software-properties-common
RUN rm -rf /var/lib/apt/lists/*

# RUN git clone http://github.com/ansible/ansible.git /tmp/ansible
# Install Ansible.
# RUN pip install ansible
# install from repo
RUN apt-add-repository ppa:ansible/ansible
RUN apt-get update
RUN apt-get install -y sudo ansible python-apt python-pycurl python-pip python-virtualenv

RUN apt-get clean

# WORKDIR /tmp/ansible
# ENV PATH /tmp/ansible/bin:/sbin:/usr/sbin:/usr/bin
# ENV ANSIBLE_LIBRARY /tmp/ansible/library
# ENV PYTHONPATH /tmp/ansible/lib:$PYTHON_PATH
# Example usage
# WORKDIR /tmp/example
# RUN git clone http://github.com/yourusername/yourrepo.git /tmp/example
# ADD inventory /etc/ansible/hosts
# RUN ansible-playbook site.yml -c local
# EXPOSE 22 3000
# ENTRYPOINT [“/usr/bin/foo”]

# Define default command.
CMD ["bash"]
