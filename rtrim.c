#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>


int main(int argc,char *argv[]){
	int i;
	int ii;
	int iii;
	char c[2080];
	char *cc;
	if (argc>1){
		iii=strlen(argv[1]);
		if (iii<2070){
			strcpy(c,argv[1]);
			for(i=iii;i>0;i--){
				if (c[i]!=0){
					if(c[i]>32){
						c[i+1]=0;
						i=-10;
					}
				}
			}
			
			printf("%s",c);
		} 
		
	}else{	
		printf("");
	}
	return 0;
}