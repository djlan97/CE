.586
.model flat
.code
_numeriprimi proc

push ebp;
mov ebp, esp;
push ebx;
push esi;
push edi;

mov ebx, dword ptr[ebp+8];
mov esi,0
mov edi,0
ciclo:
cmp esi, dword ptr[ebp+12];
je fineciclo

mov ecx , dword ptr[ebp+esi];

call primo
add edx,edi

inc esi
jmp ciclo

fineciclo:

pop edi;
pop esi;
pop ebx;

mov esp, ebp;
pop ebp;
ret;

_numeriprimi endp

primo proc
; in ecx c'é il numero 
;in edi c'è 1 se il numero è primo'
;esi lo salvo e anche edx

push esi
push edx
mov esi,ecx;
mov edi,0;

dec esi;

ciclo:
cmp esi,2;
jl fine;
;divisione

mov eax, ecx;
cdq;
idiv esi

fineciclo:

mov eax,esi;

pop esi
pop ebx
ret;
primo endp

End