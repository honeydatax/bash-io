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
		c=strstr(argv[1],argv[2]);
		if (c!=NULL){
			i=c-cc;
			printf("%d",i);
		}else{
			printf("-1");		
		}
	}else{	
		printf("-1");
	}
	return 0;
}