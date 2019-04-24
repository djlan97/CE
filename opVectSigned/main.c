#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int maxVect(int* vect, int len);
int minVect(int* vect, int len);
int prodottoMaxMin(int max, int min);
int sommaElMinoriSommaVect(int*vect, int len);
int media(int*vect, int len);

void main(){
	int v[] = { 1,2, 3,5};
	
	printf("L'elemento massimo del vettore è %d\n", maxVect(v, sizeof(v) / sizeof(v[0])));
	printf("L'elemento minimo del vettore è %d\n", minVect(v, sizeof(v) / sizeof(v[0])));
	printf("Il prodotto tra l'elemento minimo e massimo del vettore è %d\n", prodottoMaxMin(maxVect(v, sizeof(v) / sizeof(v[0])), minVect(v, sizeof(v) / sizeof(v[0]))));
	printf("La somma degli elementi minori di quella dl vettore è %d\n", sommaElMinoriSommaVect(v, sizeof(v) / sizeof(v[0])));

	printf("La media degli elementi del vettore è %d\n", media(v, sizeof(v) / sizeof(v[0])));

}