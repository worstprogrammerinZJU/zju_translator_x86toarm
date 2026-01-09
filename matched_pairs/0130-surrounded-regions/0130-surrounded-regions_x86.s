dfsModifyBorder:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	DWORD PTR -16[rbp], edx
	mov	DWORD PTR -20[rbp], ecx
	mov	DWORD PTR -24[rbp], r8d
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 88
	je	.L7
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	add	rax, rdx
	mov	BYTE PTR [rax], 84
	cmp	DWORD PTR -20[rbp], 0
	jle	.L4
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	sal	rax, 3
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 79
	jne	.L4
	mov	eax, DWORD PTR -20[rbp]
	lea	ecx, -1[rax]
	mov	edi, DWORD PTR -24[rbp]
	mov	edx, DWORD PTR -16[rbp]
	mov	esi, DWORD PTR -12[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	r8d, edi
	mov	rdi, rax
	call	dfsModifyBorder
	cmp	DWORD PTR -24[rbp], 0
	jle	.L5
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	sub	rax, 1
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 79
	jne	.L5
	mov	eax, DWORD PTR -24[rbp]
	lea	edi, -1[rax]
	mov	ecx, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -16[rbp]
	mov	esi, DWORD PTR -12[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	r8d, edi
	mov	rdi, rax
	call	dfsModifyBorder
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	cmp	DWORD PTR -20[rbp], eax
	jge	.L6
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 79
	jne	.L6
	mov	eax, DWORD PTR -20[rbp]
	lea	ecx, 1[rax]
	mov	edi, DWORD PTR -24[rbp]
	mov	edx, DWORD PTR -16[rbp]
	mov	esi, DWORD PTR -12[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	r8d, edi
	mov	rdi, rax
	call	dfsModifyBorder
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	cmp	DWORD PTR -24[rbp], eax
	jge	.L1
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	add	rax, 1
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 79
	jne	.L1
	mov	eax, DWORD PTR -24[rbp]
	lea	edi, 1[rax]
	mov	ecx, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -16[rbp]
	mov	esi, DWORD PTR -12[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	r8d, edi
	mov	rdi, rax
	call	dfsModifyBorder
	jmp	.L1
	nop
	leave
	ret
reModifyBorder:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -32[rbp], edx
	mov	DWORD PTR -4[rbp], 0
	jmp	.L9
	mov	DWORD PTR -8[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 79
	jne	.L11
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	add	rax, rdx
	mov	BYTE PTR [rax], 88
	jmp	.L12
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 84
	jne	.L12
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	add	rax, rdx
	mov	BYTE PTR [rax], 79
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -32[rbp]
	jl	.L13
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L14
	nop
	nop
	pop	rbp
	ret
solve:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -56[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	sub	eax, 1
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	mov	DWORD PTR -20[rbp], eax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L16
	mov	ecx, DWORD PTR -4[rbp]
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, DWORD PTR -44[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	r8d, 0
	mov	rdi, rax
	call	dfsModifyBorder
	mov	edi, DWORD PTR -20[rbp]
	mov	ecx, DWORD PTR -4[rbp]
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, DWORD PTR -44[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	r8d, edi
	mov	rdi, rax
	call	dfsModifyBorder
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jl	.L17
	mov	DWORD PTR -8[rbp], 0
	jmp	.L18
	mov	ecx, DWORD PTR -8[rbp]
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, DWORD PTR -44[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	r8d, ecx
	mov	ecx, 0
	mov	rdi, rax
	call	dfsModifyBorder
	mov	edi, DWORD PTR -8[rbp]
	mov	ecx, DWORD PTR -16[rbp]
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, DWORD PTR -44[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	r8d, edi
	mov	rdi, rax
	call	dfsModifyBorder
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L19
	mov	edx, DWORD PTR -12[rbp]
	mov	ecx, DWORD PTR -44[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	reModifyBorder
	nop
	leave
	ret
0:
1:
2:
3:
4: