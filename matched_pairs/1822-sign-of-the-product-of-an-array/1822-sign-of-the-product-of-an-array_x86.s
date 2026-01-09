arraySign:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	BYTE PTR -1[rbp], 1
	mov	DWORD PTR -8[rbp], 0
	jmp	.L2
	movsx	eax, BYTE PTR -1[rbp]
	mov	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	neg	eax
	shr	eax, 31
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rsi, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rsi
	mov	eax, DWORD PTR [rax]
	sar	eax, 31
	add	eax, edx
	mov	edx, eax
	mov	eax, ecx
	imul	eax, edx
	mov	BYTE PTR -1[rbp], al
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L3
	movsx	eax, BYTE PTR -1[rbp]
	pop	rbp
	ret
0:
1:
2:
3:
4: