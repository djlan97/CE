.586
.model flat
.code

_salvaparolaspiazzamento proc

push ebp
mov ebp,esp

push ebx
push esi
push ecx
push edx
push edi

mov edx, dword ptr[ebp+16]
mov edi, -2
call strLen
cmp eax,4
jb fine

mov edi,-1
mov ebx, dword ptr[ebp+8]
mov ecx, dword ptr[ebp+12]
mov esi,0

ciclo:
cmp byte ptr[ebx+esi],0
je fineciclo

call isWord
cmp eax,0
je noWord

mov edi,0
call copyWord
dec esi

jmp continue
noWord:

mov byte ptr[ecx+esi],' '


continue:
inc esi
jmp ciclo
fineciclo:

mov byte ptr[ecx+esi],0

fine:
mov eax,edi


pop edi
pop edx
pop ecx
pop esi
pop ebx

mov esp,ebp
pop ebp
ret

_salvaparolaspiazzamento endp

isWord proc
;ebx stringa
;edx parola1
;esi indice di ebx

push esi
push edi

mov edi,0

ciclo:
cmp byte ptr[edx+edi],0
je fineciclo

mov al,byte ptr[edx+edi]
cmp al,byte ptr[ebx+esi]
je continue

mov edi,0
jmp fineciclo

continue:
inc esi
inc edi
jmp ciclo
fineciclo:

mov eax,edi

pop edi
pop esi

ret

isWord endp

copyWord proc
;ecx dest
;edx parola1
;esi indice ebx

push edi

mov edi,0

ciclo:
cmp byte ptr[edx+edi],0
je fineciclo

mov al,byte ptr[edx+edi]
mov byte ptr[ecx+esi],al

inc edi
inc esi
jmp ciclo
fineciclo:

pop edi

ret

copyWord endp

strLen proc
;edx parola1

push esi

mov esi,0
ciclo:
cmp byte ptr[edx+esi],0
je fineciclo

inc esi
jmp ciclo
fineciclo:

mov eax,esi

pop esi

ret
strLen endp

End
