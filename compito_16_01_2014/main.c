#include <stdio.h>

int salvaparolaspiazzamento(char *s, char *d, unsigned char *parola1);

void main() {
	char s[255] = "capra la panca la capra capra";
	char d[255];
	char parola1[] = "capra";

	int ret = salvaparolaspiazzamento(s, d, parola1);

	printf("%s\n", s);
	printf("%s",d);
}