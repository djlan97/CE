#include <stdio.h>

int main(){
	char vett[] = "RON alla conquista della russia";
	char *p;
	p = &vett[0];

	__asm{
		mov esi, 0;
		mov edi, 0;
		mov ebx, p;
	condizione:
		mov al, byte ptr[ebx + esi];
		cmp al, 0;
		je fineciclo;
		cmp al, 97;
		jl nothing;
		cmp al, 122;
		jg nothing;
		sub al, 32d;
		mov byte ptr[ebx + esi], al;

	nothing:

		inc esi;
		jmp condizione;

	fineciclo:



	}
	printf("I caratteri alfabetici della stringa sono %s", vett);
}