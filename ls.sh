printf "\ec\e[44;36m\n"
for n in $(ls $1/*)
do
	 printf "file: %s\n" "$n"
	zip $1.zip "$n" 
done 
tar -cf $1.tar $1.zip 