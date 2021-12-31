grap(){
	./char $1 '*'
	printf "\n"
}

printf "\ec\e[44;36m\n"
for n in $(seq 1 10)
do
	grap $n
done 