#include <stdlib.h>
int ricerca_binaria(const int *v, unsigned int size, int x);

void main() {
	int v[] = {-3,-2,1,4,7};
	int n = ricerca_binaria(v, sizeof(v) / sizeof(v[0]), 1);
}