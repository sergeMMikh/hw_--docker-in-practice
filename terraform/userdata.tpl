#!/bin/bash

# Обновление системы и установка необходимых пакетов
sudo apt update -y && sudo apt-get upgrade -y
sudo apt-get install -y git mc htop net-tools
sudo apt-get autoclean -y && sudo apt-get autoremove -y

# Клонирование репозитория
git clone https://github.com/sergeMMikh/hw_--docker-in-practice.git /home/ubuntu/hw_--docker-in-practice

# Запуск скрипта для установки Docker и Docker Compose
sudo bash /home/ubuntu/hw_--docker-in-practice/install_docker_docker-compose.sh

# Запуск Docker Compose
sudo docker compose -f /home/ubuntu/hw_--docker-in-practice/compose.yaml up -d
