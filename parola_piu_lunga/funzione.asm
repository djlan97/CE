.586
.model flat
.code

_parola_piu_lunga proc

push ebp
mov ebp,esp

push ebx
push ecx
push esi
push edi

mov ecx,0 ;inParola
mov esi,0
mov ebx,dword ptr[ebp+8]
mov edx,0  ;MAX
mov edi,0

ciclo:
cmp byte ptr[ebx+esi],0
je fineciclo

cmp ecx,0
jne inParola
cmp byte ptr[ebx+esi],' '
je continue

mov ecx,1
inc edi
jmp continue

inParola:
cmp byte ptr[ebx+esi],' '
je verificaMax
inc edi
jmp continue

verificaMax:
mov ecx,0
cmp edx,edi
jae resetCount

mov edx,edi

mov eax,ebx
add eax,esi
sub eax,edi

resetCount:
mov edi,0

continue:
inc esi
jmp ciclo
fineciclo:

cmp ecx,0
je fine


cmp edx,edi
jae fine

mov edx,edi

mov eax,ebx
add eax,esi
sub eax,edi

fine:

pop edi
pop esi
pop ecx
pop ebx

mov esp,ebp
pop ebp
ret

_parola_piu_lunga endp

End