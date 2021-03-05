#!/bin/bash
# Author: excavator
# Скрипт помoгает сделать резервные копии файлов и директорий
# Last Edided: Mart 5 2021
read -p "Какое расширение файлов для резервного копирования" file_suffix
read -p "Как назвать директорию для резервного копирования" dir_name
test -d $HOME/$dir_name || mkdir -m 700 $HOME/$dir_name
find $HOME -path $HOME/$dir_name -prune -o -name "*$file_suffix" -exec cp {} $HOME/$dir_name/ \;
exit 0