#!/bin/bash
# Author: excavator
# Скрипт пингует сервер
# Last Edided: Mart 5 2021
read -p "Какой сервер проверить " server_addr
ping -c3 $server_addr 2>1 > /dev/null || echo "Server Dead" 