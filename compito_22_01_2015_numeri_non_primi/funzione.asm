.586
.model flat
.code

_numeri_nonprimi proc

push ebp
mov ebp,esp

push ebx
push esi
push edi
push ecx
push edx

mov dl,1;areAllPrimi
mov dh,1;noOnePrimo
mov ebx,dword ptr[ebp+8]
mov ecx,dword ptr[ebp+12]
mov esi,0
mov edi,0

ciclo:
cmp esi,dword ptr[ebp+16]
je fineciclo


call isPrimo
cmp eax,1
je primo

mov dl,0
mov byte ptr[ecx+esi],1

inc edi

jmp incremento
primo:

mov dh,0

mov byte ptr[ecx+esi],0

incremento:
inc esi
jmp ciclo
fineciclo:

cmp dl,1
jne isNoOnePrimo

mov edi,-3

jmp fine
isNoOnePrimo:
cmp dh,1
jne fine

mov edi,-2

fine:
mov eax,edi

pop edx
pop ecx
pop edi
pop esi
pop ebx

mov esp,ebp
pop ebp
ret

_numeri_nonprimi endp

isPrimo proc
;ebx contiene l'indirizzo al vettore
;esi contiene l'indice
;ritorna in eax 1 se è primo, 0 altrimenti

push edx
push ebx
push esi
push ecx

mov ecx,1
mov edx,0
mov eax,0
mov al,byte ptr[ebx+esi]

cmp al,4
jb fineciclo

mov dl,2
div dl

mov dl,al
mov dh,2

ciclo:
cmp dh,dl
ja fineciclo

mov al,byte ptr [ebx+esi]
mov ah,0
div dh

cmp ah,0
jne continue

mov ecx,0
jmp fineciclo

continue:
inc dh
jmp ciclo
fineciclo:

mov eax,ecx

pop ecx
pop esi
pop ebx
pop edx
ret

isPrimo endp

End