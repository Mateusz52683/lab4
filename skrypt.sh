#!/bin/bash

case "$1" in
	--date)
	   date;;
	--logs|-l)
		count=${1:100}
		for i in $(seq 1 $count); do
		filename = "errors/error$i.txt"
		echo Nazwa_pliku: "log$i.txt"
		echo "Nazwa: $filename" > $filename
		echo "Skrypt: $0 >> $filename"
		echo "Dane: $(date)" >> $filename
	done;;
*)

esac
