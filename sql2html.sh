html(){
	a='<html><head><title></title><head><body>'
	printf "%s\n" "$a"
	a='<table width="100%" cellpadding="5" cellspacing="0">'
	printf "%s\n" "$a"
}
endhtml(){
	a='</table></body></html>'
	printf "%s\n" "$a"
}

runs(){
	sqlite3 "$1" < "$2"
}
exits(){
	a='.quit'
	printf "%s\n" "$a"  >> $1
}
selectdata(){
	a='.mode html '$2
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

filein=$(mktemp)
database=$1
tables=$2
 	html 
	clears "$filein"
	selectdata "$filein" "$tables" 
	exits "$filein"
	runs "$database" "$filein"
	endhtml
remove $filein
