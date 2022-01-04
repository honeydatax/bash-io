runs(){
	sqlite3 "$1" < "$2"
}
exits(){
	a='.quit'
	printf "%s\n" "$a"  >> $1
}
creatdata(){
	a='create table tab('
	printf "%s" "$a"  >> $1
	for n in $(seq 1 $2)
	do
		if ./express $(expr $n '>' 1)
		then
			a=');'
			printf ","  >> $1
		fi
		a='C'$n' String'
		printf "%s " "$a"  >> $1

	done
	a=');'
	printf "%s\n" "$a"  >> $1
}
clears(){
	printf "" > $1
}
fill(){
	cat $2 | sed y/','/'|'/ > $3
	a='.import '$3' tab'
	printf "%s\n" "$a"  >> $1
}
remove(){
	rm $1
}

printf "\ec\e[44;36m\n"
filein=$(mktemp)
importfile=$(mktemp)
database=$(mktemp)
datasize=$1.dat
	clears "$filein"
	creatdata "$filein" "$2" 
	fill "$filein" "$1" "$importfile" 
	exits "$filein"
	runs "$database" "$filein"
remove $filein
remove $importfile
cp $database $datasize
remove $database