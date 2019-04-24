#include <stdio.h>

int numeriprimi(int* v, int lunghezza);


void main(){
	int a[] = { 1, 8, 7, 13, 169 };
	
	printf("I numeri primi nel vettore sono %d", numeriprimi(a, 5));
}