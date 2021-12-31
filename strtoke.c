#include <stdio.h>
#include <stdlib.h>
#include <string.h>



int main(int argc,char *argv[]){
	int i;
	int ii;
	int iii;
	char st[2080];
	char *ccc;
	char *cc;
	char *c;
	if (argc>2){
		i=strlen(argv[1]);
		if(i<2070){
			strcpy(st,argv[1]);
			cc=st;
			c=st;
			while(c!=NULL){
				c=strstr(cc,argv[2]);
				if (c==NULL){
					printf("%s\n",cc);
				}else{
					ccc=c+1;
					c[0]=0;
					printf("%s\n",cc);
					cc=ccc;
				}
			}
		}

	}else{	
		printf("");
	}
	return 0;
}