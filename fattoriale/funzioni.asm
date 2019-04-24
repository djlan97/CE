.586  
.model flat
.code

_fattoriale proc
push ebp
		mov ebp,esp

		push esi
		mov eax,1
		cmp dword ptr[ebp + 8],2
		jb fineciclo
		
		mov eax,2
		mov esi,3

		ciclo:
		cmp dword ptr[ebp + 8],esi
		jb fineciclo

		mul esi
		
		inc esi
		jmp ciclo
		fineciclo:
		
		pop esi
		
		mov esp,ebp
		pop ebp
		ret
_fattoriale endp


End