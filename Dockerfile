
FROM ubuntu

RUN apt update && apt install ssh sudo -y

RUN adduser iti

RUN echo "iti:123" | chpasswd

RUN usermod -aG sudo iti 

ENTRYPOINT service ssh start && bash


#ansible all -i 172.17.0.2, --private-key /home/yousra/ubuntu_doc/keys/key.pub -u iti -m ping 
# cd /home/yousra/ansible_lab2
# ssh iti@172.17.0.2
# ssh-keygen
# ssh-copy-id -i ./keys/key.pub iti@172.17.0.2
# sudo ansible all -i 172.17.0.2, --private-key /home/yousra/ansible_lab2/keys/key -u iti -m ping
# sudo ansible web_servers -i ./inventory --private-key /home/yousra/ansible_lab2/keys/key -u iti -m ping
#sudo ansible web_servers -m ping
#172.17.0.2