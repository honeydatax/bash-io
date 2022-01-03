br(){
	printf "			<br>\n\n"
}
h1(){
	printf "		<h1>\n\n"
}
endh1 (){
	printf "		</h1>\n\n"
}
h2(){
	printf "		<h2>\n\n"
}
endh2 (){
	printf "		</h2>\n\n"
}
body (){
	printf "	<body>\n\n"
}
endbody (){
	printf "	</body>\n\n"
}
html (){
	printf "<html>\n"
}
endhtml (){
	printf "</html>\n"
}

title (){
	printf "		<title>\n\n"
}
endtitle (){
	printf "		</title>\n\n"
}

head (){
	printf "	<head>\n"
}
endhead (){
	printf "	</head>\n"
}
printf "\ec\e[44;36m\n"
til='hello world\n'
html
	head
		title
			printf "$til"
		endtitle
	endhead
	body
		h1
			printf "$til"
		endh1
		br
		h2
			printf "$til"
		endh2
		br
			printf "$til"
	endbody
endhtml