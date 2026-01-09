stoneGameIII:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	mov	QWORD PTR -72[rbp], rdi
	mov	DWORD PTR -76[rbp], esi
	mov	rax, rsp
	mov	rbx, rax
	mov	eax, DWORD PTR -76[rbp]
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -48[rbp], rdx
	movsx	rdx, eax
	mov	r10, rdx
	mov	r11d, 0
	movsx	rdx, eax
	mov	r8, rdx
	mov	r9d, 0
	cdqe
	lea	rdx, 0[0+rax*4]
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
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -56[rbp], rax
	mov	DWORD PTR -20[rbp], 0
	jmp	.L5
	mov	rax, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], -1000000000
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L6
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, 1
	mov	DWORD PTR -24[rbp], eax
	jmp	.L7
	mov	DWORD PTR -28[rbp], 0
	mov	DWORD PTR -32[rbp], 0
	jmp	.L8
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -32[rbp]
	add	eax, edx
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	add	DWORD PTR -28[rbp], eax
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -32[rbp]
	add	eax, edx
	add	eax, 1
	cmp	DWORD PTR -36[rbp], eax
	jle	.L9
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -32[rbp]
	add	eax, edx
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -56[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	jmp	.L10
	mov	ecx, 0
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, ecx
	mov	edx, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	ecx, DWORD PTR -24[rbp]
	movsx	rcx, ecx
	mov	eax, DWORD PTR [rax+rcx*4]
	cmp	edx, eax
	cmovge	eax, edx
	mov	ecx, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR -24[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	add	DWORD PTR -32[rbp], 1
	cmp	DWORD PTR -32[rbp], 2
	jg	.L11
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -32[rbp]
	add	eax, edx
	cmp	DWORD PTR -36[rbp], eax
	jg	.L12
	sub	DWORD PTR -24[rbp], 1
	cmp	DWORD PTR -24[rbp], 0
	jns	.L13
	mov	edi, 6
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	jle	.L14
	mov	rax, QWORD PTR -64[rbp]
	lea	rdx, .LC0[rip]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, 0
	call	strcpy@PLT
	jmp	.L15
	mov	rax, QWORD PTR -56[rbp]
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	jns	.L16
	mov	rax, QWORD PTR -64[rbp]
	lea	rdx, .LC1[rip]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, 0
	call	strcpy@PLT
	jmp	.L15
	mov	rax, QWORD PTR -64[rbp]
	lea	rdx, .LC2[rip]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, 0
	call	strcpy@PLT
	mov	rax, QWORD PTR -64[rbp]
	mov	rsp, rbx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
0:
1:
2:
3:
4: