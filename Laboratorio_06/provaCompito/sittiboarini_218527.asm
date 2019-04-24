.586
.model flat
.code

_togli_dispari proc

push ebp
mov ebp,esp

push ebx
push esi
push edi
push ecx
push edx

mov ebx,dword ptr[ebp+8]

call checkAllPariDispari
cmp eax,0
jne fine

mov edi,0
mov esi,1
mov ecx,dword ptr[ebp+12]
dec ecx

ciclo:
cmp esi,ecx
je fineciclo

call check
cmp eax,1
jne noChange

inc edi
call calcMedia

mov byte ptr[ebx+esi],al


noChange:

inc esi
jmp ciclo
fineciclo:

mov eax,0
cmp esi,0
je fine

mov eax,edi
call isDispari
cmp eax,1
je dispari

mov eax,edi

jmp fine
dispari:
mov eax,0

fine:

pop edx
pop ecx
pop edi
pop ebx
pop esi

mov esp,ebp
pop ebp
ret
_togli_dispari endp



calcMedia proc
;ebx contiene il vettore
;esi l'indice

push ebx

mov al,byte ptr[ebx+esi-1]
add al,byte ptr[ebx+esi+1]
mov ah,0
mov bl,2
div bl
mov bl,al
call isDispari
cmp eax,1
jne fine

inc bl

fine:
mov al,bl


pop ebx
ret
calcMedia endp


isDispari proc
;il numero da controllare è in al

push ebx

mov bl,2
mov ah,0
div bl
cmp ah,0
je pari

mov eax,1

jmp fine
pari:
mov eax,0

fine:

pop ebx
ret
isDispari endp



check proc
;ebx indirizzo inizio vettore
;esi indice numero da controllare

push esi
push ecx

mov al,byte ptr[ebx+esi]

call isDispari
cmp eax,1
jne fine

mov al,byte ptr[ebx+esi-1]
call isDispari
cmp eax,1
je fine

mov al,byte ptr[ebx+esi+1]
call isDispari
cmp eax,1
je fine

mov ecx,1

fine:

mov eax,ecx

pop ecx
pop esi
ret
check endp


checkAllPariDispari proc
;ebx contiene il vettore

push esi
push edx
push edi

mov edi,dword ptr[ebp+12]
dec edi
mov esi,1

mov dl,1;tutti dispari
mov dh,1;tutti pari

ciclo:
cmp esi,edi
je fineciclo


mov al,byte ptr[ebx+esi]
call isDispari
cmp eax,1
jne pari

mov dh,0

jmp continue
pari:

mov dl,0

continue:
inc esi
jmp ciclo
fineciclo:

mov eax,0

cmp dl,1
jne allPari

mov eax,-1
jmp fine

allPari:
cmp dh,1
jne fine

mov eax,-2

fine:

pop edi
pop edx
pop esi

ret

checkAllPariDispari endp

End