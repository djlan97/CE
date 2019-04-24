.586
.model flat
.code

_conta_spazi proc

push ebp
mov ebp,esp

push ebx
push esi

mov ebx,dword ptr[ebp+8]
mov eax,0
mov esi,0

ciclo:
cmp byte ptr[ebx+esi],0
je fineciclo

cmp byte ptr[ebx+esi],' '
jne nothing

inc eax

nothing:
inc esi
jmp ciclo
fineciclo:

pop esi
pop ebx

mov esp,ebp
pop ebp
ret

_conta_spazi endp

End