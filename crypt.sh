printf "\ec\e[44;36m\n"
f='/tmp/'$(./rand)
p=pass1
./crypt "Hello World." "$p" > $f
h=$(cat $f)
./decrypt "$h" "$p" 
rm $f
