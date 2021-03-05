#!/bin/bash
db_set () {
	echo "$1,$2" >> database
}
db_get () {
	grep "^$1," database | sed -e "s/^$1,//" | tail -n 1
}
# Обе функции реализуют хранилище типа «ключ — значение». Можно вызвать команду db_set key value для сохранения key и value в базе данных. Ключ и значение могут быть (почти) всем, чем вы пожелаете, — например, значение может быть JSON-документом. Затем можно вызвать команду db_get key для поиска последнего относящегося к искомому ключу значения и его возврата:
# db_set 42 '{"name":"San Francisco","attractions":["Golden Gate Bridge"]}'
# db_get 42
