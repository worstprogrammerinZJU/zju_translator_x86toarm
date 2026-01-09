generate:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	DWORD PTR -36[rbp], edi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	edx, DWORD PTR -36[rbp]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR [rax], rdx
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	QWORD PTR -24[rbp], rax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	edx, DWORD PTR -4[rbp]
	add	edx, 1
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	cdqe
	sal	rax, 2
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	mov	QWORD PTR [rax], rdx
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	DWORD PTR [rax], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	DWORD PTR [rax], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L3
	mov	DWORD PTR -8[rbp], 2
	jmp	.L4
	mov	DWORD PTR -12[rbp], 1
	jmp	.L5
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 3
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 2
	sub	rax, 4
	add	rax, rdx
	mov	ecx, DWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 3
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rsi, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rsi
	mov	rsi, QWORD PTR [rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 2
	add	rax, rsi
	add	edx, ecx
	mov	DWORD PTR [rax], edx
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L6
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L7
	mov	rax, QWORD PTR -24[rbp]
	leave
	ret
0:
1:
2:
3:
4: