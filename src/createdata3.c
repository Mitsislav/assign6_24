#include <stdio.h>

int main(){
	int i;
	FILE *file = fopen("data3", "w");
	
	if (file != NULL) {
			
		for(i=0;i<48;i++)
			fputc('A',file);

		for(i=0;i<4;i++)
			fputc('x',file);

		fputc(55,file);

		for(i=0;i<8;i++)
			fputc('x',file);

		for(i=0;i<4;i++)
			fputc('x',file);

		fputc('\0',file);	
	}
	return 0;
}
