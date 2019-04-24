.586
.model flat
.code

_media proc

push ebp
mov ebp,esp

push ebx
push esi

mov ebx, dword ptr[ebp+8]
mov esi,0
mov eax,0

ciclo:
cmp esi,dword ptr[ebp+12]
je fineciclo

add eax,dword ptr[ebx+esi*4]

inc esi
jmp ciclo
fineciclo:

mov ebx,dword ptr[ebp+12]
cdq
idiv ebx

pop esi
pop ebx

mov esp,ebp
pop ebp

ret
_media endp


End