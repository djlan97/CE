#include <stdio.h>


int main(){
char vett[] = "ciccio merdone8000&&$$£$$ eroooooooooe nazionaleee!!";
char *p;
unsigned int lunghezza;
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
inc edi;

nothing:

inc esi;
jmp condizione;

fineciclo:
mov lunghezza, edi;



}
printf("I caratteri alfabetici minuscoli della stringa sono %d", lunghezza);
}