#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc,char *argv[]){
	int nn;
	int n;
	if(argc>2){
		n=atoi(argv[1])+40;
		nn=atoi(argv[1])+30;
		printf("\e[%d;%dm",n,nn);		
	}else{
		return 1;
	}
	return 0;
}