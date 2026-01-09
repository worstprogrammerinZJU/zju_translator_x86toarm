climbStairs:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	cmp	DWORD PTR -20[rbp], 3
	jg	.L2
	mov	eax, DWORD PTR -20[rbp]
	jmp	.L3
	mov	DWORD PTR -4[rbp], 2
	mov	DWORD PTR -8[rbp], 3
	mov	DWORD PTR -12[rbp], 4
	jmp	.L4
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jle	.L5
	mov	eax, DWORD PTR -8[rbp]
	pop	rbp
	ret
0:
1:
2:
3:
4: