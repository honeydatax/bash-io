grap(){
	a=$(./char $1 '**')
	./center "$a"
}

printf "\ec\e[44;36m\n"
for n in $(seq 1 10)
do
	grap $n
done 