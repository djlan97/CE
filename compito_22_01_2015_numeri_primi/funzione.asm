.586
.model flat
.code

_numeri_primi proc

push ebp
mov ebp, esp

push ebx
push esi
push edi
push edx
push ecx

mov esi,0
mov edi,0
mov ebx,dword ptr[ebp+8]
mov cl,1
mov ch,1

ciclo:
cmp esi, dword ptr[ebp+16]
je fineciclo

mov dl,byte ptr[ebx+esi]

call isPrimo
cmp eax,0
je notPrimo

inc edi

push ecx
mov ecx,dword ptr[ebp+12]
mov byte ptr[ecx+esi],1
pop ecx

mov cl,0

jmp incremento
notPrimo:

push ecx
mov ecx,dword ptr[ebp+12]
mov byte ptr[ecx+esi],0
pop ecx

mov ch,0

incremento:
inc esi
jmp ciclo
fineciclo:

cmp cl,1;tutti i numeri non sono primi
jne areAllPrimi

mov edi,-2
jmp fine

areAllPrimi:
cmp ch,1

mov edi,-3


fine:
mov eax,edi

pop ecx
pop edx
pop edi
pop esi
pop ebx

mov esp,ebp
pop ebp
ret

_numeri_primi endp

isPrimo proc
;dl contiene il numero da controllare
;ritorno 1 se è primo, viceversa 0

push esi
push ebx
push ecx

mov esi,1

cmp dl,4
jb fineciclo

mov ecx,0
mov eax,0
mov al,dl
mov bl,2
div bl
mov cl,al

ciclo:
cmp bl,cl
ja fineciclo

mov al,dl
mov ah,0
div bl

cmp ah,0
jne continue

mov esi,0
jmp fineciclo

continue:

inc ebx
jmp ciclo
fineciclo:

mov eax,esi

pop ecx
pop ebx
pop esi
ret

isPrimo endp

End