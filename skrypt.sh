

#!/bin/bash
 help(){
	echo "Opcje:" 
	echo "--date Pokazuje date"
	echo "--error, -e [ilosc] tworzy n plikow error (domylsnie 100)"
	echo "--logs, -l [ilosc] Tworzy pliki log (domyslnie 100)"
	echo "--help, -h pokazuje pomoc"
	echo "--init Klonuje repozytorium i  ustawia PATH"

}

 init_rep(){
	git clone "$REPO_URL"
	repo_name=$(basename "$REPO_URL" .git)
	export PATH = $PATH:$(pwd)/$repo_name
}

 error(){
	count=${1:100}
	for i in $(seq 1 $count); do 
		filename="errors/error$i.txt"
		echo "Nazwa pliku: $filename" > $filename	
		echo "Skrypt: $0" >> $filename
		echo "Date: $(date)" >> $filename
	done
}

case "$1" in
	--date)
	   date;;
	--help|-h)
	   help;;
	--logs|-l)
	   logs;;
	--init)
	   init_rep;;
	--error)
	   error;;
		done;;
*)

esac
