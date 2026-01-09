createDeque:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	edi, 24
	call	malloc@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	call	malloc@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 12[rax], -1
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 16[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
pushBack:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	DWORD PTR -16[rbp], edx
	jmp	.L4
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 12[rax]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 12[rax], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 16[rax]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 16[rax], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 16[rax]
	test	eax, eax
	jle	.L5
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 12[rax]
	cdqe
	sal	rax, 3
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -12[rbp], eax
	jge	.L6
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 12[rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 12[rax], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 12[rax]
	cdqe
	sal	rax, 3
	add	rdx, rax
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR [rdx], eax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 12[rax]
	cdqe
	sal	rax, 3
	add	rdx, rax
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR 4[rdx], eax
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 16[rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 16[rax], edx
	nop
	pop	rbp
	ret
popFront:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 16[rax]
	test	eax, eax
	jle	.L9
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 8[rax]
	cdqe
	sal	rax, 3
	add	rax, rdx
	mov	eax, DWORD PTR 4[rax]
	cmp	DWORD PTR -12[rbp], eax
	jne	.L9
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 8[rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 8[rax], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 16[rax]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 16[rax], edx
	nop
	pop	rbp
	ret
maxSlidingWindow:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	DWORD PTR -48[rbp], edx
	mov	QWORD PTR -56[rbp], rcx
	cmp	DWORD PTR -44[rbp], 0
	jne	.L11
	mov	rax, QWORD PTR -56[rbp]
	mov	DWORD PTR [rax], 0
	mov	eax, 0
	jmp	.L12
	mov	eax, DWORD PTR -44[rbp]
	sub	eax, DWORD PTR -48[rbp]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -56[rbp]
	mov	eax, DWORD PTR [rax]
	cdqe
	sal	rax, 2
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -44[rbp]
	mov	edi, eax
	call	createDeque
	mov	QWORD PTR -24[rbp], rax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L13
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR [rax]
	mov	edx, DWORD PTR -4[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	pushBack
	mov	eax, DWORD PTR -48[rbp]
	sub	eax, 1
	cmp	DWORD PTR -4[rbp], eax
	jl	.L14
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 8[rax]
	cdqe
	sal	rax, 3
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, DWORD PTR -48[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -16[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR [rcx]
	mov	DWORD PTR [rdx], eax
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, DWORD PTR -48[rbp]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	popFront
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L15
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	free@PLT
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	free@PLT
	mov	rax, QWORD PTR -16[rbp]
	leave
	ret
0:
1:
2:
3:
4: