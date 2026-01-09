min:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cmp	edx, eax
	cmovle	eax, edx
	pop	rbp
	ret
minSubArrayLen:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	QWORD PTR -32[rbp], rsi
	mov	DWORD PTR -24[rbp], edx
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	add	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L5
	cmp	DWORD PTR -4[rbp], 0
	jne	.L7
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -8[rbp]
	add	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L7
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	sub	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	min
	mov	DWORD PTR -4[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, edx
	cmp	DWORD PTR -20[rbp], eax
	jle	.L8
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jl	.L9
	mov	eax, DWORD PTR -4[rbp]
	leave
	ret
0:
1:
2:
3:
4: