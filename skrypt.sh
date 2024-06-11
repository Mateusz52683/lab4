
#!/bin/bash
 help(){
	echo "Opcje:" 
	echo "--date Pokazuje date"
	echo "--error, -e [ilosc] tworzy n plikow error (domylsnie 100)"
	echo "--logs, -l [ilosc] Tworzy pliki log (domyslnie 100)"
	echo "--help, -h pokazuje pomoc"
	echo "--init Klonuje repozytorium i  ustawia PATH"

}
case "$1" in
	--date)
	   date;;
	--help|-h)
	   help;;
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
