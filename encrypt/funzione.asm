.586
.model flat
.code

_encrypt proc

push ebp
mov ebp,esp

push ebx
push esi

mov ebx,dword ptr[ebp+8]
mov esi,0

ciclo:
cmp esi, dword ptr[ebp+12]
je fineciclo

xor byte ptr[ebx+esi],0AAh

inc esi
jmp ciclo
fineciclo:

pop esi
pop ebx

mov esp,ebp
pop ebp

ret
_encrypt endp

End