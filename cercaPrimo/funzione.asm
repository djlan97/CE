.586
.model flat
.code

_cerca_primo proc

push ebp
mov ebp,esp

push ebx
push esi
push ecx
push edx

mov ebx, dword ptr[ebp+8]
mov ecx, dword ptr[ebp+12]
mov eax, 0
mov esi,0

cmp byte ptr[ebx],0
je fineciclo
cmp byte ptr[ecx],0
je fineciclo

ciclo:
cmp byte ptr[ebx+esi],0
je fineciclo

call checkList
cmp edx,1
jne nothing
mov eax,ebx
add eax,esi
jmp fineciclo

nothing:

inc esi
jmp ciclo
fineciclo:


pop edx
pop ecx
pop esi
pop ebx

mov esp,ebp
pop ebp
ret

_cerca_primo endp

checkList proc
;ebx contiene l'indirizzo al primo elemento della stringa
;ecx contiene l'indirizzo al primo elemento della lista
;esi contiene l'indice del carattere da controllare
;metto in edx 1 se è presente nella lista altrimenti 0


push edi
push eax

mov edi,0
mov al,byte ptr[ebx+esi]
mov edx,0

ciclof:
cmp byte ptr[ecx+edi],0
je fineciclof

cmp al,byte ptr[ecx+edi]
jne nothingf

mov edx,1
jmp fineciclof

nothingf:

inc edi
jmp ciclof
fineciclof:

pop eax
pop edi

ret
checkList endp

End