printf "\ec\e[44;36m\n"
n=$(./rand)
echo "creating file temp: $n" 
date > /tmp/$n
cat /tmp/$n
rm /tmp/$n


