#include <stdio.h>

__declspec(naked) int contapari(int *vett, int lunghezza){
	__asm{
		push ebp;
		mov ebp, esp;
		push ebx;
		push esi;
		push edi;

		mov ecx, 2;
		mov ebx, dword ptr[ebp + 8];		
		mov esi, 0;
		mov edi, 0;
		

	ciclo:
		cmp esi, dword ptr[ebp + 12];
		je fineciclo;
		mov eax, dword ptr[ebx+4*esi];
		cdq;
		mov edx, 0;
		idiv ecx;

		cmp edx, 0;
		jne nulla;
		inc edi;

	nulla:
		inc esi;
		jmp ciclo;
	fineciclo:
		mov eax, edi;
		pop edi;
		pop esi;
		pop ebx;

		mov esp, ebp;
		pop ebp;
		ret;
	}
}

void main(){
	int a[] = { 1, 2, 3, 4, -1, -2, -3, -4, -5, 6 };



	printf("Il numero di numeri pari è: %d",contapari(a,10));
}