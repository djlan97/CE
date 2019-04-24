.586
.model flat
.code

_sostituisci proc

push ebp
mov ebp,esp

push ebx
push ecx
push esi
push edi
push edx

mov edi,0
mov esi,0
mov ebx, dword ptr[ebp+12];str
mov ecx, dword ptr[ebp+8];dest
mov edx, dword ptr[ebp+16];vecchia
mov eax,0

ciclo:
cmp byte ptr[ebx+esi],0
je fineciclo

call isWord
cmp ah,1
jne continue
mov ah,0
add esi,eax

call copyWord



jmp copied

continue:
mov al,byte ptr[ebx+esi]
mov byte ptr[ecx+edi],al

inc esi
inc edi

copied:
jmp ciclo
fineciclo:
mov byte ptr[ecx+edi],0

pop edx
pop edi
pop esi
pop ecx
pop ebx

mov esp, ebp
pop ebp
ret

_sostituisci endp

isWord proc
;ebx contiene l'indirizzo al primo carattere della stringa originale in cui sostituire la parola
;edx contiene l'indirizzo al primo carattere della parola che deve essere sostituita
;esi indice di ebx
;edi serve per scorrere edx
;salvo ecx
;in ah metto 1 se devo sostituire la parola, 0 se non devo sostituire
;in al la lunghezza della stringa vecchia

push esi
push edi
push ecx

mov edi,0


mov al,0
mov ah,1

ciclo:
cmp byte ptr[edx+edi],0
je fineciclo

mov cl,byte ptr[edx+edi]
cmp cl,byte ptr[ebx+esi]
je continue

mov ah,0
jmp fineciclo

continue:

inc al
inc esi
inc edi
jmp ciclo
fineciclo:

pop ecx
pop edi
pop esi

ret
isWord endp

copyWord proc
;salvo edx e salvo l'indirizzo del primo carattere della parola da sostituire
;salvo esi e lo uso come contatore
;salvo ebx
;ecx contiene lìindirizzo al primo carattere della stringa destinazione
;edi contiene l'indice della stringa di destinazione

push edx
push esi
push ebx

mov esi,0
mov edx, dword ptr[ebp+20]

ciclo:
cmp byte ptr[edx+esi],0
je fineciclo

mov bl,byte ptr[edx+esi]
mov byte ptr[ecx+edi],bl

inc esi
inc edi
jmp ciclo
fineciclo:

pop ebx
pop esi
pop edx
ret
copyWord endp

End