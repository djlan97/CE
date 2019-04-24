#include <stdio.h>

int main(){
	int pippo[5] = { 1,2,-1,-5,3 };
	int *b;
	int somma;
	
	b = &pippo[0];

	__asm{
		mov ebx, b;
		//eax è la somma finale
		mov eax, 0;
		//ecx è la somma del vettore totale
		mov ecx, 0;
		mov esi, 0;
	condizione_1:
		cmp esi, 5;
		jnb fineciclo_1;
		add ecx, dword ptr[ebx + esi * 4];
		inc esi;
		jmp condizione_1;

	fineciclo_1:
		mov esi, 0;
	condizione_2:
		cmp esi, 5;
		jnb fineciclo_2;
		cmp dword ptr[ebx + esi * 4],ecx;
		jnl nothing;

		add eax, dword ptr[ebx + esi * 4];
	nothing:
		inc esi;
		jmp condizione_2;
	fineciclo_2:
		mov somma, eax;
	}
	printf("La somma è %d", somma);
}