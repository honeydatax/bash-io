printf "\ec\e[44;36m\n"
	for n in $(seq 0 50)
	do
		printf "%s," "$n"
		nn=$((RANDOM/640))
		printf "%s\n" "$nn"

	done