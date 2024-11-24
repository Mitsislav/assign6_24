#include <stdio.h>
#include <stdlib.h>
#include <string.h>


int main() {

	FILE *file = fopen("data9", "w");

	if (file != NULL) {
		fputs("No time " ,file);

	}
	fclose(file);

	return 0;
}
