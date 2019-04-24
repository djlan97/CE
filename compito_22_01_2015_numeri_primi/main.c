#include <stdio.h>
int numeri_primi(unsigned char *src,unsigned char *dst,int size);

void main() {
	unsigned char src[] = { 2,3,17 };
	unsigned char dst[3];
	printf("%d", numeri_primi(src, dst, 3));
}