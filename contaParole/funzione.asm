.586
.model flat
.code

_conta_parole proc

push ebp
mov ebp,esp

push ebx
push esi
push edi
push edx

mov ebx,dword ptr[ebp+8]
mov esi,0
mov edi,0
mov edx,0

ciclo:
cmp byte ptr[ebx+esi],0
je fineciclo

cmp edx,0
je noInword

cmp byte ptr[ebx+esi],' '
jne incremento
mov edx,0
jmp incremento

noInWord:
cmp byte ptr[ebx+esi],' '
je incremento

inc edi
mov edx,1

incremento:
inc esi
jmp ciclo
fineciclo:

mov eax,edi

pop edx
pop edi
pop esi
pop ebx

mov esp,ebp
pop ebp
ret

_conta_parole endp

End