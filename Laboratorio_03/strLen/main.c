#include <stdio.h>


int main(){
	char vett[] = "ciccio merdone eroe nazionale";
	char *p;
	unsigned int lunghezza;
	p = &vett[0];

	__asm{
		mov esi, 0;
		mov ebx, p;
	condizione:
		mov al, byte ptr[ebx + esi];
		cmp al, 0;
		je fineciclo;

		inc esi;
		jmp condizione;

	fineciclo:
		mov lunghezza, esi;

		

	}
	printf("La lunghezza della stringa è %d", lunghezza);
}