#include <stdio.h>

int main(){
	int pippo[5] = { -1, -2, -3, -4, -5 };
	int *b;
	int max, min;
	
	b = &pippo[0];

	__asm{
		mov ebx, b
		mov esi, 0
		//eax è il mio massimo
		mov eax, dword ptr[ebx+esi*4]

		//ecx è il mio massimo
		mov ecx, dword ptr[ebx + esi * 4]
		inc esi

	condizione:
		cmp esi,5
		jnb fineciclo
		cmp eax, dword ptr[ebx+esi*4]
		jl fmax
		cmp ecx, dword ptr[ebx + esi * 4]
		jg fmin
		jmp incremento

	fmax:
		mov eax, dword ptr[ebx + esi * 4];
		jmp incremento
	fmin:
		mov ecx, dword ptr[ebx + esi * 4];

	incremento:
		inc esi
		jmp condizione



	fineciclo:
		mov max,eax
		mov min,ecx

	}
	printf("il maggiore è %d e il minore è %d", max, min);
}