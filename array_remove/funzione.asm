.586
.model flat
.code

_array_remove proc

push ebp
mov ebp,esp

push ecx
push edx
push esi
push ebx

mov edx, dword ptr [ebp+16]
mov ecx,dword ptr[ebp+12]
cmp dword ptr[ecx], edx
jna fineciclo

mov ebx,dword ptr [ebp+8]

mov esi,edx
dec dword ptr[ecx]

ciclo:
cmp esi,dword ptr[ecx]
je fineciclo


inc esi
mov eax,dword ptr[ebx+esi*4]
mov dword ptr[ebx-4+esi*4],eax

jmp ciclo
fineciclo:



pop ebx
pop esi
pop edx
pop ecx

mov esp,ebp
pop ebp

ret
_array_remove endp


End