#include <stdio.h>

int sommalungstringhe(char*, char*);



void main(){
	char str1[255] = "mi voui spoosarare?";
	char str2[255] = "NO grazie";

	printf("La somma delle lunghezze � %d", sommalungstringhe(str1, str2));
}