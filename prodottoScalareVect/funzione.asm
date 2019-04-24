.586
.model flat
.code

_prodotto_scalare proc

push ebp
mov ebp,esp

push ebx
push ecx
push esi
push edx

mov ebx, dword ptr[ebp+8]
mov ecx, dword ptr[ebp+12]
mov esi,0
mov edx,0

ciclo:
cmp esi,dword ptr[ebp+16]
je fineciclo

push edx

mov eax,dword ptr[ebx+esi*4]
mov edx,dword ptr[ecx+esi*4]

imul edx

pop edx
add edx,eax

inc esi
jmp ciclo
fineciclo:

mov eax,edx

pop edx
pop esi
pop ecx
pop ebx

mov esp,ebp
pop ebp

ret
_prodotto_scalare endp



End