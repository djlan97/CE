.586
.model flat
.code

_ricerca_binaria proc

push ebp
mov ebp,esp

push ebx
push esi
push edx
push ecx
push edi

mov eax, -1

mov ebx, dword ptr[ebp+8]
mov esi,0
mov edi,dword ptr[ebp+12]
dec edi

ciclo:
cmp esi,edi
ja fineciclo

mov edx,0
mov eax,esi
add eax,edi

mov ecx,2
div ecx

mov edx,dword ptr[ebx+eax*4]
cmp edx,dword ptr[ebp+16]
je fineciclo
jl isGreater

mov edi, eax
dec edi

jmp continue
isGreater:
mov esi,eax
inc esi

continue:

jmp ciclo
fineciclo:

cmp esi,edi
jna fine

mov eax,-1

fine:

pop edi
pop ecx
pop edx
pop esi
pop ebx

mov esp,ebp
pop ebp

ret
_ricerca_binaria endp



End