# Install JAVA
sudo apt update
sudo apt install default-jdk -y
# install ansible
sudo apt update
sudo apt install software-properties-common -y
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
ansible --version
sudo apt install python3-pip -y
pip install docker-py

python3 -V
