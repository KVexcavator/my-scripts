#!/bin/bash
# Author: excavator
# Скрипт для команд MySQL
# Last Edided: Mart 5 2021
read -p "MySQL имя пользователя: " user_name
read -p "MySQL пароль: " mysql_pwd
echo
read -p "MySQL команда: " mysql_cmd
read -p "MySQL название БД: " mysql_db
mysql -u"$user_name" -p$mysql_pwd $mysql_db -Be"$mysql_cmd"