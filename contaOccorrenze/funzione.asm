.586
.model flat
.code

_conta_occorrenze proc

push ebp
mov ebp,esp

push ebx
push esi
push ecx
push edx
push edi

mov ebx ,dword ptr[ebp+8]
mov ecx, dword ptr[ebp+12]
mov dl, byte ptr[ecx]
mov esi,0
mov eax,0
mov edi,0

ciclo:
cmp byte ptr[ebx+esi],0
je fineciclo

cmp dl, byte ptr[ebx+esi]
jne nothing

call isOcc
dec esi
cmp eax,1
jne nothing
inc edi


nothing:
inc esi
jmp ciclo
fineciclo:

mov eax,edi

pop edi
pop edx
pop ecx
pop esi
pop ebx

mov esp,ebp
pop ebp
ret
_conta_occorrenze endp

isOcc proc
;esi mi dice a che indice è arrivato nella stringa
;ebx contiene l'indirizzo alla prima lettera della stringa
;ecx contiene l'indirizzo alla prima lettera della parola da trovare

push edi
push edx

inc esi
mov edi,1
mov eax,1

ciclo:
cmp byte ptr[ebx+esi],0
je fineciclo
cmp byte ptr[ecx+edi],0
je fineciclo

mov dl,byte ptr[ebx+esi]
cmp dl,byte ptr[ecx+edi]
je nothing

mov eax,0
jmp fineciclo

nothing:
inc esi
inc edi
jmp ciclo
fineciclo:

pop edx
pop edi
ret
isOcc endp

End