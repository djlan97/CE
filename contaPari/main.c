#include <stdio.h>

int contaPari(unsigned char* v, int len);

void main() {
	unsigned char v[] = {50,172,83,55};
	printf("I numeri pari sono %d", contaPari(v, sizeof(v) / sizeof(v[0])));
}