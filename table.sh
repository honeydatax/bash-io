style(){
	a='				<style type="text/css">'
	printf "%s\n" "$a"
	a='					@page { margin: 2cm }'
	printf "%s\n" "$a"
	a='					p { margin-bottom: 0.25cm; line-height: 120% }'
	printf "%s\n" "$a"
	a='					td p { margin-bottom: 0cm }'
	printf "%s\n" "$a"
	a='				</style>'
	printf "%s\n" "$a"
}


td(){
	a='				<td width="50%" style="border: 1px solid #000000; padding: 0.1cm">'
	printf "%s" "$a"
}
endtd(){
	a='</td>'
	printf "%s\n" "$a"
}
row(){
	a='				<tr>'
	printf "%s\n" "$a"
}
endrow(){
	a='				</tr>'
	printf "%s\n" "$a"
}
table(){
	a='			<table width="100%" cellpadding="5" cellspacing="0">'
	printf "%s\n" "$a"
}
endtable(){
	printf "			</table>\n"
}
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
til='loto\n'
html
	head
		title
			printf "$til"
		endtitle
		style
	endhead
	body
		table
		for n in $(seq 0 50)
		do
			row
				td
					printf "%d" "$n"
				endtd
				td
					nn=$(($RANDOM/640))
					printf "%d" "$nn"
				endtd
			endrow
		done
		endtable
	endbody
endhtml
