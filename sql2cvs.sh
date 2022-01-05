runs(){
	sqlite3 "$1" < "$2"
}
exits(){
	a='.quit'
	printf "%s\n" "$a"  >> $1
}
selectdata(){
	a='.mode csv '$2
	printf "%s\n" "$a"  >> $1
	a='.headers on'
	printf "%s\n" "$a"  >> $1
	a='select * from '$2' ; '
	printf "%s\n" "$a"  >> $1
}
clears(){
	printf "" > $1
}
remove(){
	rm $1
}

printf "\ec\e[44;36m\n"
filein=$(mktemp)
database=$1
tables=$2
	clears "$filein"
	selectdata "$filein" "$tables" 
	exits "$filein"
	runs "$database" "$filein"
remove $filein
