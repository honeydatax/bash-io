#include <stdio.h>
#include <stdlib.h>
#include <string.h>



int main(int argc,char *argv[]){
	int i;
	int ii;
	int iii;
	char *cc;
	char *c;
	if (argc>2){
		cc=argv[1];
		i=strcmp(argv[1],argv[2]);
		if(i>0)i=1;
		if(i<0)i=-1;
		printf("%d",i);
	}else{	
		printf("");
	}
	return 0;
}