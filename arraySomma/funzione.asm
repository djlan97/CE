.586
.model flat
.code

_array_somma proc

push ebp
mov ebp,esp

push ebx
push ecx
push edx
push esi

mov ebx,dword ptr[ebp+8]
mov ecx,dword ptr[ebp+12]
mov edx,dword ptr[ebp+16]
mov esi,0

ciclo:
cmp esi,dword ptr[ebp+20]
je fineciclo

mov eax,dword ptr[ebx+esi*4]
add eax,dword ptr[ecx+esi*4]
mov dword ptr[edx+esi*4],eax


inc esi
jmp ciclo
fineciclo:

pop esi
pop edx
pop ecx
pop ebx

mov esp,ebp
pop ebp

ret
_array_somma endp

End