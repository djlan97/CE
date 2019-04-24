#include <stdio.h>

int main(){
	char vett[] = "ciao";
	char *v;
	int conta;
	v = &vett[0];

	__asm{
		mov esi, 0;
		mov eax, v;
		mov edi, 0;
	condizione:
		cmp byte ptr[eax + esi],0;
		je fineciclo;
		cmp byte ptr[eax + esi],'a';
		jne s1;
		inc edi;
	s1:
		cmp byte ptr[eax + esi], 'A';
		jne s2;
		inc edi;
	s2:
		cmp byte ptr[eax + esi], 'e';
		jne s3;
		inc edi;
	s3:
		cmp byte ptr[eax + esi], 'E';
		jne s4;
		inc edi;
	s4:
		cmp byte ptr[eax + esi], 'i';
		jne s5;
		inc edi;
	s5:
		cmp byte ptr[eax + esi], 'I';
		jne s6;
		inc edi;
	s6:
		cmp byte ptr[eax + esi], 'o';
		jne s7;
		inc edi;
	s7:
		cmp byte ptr[eax + esi], 'O';
		jne s8;
		inc edi;
	s8:
		cmp byte ptr[eax + esi], 'u';
		jne s9;
		inc edi;
	s9:
		cmp byte ptr[eax + esi], 'U';
		jne nothing;
		inc edi;

	nothing:
		inc esi;
		jmp condizione;

	fineciclo:
		mov conta, edi;
	}
	printf("Le vocali sono %d", conta);
}