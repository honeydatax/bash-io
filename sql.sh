runs(){
	sqlite3 "$1" < "$2"
}
selects(){
	a='select * from lotos;'
	printf "%s\n" "$a"  >> $1
}
endinserts(){
	a=');'
	printf "%s\n" "$a"  >> $1
}
inserts(){
	a='insert into lotos values('
	printf "%s" "$a"  >> $1
}
exits(){
	a='.quit'
	printf "%s\n" "$a"  >> $1
}
creatdata(){
	a='create table lotos(ID INTEGER, number INTEGER);'
	printf "%s\n" "$a"  >> $1
}
clears(){
	printf "" > $1
}
fill(){
	for n in $(seq 0 50)
	do
		inserts $1
			printf "%d," "$n" >> $1
			nn=$((RANDOM/640))
			printf "%d" "$nn" >> $1
		endinserts $1
	done
}
remove(){
	rm $1
}

printf "\ec\e[44;36m\n"
filein=$(mktemp)
database=$(mktemp)
datasize=my.dat
	clears $filein
	creatdata $filein
	fill $filein
	selects $filein
	exits $filein
	runs $database $filein
remove $filein
cp $database $datasize
remove $database
