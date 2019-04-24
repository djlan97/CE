#include <stdio.h>

int main(){
	int a = -3;
	int b = -2;
	int ris;

	__asm{
		mov eax, a;
		mov ebx, b;
		mov ecx, 0;
		mov esi, 0;
		cmp ebx, 0;
		jnl condizione;
		neg ebx;
	condizione:
		cmp esi, ebx;
		jnb fineciclo;

		add ecx, eax;

		inc esi;
		jmp condizione;

	fineciclo:
		cmp b,0;
		jnl nothing;
		neg ecx;
	nothing:
		mov ris, ecx;
	}
	printf("il risultato di %d x %d è %d", a,b,ris);
}