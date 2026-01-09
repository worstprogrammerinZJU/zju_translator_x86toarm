_ZL3INF:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 216
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	lea	rax, -240[rbp]
	mov	ebx, 4
	mov	r12, rax
	jmp	.L2
	mov	rdi, r12
	add	r12, 32
	sub	rbx, 1
	test	rbx, rbx
	jns	.L3
	mov	DWORD PTR -36[rbp], 0
	jmp	.L4
	lea	rdx, -240[rbp]
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	sal	rax, 5
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	add	DWORD PTR -36[rbp], 1
	cmp	DWORD PTR -36[rbp], 4
	jle	.L5
	mov	DWORD PTR -40[rbp], 0
	jmp	.L6
	lea	rax, -80[rbp]
	mov	esi, 0
	mov	rdi, rax
	movzx	ebx, BYTE PTR [rax]
	lea	rdx, -240[rbp]
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	sal	rax, 5
	add	rax, rdx
	mov	esi, 0
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	bl, al
	sete	al
	test	al, al
	je	.L7
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	esi, 10
	mov	rdi, rax
	mov	r13d, 0
	mov	r12d, 0
	jmp	.L8
	add	DWORD PTR -40[rbp], 1
	cmp	DWORD PTR -40[rbp], 4
	jle	.L9
	mov	DWORD PTR -44[rbp], 0
	jmp	.L10
	lea	rax, -80[rbp]
	mov	esi, 1
	mov	rdi, rax
	movzx	ebx, BYTE PTR [rax]
	lea	rdx, -240[rbp]
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	sal	rax, 5
	add	rax, rdx
	mov	esi, 1
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	bl, al
	sete	al
	test	al, al
	je	.L11
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	esi, 10
	mov	rdi, rax
	mov	r13d, 0
	mov	r12d, 0
	jmp	.L8
	add	DWORD PTR -44[rbp], 1
	cmp	DWORD PTR -44[rbp], 4
	jle	.L12
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	esi, 10
	mov	rdi, rax
	mov	r12d, 1
	lea	rbx, -240[rbp]
	add	rbx, 160
	lea	rax, -240[rbp]
	cmp	rbx, rax
	je	.L13
	sub	rbx, 32
	mov	rdi, rbx
	jmp	.L14
	cmp	r12d, 1
	je	.L15
	mov	ebx, 0
	jmp	.L16
	mov	ebx, 1
	lea	rax, -80[rbp]
	mov	rdi, rax
	cmp	ebx, 1
	jne	.L18
	mov	r13d, 0
	mov	eax, r13d
	add	rsp, 216
	pop	rbx
	pop	r12
	pop	r13
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L21
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L21
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