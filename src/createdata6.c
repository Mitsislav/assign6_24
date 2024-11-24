#include <stdio.h>
#include <string.h>

int main() {

	int i=0;
	FILE *file = fopen("data6", "w");
    	
	if (file != NULL) {

		fputs("Giannis",file);
		
		for(i=0;i<41;i++)
			fputc(' ',file);
	
		for(i=0;i<4;i++)
			fputc('c',file);

		fputc(55,file);

		for(i=0;i<9;i++)
			fputc('\0',file);
		
		for(i=0;i<4;i++)
			fputc('\0',file);

		fputc(142,file);
		fputc(158,file);
		fputc(4,file);
		fputc(8,file);

		fputc(224,file);
		fputc(66,file);
		fputc(14,file);
		fputc(8,file);
    	}	

	fclose(file);

	return 0;
}
