printf "\ec\e[44;36m\n"
for n in $(ls $1/*.c)
do
	 printf "file: %s\n" "$n"
	gcc -o "$n.out" $n 
done 