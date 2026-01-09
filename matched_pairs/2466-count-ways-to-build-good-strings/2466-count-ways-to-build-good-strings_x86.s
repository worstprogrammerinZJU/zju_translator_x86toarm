countGoodStrings:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -36[rbp], edi
	mov	DWORD PTR -40[rbp], esi
	mov	DWORD PTR -44[rbp], edx
	mov	DWORD PTR -48[rbp], ecx
	mov	DWORD PTR -12[rbp], 1000000007
	mov	eax, DWORD PTR -40[rbp]
	add	eax, 1
	cdqe
	sal	rax, 2
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR [rax], 1
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 1
	jmp	.L2
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	DWORD PTR [rax], 0
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	add	eax, edx
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -24[rbp]
	add	rcx, rdx
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	eax, edx
	mov	DWORD PTR [rcx], eax
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -48[rbp]
	jl	.L4
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, DWORD PTR -48[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	add	eax, edx
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -24[rbp]
	add	rcx, rdx
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	eax, edx
	mov	DWORD PTR [rcx], eax
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L5
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	add	eax, edx
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	DWORD PTR -4[rbp], edx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -40[rbp]
	jle	.L6
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	free@PLT
	mov	eax, DWORD PTR -4[rbp]
	leave
	ret
0:
1:
2:
3:
4: