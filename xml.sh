data(){
	a='						<Data ss:Type="Number">'
	printf "%s" "$a"
}
enddata(){
	a='</Data>'
	printf "%s\n" "$a"
}
cell(){
	a='					<Cell>'
	printf "%s\n" "$a"
}
endcell(){
	a='					</Cell>'
	printf "%s\n" "$a"
}
row(){
	a='				<Row ss:Height="12,8126">'
	printf "%s\n" "$a"
}
endrow(){
	a='				</Row>'
	printf "%s\n" "$a"
}
worksheet(){
	a='		<ss:Worksheet>'
	printf "%s\n" "$a"
}
endworksheet(){
	a='		</ss:Worksheet>'
	printf "%s\n" "$a"
}
xml(){
	a='<?xml version="1.0" encoding="UTF-8"?>'
	printf "%s\n" "$a"
}
table(){
	a='			<Table>'
	printf "%s\n" "$a"


}
endtable(){
	a='			</Table>'
	printf "%s\n" "$a"
	a='			<x:WorksheetOptions/>'
	printf "%s\n" "$a"
}
endxml(){
	a='	</Workbook>'
	printf "%s\n" "$a"
}
types(){
	a='	<?mso-application progid="Excel.Sheet"?>'
	printf "%s\n" "$a"
	a='	<Workbook xmlns="urn:schemas-microsoft-com:office:spreadsheet" xmlns:c="urn:schemas-microsoft-com:office:component:spreadsheet" xmlns:html="http://www.w3.org/TR/REC-html40" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet" xmlns:x2="http://schemas.microsoft.com/office/excel/2003/xml" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">'
	printf "%s\n" "$a"

}
printf "\ec\e[44;36m\n"
til='hello world.'
xml
	types
	worksheet
		table
	for n in $(seq 0 20)
	do
			row
				cell
					data
						printf "%s" "$n"

					enddata
				endcell
				cell
					data
						nn=$((RANDOM/640))
						printf "%s" "$nn"

					enddata
				endcell
			endrow

	done
		
		endtable
	endworksheet

endxml