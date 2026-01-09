evalRPN:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 88
	mov	QWORD PTR -88[rbp], rdi
	mov	DWORD PTR -92[rbp], esi
	mov	rax, rsp
	mov	rbx, rax
	mov	eax, DWORD PTR -92[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -32[rbp], rdx
	movsx	rdx, eax
	mov	r10, rdx
	mov	r11d, 0
	movsx	rdx, eax
	mov	r8, rdx
	mov	r9d, 0
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
	cmp	rsp, rdx
	je	.L3
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L2
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L4
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 7
	shr	rax, 3
	sal	rax, 3
	mov	QWORD PTR -40[rbp], rax
	mov	DWORD PTR -20[rbp], -1
	mov	DWORD PTR -24[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -88[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	lea	rdx, .LC0[rip]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, 0
	call	strcmp@PLT
	test	eax, eax
	jne	.L6
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	DWORD PTR -72[rbp], eax
	sub	DWORD PTR -20[rbp], 1
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	DWORD PTR -76[rbp], eax
	mov	edx, DWORD PTR -72[rbp]
	mov	eax, DWORD PTR -76[rbp]
	add	eax, edx
	movsx	rcx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	mov	QWORD PTR [rax+rdx*8], rcx
	jmp	.L7
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -88[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	lea	rdx, .LC1[rip]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, 0
	call	strcmp@PLT
	test	eax, eax
	jne	.L8
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	DWORD PTR -64[rbp], eax
	sub	DWORD PTR -20[rbp], 1
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	DWORD PTR -68[rbp], eax
	mov	eax, DWORD PTR -68[rbp]
	sub	eax, DWORD PTR -64[rbp]
	movsx	rcx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	mov	QWORD PTR [rax+rdx*8], rcx
	jmp	.L7
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -88[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	lea	rdx, .LC2[rip]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, 0
	call	strcmp@PLT
	test	eax, eax
	jne	.L9
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	QWORD PTR -56[rbp], rax
	sub	DWORD PTR -20[rbp], 1
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	DWORD PTR -60[rbp], eax
	mov	eax, DWORD PTR -60[rbp]
	cdqe
	imul	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	mov	QWORD PTR [rax+rdx*8], rcx
	jmp	.L7
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -88[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	lea	rdx, .LC3[rip]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, 0
	call	strcmp@PLT
	test	eax, eax
	jne	.L10
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	DWORD PTR -44[rbp], eax
	sub	DWORD PTR -20[rbp], 1
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	DWORD PTR -48[rbp], eax
	mov	eax, DWORD PTR -48[rbp]
	cdq
	idiv	DWORD PTR -44[rbp]
	movsx	rcx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	mov	QWORD PTR [rax+rdx*8], rcx
	jmp	.L7
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -88[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	mov	eax, 0
	call	atoi@PLT
	movsx	rcx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	mov	QWORD PTR [rax+rdx*8], rcx
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -92[rbp]
	jl	.L11
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	rsp, rbx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
0:
1:
2:
3:
4: