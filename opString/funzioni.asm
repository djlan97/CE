.586
.model flat
.code

_strLen proc

push ebp
mov ebp,esp

push ebx
mov ebx,dword ptr[ebp+8]
mov eax,0

ciclo:
cmp byte ptr[ebx+eax],0
je fineciclo

inc eax
jmp ciclo
fineciclo:

pop ebx

mov esi,ebp
pop ebp
ret

_strLen endp

_contaVocali proc

push ebp
mov ebp, esp

push esi
push ebx

mov ebx, dword ptr[ebp + 8]
mov esi, 0
mov eax, 0

ciclo:
cmp byte ptr[ebx + esi], 0
je fineciclo

cmp byte ptr[ebx + esi],'a'
je conta
cmp byte ptr[ebx + esi],'A'
je conta

cmp byte ptr[ebx + esi],'e'
je conta
cmp byte ptr[ebx + esi],'E'
je conta

cmp byte ptr[ebx + esi],'i'
je conta
cmp byte ptr[ebx + esi],'I'
je conta

cmp byte ptr[ebx + esi],'o'
je conta
cmp byte ptr[ebx + esi],'O'
je conta

cmp byte ptr[ebx + esi],'u'
je conta
cmp byte ptr[ebx + esi],'U'
je conta
jmp nulla

conta:
inc eax

nulla:
inc esi
jmp ciclo

fineciclo:

			
pop ebx
pop esi
mov ebp, esp
pop ebp
ret

_contaVocali endp


_contaConsonanti proc

push ebp
mov ebp, esp

push esi
push ebx

mov ebx, dword ptr[ebp + 8]
mov esi, 0
mov eax, 0

ciclo:
cmp byte ptr[ebx + esi], 0
je fineciclo

cmp byte ptr[ebx + esi],'B'
jb nulla

cmp byte ptr[ebx + esi],'z'
ja nulla

cmp byte ptr[ebx + esi],'a'
je nulla

cmp byte ptr[ebx + esi],'e'
je nulla
cmp byte ptr[ebx + esi],'E'
je nulla

cmp byte ptr[ebx + esi],'i'
je nulla
cmp byte ptr[ebx + esi],'I'
je nulla

cmp byte ptr[ebx + esi],'o'
je nulla
cmp byte ptr[ebx + esi],'O'
je nulla

cmp byte ptr[ebx + esi],'u'
je nulla
cmp byte ptr[ebx + esi],'U'
je nulla

inc eax

nulla:
inc esi
jmp ciclo

fineciclo:

			
pop ebx
pop esi
mov ebp, esp
pop ebp
ret

_contaConsonanti endp

_contaMinuscole proc

push ebp
mov ebp,esp

push ebx
push esi

mov ebx, dword ptr[ebp+8]
mov esi,0
mov eax,0

ciclo:
cmp byte ptr[ebx+esi],0
je fineciclo

cmp byte ptr[ebx+esi], 'a'
jb nothing
cmp byte ptr[ebx+esi], 'z'
ja nothing

inc eax

nothing:
inc esi
jmp ciclo
fineciclo:

mov esp,ebp
pop ebp
ret

_contaMinuscole endp

_maiuscConvert proc

push ebp
mov ebp, esp

push esi
push ebx

mov ebx, dword ptr[ebp + 8]
mov esi, 0
mov eax, 0

ciclo:
cmp byte ptr[ebx + esi], 0
je fineciclo

cmp byte ptr[ebx + esi],'a'
jb nulla

cmp byte ptr[ebx + esi],'z'
ja nulla

sub byte ptr[ebx + esi],32d

nulla:
inc esi
jmp ciclo

fineciclo:

mov eax, ebx
			
pop ebx
pop esi
mov ebp, esp
pop ebp
ret

_maiuscConvert endp

End