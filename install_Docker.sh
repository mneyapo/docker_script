#!/bin/bash

Install_Docker(){
	echo -e "\e[32m***** Install Docker...\e[0m"

	curl -sSL https://get.docker.com | sh
	
	sudo dpkg --configure -a
	
	echo -e "\e[31m***** usermod -aG docker $USER...\e[0m"
	sudo usermod -aG docker $USER
	
	echo -e "\e[32m***** groupadd docker...\e[0m"
	sudo groupadd docker
	
	echo -e "\e[32m***** addgroup pi docker ...\e[0m"
	sudo addgroup pi docker 
	
	echo -e "\e[32m***** gpasswd -a $USER docker ...\e[0m"
	sudo gpasswd -a $USER docker
	
	echo -e "\e[32m*****  systemctl enable docker ...\e[0m"
	sudo systemctl enable docker
	
	echo -e "\e[32m*****  systemctl start docker ...\e[0m"
	sudo systemctl start docker
}

Install_Docker-compose(){
	echo -e "\e[32m***** Install docker-compose...\e[0m"
	#echo -e "\e[31m***** RUN pip install docker-compose...\e[0m"
	#sudo pip install docker-compose
	echo -e "\e[31m***** RUN apt-get install docker-compose...\e[0m"
	sudo apt-get install -y docker-compose
}
Install_Docker
Install_Docker-compose
echo -e "\e[31m***** RUN apt-get Update && Upgrade...\e[0m"
sudo apt-get update -y && sudo apt-get upgrade -y
$SHELL
