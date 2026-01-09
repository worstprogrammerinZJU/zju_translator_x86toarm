Parent:
sen:
tru:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 104
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	DWORD PTR -20[rbp], 1
	jmp	.L3
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	DWORD PTR [rdx+rax], -1
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	DWORD PTR [rdx+rax], -1
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, tru[rip]
	mov	DWORD PTR [rdx+rax], 1
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -48[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L4
	mov	DWORD PTR -20[rbp], 1
	jmp	.L5
	lea	rsi, -100[rbp]
	lea	rcx, -90[rbp]
	lea	rdx, -52[rbp]
	lea	rax, -80[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -20[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -52[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -52[rbp], eax
	movzx	eax, BYTE PTR -100[rbp]
	cmp	al, 116
	jne	.L6
	mov	edx, DWORD PTR -52[rbp]
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, edx
	mov	edi, eax
	call	merge
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L7
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L7
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -24[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, sen[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L10
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L9
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L9
	mov	edx, DWORD PTR -52[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rcx+rax]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, sen[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L10
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L10
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L10
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rcx+rax]
	mov	esi, edx
	mov	edi, eax
	call	merge
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edi, eax
	call	root
	mov	edx, DWORD PTR -24[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, sen[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	edx, DWORD PTR -52[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rcx+rax]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, sen[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L10
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L11
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -52[rbp]
	mov	esi, edx
	mov	edi, eax
	call	merge
	mov	eax, DWORD PTR -52[rbp]
	mov	edi, eax
	call	root
	mov	edx, DWORD PTR -24[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, sen[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L12
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, edx
	mov	edi, eax
	call	merge
	mov	ebx, DWORD PTR -52[rbp]
	mov	eax, DWORD PTR -24[rbp]
	mov	edi, eax
	call	root
	movsx	rdx, ebx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, sen[rip]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -48[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L13
	mov	DWORD PTR -20[rbp], 1
	jmp	.L14
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	js	.L15
	mov	eax, DWORD PTR -20[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edi, eax
	call	root
	mov	DWORD PTR -40[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, DWORD PTR -40[rbp]
	je	.L34
	mov	DWORD PTR -24[rbp], 1
	mov	DWORD PTR -32[rbp], 0
	mov	DWORD PTR -36[rbp], 0
	jmp	.L18
	mov	eax, DWORD PTR -24[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -44[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jne	.L19
	add	DWORD PTR -32[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	DWORD PTR [rdx+rax], -1
	jmp	.L20
	mov	eax, DWORD PTR -44[rbp]
	cmp	eax, DWORD PTR -40[rbp]
	jne	.L20
	add	DWORD PTR -36[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sen[rip]
	mov	DWORD PTR [rdx+rax], -1
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -48[rbp]
	cmp	DWORD PTR -24[rbp], eax
	jle	.L21
	mov	eax, DWORD PTR -32[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jle	.L22
	mov	eax, DWORD PTR -40[rbp]
	mov	DWORD PTR -28[rbp], eax
	mov	DWORD PTR -24[rbp], 1
	jmp	.L23
	mov	eax, DWORD PTR -24[rbp]
	mov	edi, eax
	call	root
	cmp	DWORD PTR -28[rbp], eax
	jne	.L24
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, tru[rip]
	mov	DWORD PTR [rdx+rax], 0
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -48[rbp]
	cmp	DWORD PTR -24[rbp], eax
	jle	.L25
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -48[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L26
	jmp	.L17
	nop
	mov	eax, DWORD PTR -48[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jg	.L27
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L28
	mov	DWORD PTR -20[rbp], 1
	mov	DWORD PTR -32[rbp], 0
	jmp	.L29
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, tru[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 1
	jne	.L30
	add	DWORD PTR -32[rbp], 1
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -48[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L31
	mov	eax, DWORD PTR -32[rbp]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -48[rbp]
	test	eax, eax
	jne	.L32
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
root:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L36
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jg	.L37
	jmp	.L38
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Parent[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jne	.L39
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
merge:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 8
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	je	.L45
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jge	.L44
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Parent[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L41
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Parent[rip]
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L41
	nop
	leave
	ret
0:
1:
2:
3:
4: