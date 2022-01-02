printf "\ec\e[44;36m\n"
b=ZXY
for n in $(./serial 0 10 1)
do
	c=$((10-$n))
	d=$(./rand)
	a=/tmp/$c$b$$d$b$n'.tmp'
	echo $a
done

