#!/bin/bash
# Author: excavator
# Скрипт помогает соединится по ssh
# Last Edided: Mart 5 2021
read -p "Какой сервер проверить " server_name
read -p "Какое имя вы хотите использовать " user_name
ssh ${user_name}@server_name