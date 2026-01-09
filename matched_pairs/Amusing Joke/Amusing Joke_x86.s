main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 8
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rax, -112[rbp]
	mov	rdi, rax
	lea	rax, -144[rbp]
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -112[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	lea	rax, -144[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	lea	rdx, -4176[rbp]
	mov	eax, 0
	mov	ecx, 502
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	DWORD PTR [rdx], eax
	add	rdx, 4
	lea	rdx, -8208[rbp]
	mov	eax, 0
	mov	ecx, 502
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	DWORD PTR [rdx], eax
	add	rdx, 4
	mov	BYTE PTR -17[rbp], 1
	lea	rax, -80[rbp]
	mov	rdi, rax
	mov	rbx, rax
	lea	rax, -112[rbp]
	mov	rdi, rax
	add	rbx, rax
	lea	rax, -144[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	sete	al
	test	al, al
	je	.L2
	mov	DWORD PTR -24[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 65
	mov	DWORD PTR -40[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	mov	eax, DWORD PTR -4176[rbp+rax*4]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	mov	DWORD PTR -4176[rbp+rax*4], edx
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	movsx	rbx, eax
	lea	rax, -80[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L4
	mov	DWORD PTR -28[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 65
	mov	DWORD PTR -40[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	mov	eax, DWORD PTR -4176[rbp+rax*4]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	mov	DWORD PTR -4176[rbp+rax*4], edx
	add	DWORD PTR -28[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	movsx	rbx, eax
	lea	rax, -112[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L6
	mov	DWORD PTR -32[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	lea	rax, -144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 65
	mov	DWORD PTR -40[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	mov	eax, DWORD PTR -8208[rbp+rax*4]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	mov	DWORD PTR -8208[rbp+rax*4], edx
	add	DWORD PTR -32[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	movsx	rbx, eax
	lea	rax, -144[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L8
	mov	DWORD PTR -36[rbp], 0
	jmp	.L9
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	mov	edx, DWORD PTR -4176[rbp+rax*4]
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	mov	eax, DWORD PTR -8208[rbp+rax*4]
	cmp	edx, eax
	je	.L10
	mov	BYTE PTR -17[rbp], 0
	jmp	.L11
	add	DWORD PTR -36[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	movsx	rbx, eax
	lea	rax, -144[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L12
	cmp	BYTE PTR -17[rbp], 0
	je	.L13
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L14
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L14
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	lea	rax, -144[rbp]
	mov	rdi, rax
	lea	rax, -112[rbp]
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rdi, rax
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L18
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L18
	lea	rax, _ZStL8__ioinit[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, _ZStL8__ioinit[rip]
	mov	rsi, rax
	mov	rdi, rax
	call	__cxa_atexit@PLT
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	esi, 65535
	mov	edi, 1
	pop	rbp
	ret
0:
1:
2:
3:
4: