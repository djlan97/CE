#include <stdio.h>

__declspec(naked) int potenza(int b, int e) {
	__asm {
		push ebp
		mov ebp,esp

		push esi
		push ebx
		mov eax,1
		cmp dword ptr[ebp+12],0
		je fineciclo
		mov esi, 0
		mov ebx, dword ptr[ebp+8]
		ciclo:
		cmp esi, dword ptr[ebp + 12]
		je fineciclo

		mul ebx

		inc esi
		jmp ciclo
		fineciclo:

		pop ebx
		pop esi

		mov esp,ebp
		pop ebp
		ret
	}


}

void main() {
	int n = 0;
	int b = 2;
	printf("%d^%d fa %d", b, n, potenza(b, n));
}