#include <stdio.h>

__declspec(naked) int potenza(int a, int esponente){
__asm{
push ebp;
mov ebp, esp;
push ebx;
push esi;
push edi;

mov eax, dword ptr[ebp + 8];
mov esi, 1;
mov ebx, dword ptr[ebp + 8];

ciclo:
cmp esi, dword ptr[ebp + 12];
je fineciclo;

imul ebx;

inc esi;
jmp ciclo;
fineciclo:

pop edi;
pop esi;
pop ebx;

mov esp, ebp;
pop ebp;
ret;
}
}


int main(){
int a;
a = 5;

printf("La potenza di a è %d", potenza(a, 3));
}