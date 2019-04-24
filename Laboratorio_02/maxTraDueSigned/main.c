#include <stdio.h>

int main(){
	int a, b, c;
	a = 5;
	b = -7;
	__asm{
	mov eax,a
	mov ebx,b
	cmp eax,ebx

	jg maggiore_a
	mov c,ebx
	jmp fineif


maggiore_a:
	mov c,eax

fineif:

	}
	printf("Il maggiore tra i due numeri è %d", c);
}