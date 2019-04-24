#include <stdio.h>

int numeri_nonprimi(unsigned char *src, unsigned char *dst, int size);

void main() {
	unsigned char src[] = { 4,9,90 };
	unsigned char dst[3];
	int ret;
	ret = numeri_nonprimi(src, dst, 3);

}