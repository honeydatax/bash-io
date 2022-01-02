printf "\ec\e[44;36m\n"
b=ZXY
for n in $(./serial 0 10 1)
do
	a=/tmp/ZXY$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM$b
	echo $a
done

