printf "\ec\e[44;36m\n"
for n in $(./serial 0 10 1)
do
	a=$(./rand)
	echo $(($RANDOM/640))
done

