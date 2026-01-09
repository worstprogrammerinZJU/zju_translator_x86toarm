countBits:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	QWORD PTR -32[rbp], rsi
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	mov	esi, 4
	mov	edi, eax
	mov	eax, 0
	call	calloc@PLT
	cdqe
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR [rax], edx
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	sar	eax
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	and	eax, 1
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rsi, 0[0+rax*4]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rsi
	add	edx, ecx
	mov	DWORD PTR [rax], edx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jle	.L3
	mov	rax, QWORD PTR -16[rbp]
	leave
	ret
0:
1:
2:
3:
4: