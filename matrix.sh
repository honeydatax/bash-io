printf "\ec\e[44;36m\n"
plus=f
plusplus=a
for n in $(seq 0 10000)
do
	y=$(($RANDOM/1310+1))
	x=$(($RANDOM/640+1))
	printf "\e[%d;%d$plus$plusplus" $y $x
done