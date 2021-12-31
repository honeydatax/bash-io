printf "\ec\e[44;36m\n"
n=0;
	while ./express $(expr $n '<' 9)
		do
			
			printf "%s\n" "$n"
			n=$(expr $n '+' 1)
		done
