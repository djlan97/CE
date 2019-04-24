#include <stdio.h>

int main(){
	int pippo[5] = { 1, -2, -3, 4, 5 };
	int *b;
	int somma;
	
	b = &pippo[0];

	__asm{
		mov ebx, b
		mov esi, 0
		//eax è il mio massimo
		mov eax, dword ptr[ebx+esi*4]

		inc esi

	condizione:
		cmp esi,5
		jnb fineciclo
		add eax, dword ptr[ebx + esi * 4]
		inc esi
		jmp condizione

	fineciclo:
		mov somma,eax

	}
	printf("La somma del vettore è %d", somma);
}