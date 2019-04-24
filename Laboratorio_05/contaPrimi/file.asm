.586
.model flat
.code
_sommalungstringhe proc

push ebp;
mov ebp, esp;
push ebx;
push esi;
push edi;

mov ebx, dword ptr[ebp+8];

mov esi, 0;

call strlung;
mov ecx,eax;
mov ebx, dword ptr[ebp+12];
call strlung;
add eax,ecx;

pop edi;
pop esi;
pop ebx;

mov esp, ebp;
pop ebp;
ret;

_sommalungstringhe endp

strlung proc
; in ebx c'é l'indirizzo della stringa 
;la lunghezza la metto in eax
;a parte ebx gli altri registri li posso sovrascrivere

push ebx

mov esi,0;

ciclo:
mov al,byte ptr[ebx+esi];
cmp al,0;
je fineciclo1;

inc esi;
jmp ciclo;

fineciclo:

mov eax,esi;

pop ebx;
ret;
strlung endp

End