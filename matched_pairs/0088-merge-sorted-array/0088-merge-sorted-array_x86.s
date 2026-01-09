merge:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -32[rbp], edx
	mov	QWORD PTR -40[rbp], rcx
	mov	DWORD PTR -44[rbp], r8d
	mov	DWORD PTR -48[rbp], r9d
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -48[rbp]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L2
	cmp	DWORD PTR -8[rbp], 0
	js	.L8
	cmp	DWORD PTR -4[rbp], 0
	jns	.L5
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -24[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	sub	DWORD PTR -8[rbp], 1
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jle	.L6
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR -4[rbp]
	mov	edx, DWORD PTR -8[rbp]
	add	edx, ecx
	movsx	rdx, edx
	add	rdx, 1
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -24[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	sub	DWORD PTR -4[rbp], 1
	jmp	.L2
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR -4[rbp]
	mov	edx, DWORD PTR -8[rbp]
	add	edx, ecx
	movsx	rdx, edx
	add	rdx, 1
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -24[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	sub	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jns	.L7
	cmp	DWORD PTR -8[rbp], 0
	jns	.L7
	jmp	.L1
	nop
	pop	rbp
	ret
0:
1:
2:
3:
4: