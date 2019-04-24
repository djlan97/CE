.586
.model flat
.code

_maxVect proc
push ebp
mov ebp, esp

push ebx
push esi

mov ebx, dword ptr[ebp+8]
mov eax, dword ptr[ebx]
mov esi,1

ciclo:
cmp esi, dword ptr[ebp+12]
je fineciclo

cmp dword ptr[ebx + esi * 4], eax
jng nothing

mov eax, dword ptr[ebx+esi*4]

nothing:
		inc esi
		jmp ciclo
	fineciclo:



		pop esi
		pop ebx

		mov esp,ebp
		pop ebp
		ret
_maxVect endp

_minVect proc

		push ebp
			mov ebp, esp

			push ebx
			push esi


			mov ebx, dword ptr[ebp + 8]
			mov eax, dword ptr[ebx]
			mov esi, 1

		ciclo:
		cmp esi, dword ptr[ebp + 12]
			je fineciclo

			cmp dword ptr[ebx + esi * 4], eax
			jnl nothing

			mov eax, dword ptr[ebx + esi * 4]

		nothing:
			inc esi
				jmp ciclo
			fineciclo :



			pop esi
				pop ebx

				mov esp, ebp
				pop ebp
				ret
_minVect endp

_prodottoMaxMin proc

push ebp
		mov ebp,esp
		
		push ebx
		mov ebx,dword ptr[ebp+8]

		mov eax, dword ptr[ebp+12]
		imul ebx

		mov esp,ebp
		pop ebp
		ret

_prodottoMaxMin endp

_media proc

push ebp
		mov ebp, esp

		push ebx
		push ecx
		push edx

		mov ebx,dword ptr[ebp+ 8]
		mov ecx, dword ptr[ebp+12]
		call somma
		
		cdq
		idiv ecx

		pop edx
		pop ecx
		pop ebx

		mov esp,ebp
		pop ebp
		ret

_media endp

_sommaElMinoriSommaVect proc

push ebp
		mov ebp,esp

		push ebx
		push ecx
		push esi
		
		mov ebx, dword ptr[ebp+8]
		mov ecx, dword ptr[ebp+12]
		mov esi, 0
		call somma
		mov ecx,0

	ciclo:
		cmp esi, dword ptr[ebp + 12]
		je fineciclo

		cmp eax, dword ptr[ebx+esi*4]
		jng nothing
		add ecx, dword ptr[ebx+esi*4]

	nothing:
		inc esi
		jmp ciclo
	fineciclo:
		mov eax,ecx


		pop esi
		pop ecx
		pop ebx

		mov esp,ebp
		pop ebp

		ret

_sommaElMinoriSommaVect endp

somma proc

;in ebx c'è l'indirizzo del primo elemento
		;in ecx c'è la lunghezza del vettore
		;esi è il contatore
		;la somma la metto in eax

			push ebx
			push ecx
			push esi
			

			mov esi, 0
			mov eax, 0

		ciclo:
		cmp esi, ecx
			je fineciclo

			add eax, dword ptr[ebx + esi * 4]

			inc esi
			jmp ciclo
		fineciclo :

		
pop esi
pop ecx
pop ebx

ret

somma endp

End