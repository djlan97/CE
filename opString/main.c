#define _CRT_SECURE_NO_WARNINGS_
#include <stdio.h>
#include <string.h>

int contaVocali(char* str);
int contaConsonanti(char* str);
int contaMinuscole(char* str);
int strLen(char* str);
char* maiuscConvert(char* str);



void main(){
	char str[] = "Ciao io sono Dylan!";
	printf("Stringa in input: %s\n", str);
	printf("La stringa è lunga %d caratteri\n", strLen(str));
	printf("La stringa ha %d vocali\n", contaVocali(str));
	printf("La stringa ha %d consonanti\n", contaConsonanti(str));
	printf("La stringa ha %d minuscole\n", contaMinuscole(str));
	printf("La stringa in maiusolo è \"%s\"\n", maiuscConvert(str));

}