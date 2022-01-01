printf "\ec\e[44;36m\n"
for n in $(./serial 0 10 1)
do
	echo $(($RANDOM/1310))
done

