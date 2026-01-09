	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	QWORD PTR -56[rbp], rdx
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	sal	rax, 2
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	DWORD PTR [rax], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	edi, eax
	mov	eax, 0
	call	abs@PLT
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	sal	rax, 2
	lea	rdx, -4[rax]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	edi, eax
	mov	eax, 0
	call	abs@PLT
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	sal	rdx, 2
	lea	rcx, -4[rdx]
	mov	rdx, QWORD PTR -40[rbp]
	add	rdx, rcx
	neg	eax
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L3
	mov	DWORD PTR -8[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	jle	.L5
	mov	rax, QWORD PTR -56[rbp]
	mov	eax, DWORD PTR [rax]
	lea	ecx, 1[rax]
	mov	rdx, QWORD PTR -56[rbp]
	mov	DWORD PTR [rdx], ecx
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -8[rbp]
	add	edx, 1
	mov	DWORD PTR [rax], edx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L6
	mov	rax, QWORD PTR -16[rbp]
	leave
	ret
0:
1:
2:
3:
4: