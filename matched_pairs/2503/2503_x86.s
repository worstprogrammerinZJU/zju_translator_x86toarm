link:
word:
dialect:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	mov	DWORD PTR -8[rbp], 0
	lea	rax, -80[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	ecx, BYTE PTR -80[rbp+rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, [rax+rsi]
	lea	rax, word[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], cl
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -80[rbp+rax]
	cmp	al, 32
	jne	.L4
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	movsx	rcx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, [rax+rcx]
	lea	rax, word[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, -80[rbp]
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, dialect[rip]
	add	rax, rdx
	mov	rsi, rcx
	mov	rdi, rax
	call	strcpy@PLT
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, dialect[rip]
	add	rax, rdx
	mov	rdi, rax
	call	ELFhash
	mov	DWORD PTR -20[rbp], eax
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, link[rip]
	mov	rdx, QWORD PTR [rdx+rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	lea	rdx, link[rip]
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR [rcx+rdx], rax
	add	DWORD PTR -8[rbp], 1
	lea	rax, -80[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	lea	rax, -80[rbp]
	lea	rdx, .LC0[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L5
	jmp	.L6
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	ELFhash
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, link[rip]
	mov	rax, QWORD PTR [rdx+rax]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L7
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, dialect[rip]
	add	rdx, rax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	je	.L14
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	jne	.L10
	jmp	.L9
	nop
	cmp	QWORD PTR -16[rbp], 0
	jne	.L11
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L6
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, word[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -80[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	test	eax, eax
	jne	.L12
	mov	eax, 0
	leave
	ret
ELFhash:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -8[rbp], 0
	jmp	.L16
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 4
	mov	rcx, rax
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -24[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	movsx	rax, al
	add	rax, rcx
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	and	eax, 4026531840
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L17
	mov	rax, QWORD PTR -16[rbp]
	shr	rax, 24
	xor	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	not	rax
	and	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L18
	mov	rcx, QWORD PTR -8[rbp]
	movabs	rdx, 7326112738247377071
	mov	rax, rcx
	mul	rdx
	mov	rax, rdx
	shr	rax, 13
	imul	rdx, rax, 20627
	mov	rax, rcx
	sub	rax, rdx
	pop	rbp
	ret
0:
1:
2:
3:
4: