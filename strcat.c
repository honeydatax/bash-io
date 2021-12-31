#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc,char *argv[]){
	int i;
	if (argc>2){
		printf("%s%s",argv[1],argv[2]);
		
	}else{	
		printf("");
	}
	return 0;
}