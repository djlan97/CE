.586
.model flat
.code

_contaPari proc

push ebp
		mov ebp,esp

		push esi
		push ebx
		push edi
		push cx

		mov eax,0
		mov ebx,dword ptr[ebp+8]
		mov esi,0
		mov edi,0
		mov cx, 2

	ciclo:
		cmp esi,dword ptr[ebp+12]
		je fineciclo
		mov al,byte ptr[ebx+esi]

		div cl

		cmp ah,0
		jne nothing
		inc edi
	nothing:
		inc esi
		jmp ciclo
	fineciclo:

		mov eax,edi

		pop cx
		pop edi
		pop ebx
		pop esi

		mov esp,ebp
		pop ebp
		ret

_contaPari endp



End