Parent:
eat:
beeat:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	DWORD PTR -24[rbp], 0
	lea	rdx, -28[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -20[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	DWORD PTR [rdx+rax], -1
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	DWORD PTR [rdx+rax], -1
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	DWORD PTR [rdx+rax], -1
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L3
	mov	DWORD PTR -20[rbp], 0
	jmp	.L4
	lea	rcx, -40[rbp]
	lea	rdx, -36[rbp]
	lea	rax, -44[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -32[rbp]
	cmp	edx, eax
	jg	.L5
	mov	edx, DWORD PTR -40[rbp]
	mov	eax, DWORD PTR -32[rbp]
	cmp	edx, eax
	jg	.L5
	mov	eax, DWORD PTR -44[rbp]
	cmp	eax, 2
	jne	.L6
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -40[rbp]
	cmp	edx, eax
	jne	.L6
	add	DWORD PTR -24[rbp], 1
	jmp	.L7
	mov	eax, DWORD PTR -36[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -40[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L8
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	ebx, DWORD PTR -36[rbp]
	mov	edi, eax
	call	root
	movsx	rdx, ebx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, eat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L9
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	ebx, DWORD PTR -36[rbp]
	mov	edi, eax
	call	root
	movsx	rdx, ebx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, beeat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L10
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	ebx, DWORD PTR -40[rbp]
	mov	edi, eax
	call	root
	movsx	rdx, ebx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, eat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L11
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	ebx, DWORD PTR -40[rbp]
	mov	edi, eax
	call	root
	movsx	rdx, ebx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, beeat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -44[rbp]
	cmp	eax, 1
	jne	.L12
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -40[rbp]
	cmp	edx, eax
	je	.L13
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -36[rbp]
	cmp	edx, eax
	jne	.L14
	add	DWORD PTR -24[rbp], 1
	jmp	.L7
	mov	edx, DWORD PTR -40[rbp]
	mov	eax, DWORD PTR -36[rbp]
	mov	esi, edx
	mov	edi, eax
	call	merge
	jmp	.L7
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -40[rbp]
	cmp	edx, eax
	je	.L16
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -36[rbp]
	cmp	edx, eax
	jne	.L17
	add	DWORD PTR -24[rbp], 1
	jmp	.L7
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L18
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -40[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, eat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L19
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -40[rbp]
	mov	esi, edx
	mov	edi, eax
	call	merge
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L20
	mov	edx, DWORD PTR -40[rbp]
	mov	eax, DWORD PTR -36[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, beeat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L21
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -36[rbp]
	mov	esi, edx
	mov	edi, eax
	call	merge
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L22
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L22
	mov	eax, DWORD PTR -36[rbp]
	mov	edx, DWORD PTR -40[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rcx+rax]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, eat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L7
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L23
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L23
	mov	eax, DWORD PTR -40[rbp]
	mov	edx, DWORD PTR -36[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rcx+rax]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, beeat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L7
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L7
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L7
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rcx+rax]
	mov	esi, edx
	mov	edi, eax
	call	merge
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L24
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
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
	jmp	.L27
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
	jg	.L28
	jmp	.L29
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
	jne	.L30
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
merge:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
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
	jne	.L33
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L34
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
	jge	.L35
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
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L36
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L36
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, eat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L37
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L37
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L37
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rcx+rax]
	mov	esi, edx
	mov	edi, eax
	call	merge
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, eat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L38
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L38
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, beeat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L39
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L39
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L39
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rcx+rax]
	mov	esi, edx
	mov	edi, eax
	call	merge
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, beeat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L34
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
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L40
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L40
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, eat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L41
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L41
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L41
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rcx+rax]
	mov	esi, edx
	mov	edi, eax
	call	merge
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, eat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L42
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L42
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, beeat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L43
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L43
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L43
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rcx+rax]
	mov	esi, edx
	mov	edi, eax
	call	merge
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, beeat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -8[rbp]
	leave
	ret
0:
1:
2:
3:
4: