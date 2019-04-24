#include <stdio.h>

int main(){
	int pippo[5] = { 1,2,1,5,3 };
	int *p;
	int risultato;
	
	p = &pippo[0];

	__asm{
		mov edx, p;
		mov esi, 0;
		mov ecx, dword ptr[edx + esi * 4];//ecx è il max
		mov ebx, dword ptr[edx + esi * 4];//ebx è il min
		inc esi;

	ciclo_max:
		cmp esi, 5;
		jae fineciclo_max;

		cmp ecx, dword ptr[edx + esi * 4];
		jbe nothing;
		mov ecx, dword ptr[edx + esi * 4];
	nothing:
		inc esi;
		jmp ciclo_max;


	fineciclo_max:
		mov esi, 1;

	ciclo_min:
		cmp esi, 5;
		jae fineciclo_min;

		cmp ebx, dword ptr[edx + esi * 4];
		jbe nothing_2;
		mov ebx, dword ptr[edx + esi * 4];
	nothing_2:
		inc esi;
		jmp ciclo_min;


	fineciclo_min:
		mov edi, 0;

	ciclo_prodotto:
		cmp edi, ebx;
		je fine_prodotto;
		add eax, ecx;
		inc edi;
		jmp ciclo_prodotto;
	fine_prodotto:

		mov risultato, eax;
	
	
	}
	printf("La somma è %d", risultato);
}