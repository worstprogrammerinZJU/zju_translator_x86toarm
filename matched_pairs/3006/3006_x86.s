f:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -4[rbp], 2
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, f[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	cmp	eax, 1
	je	.L14
	mov	eax, DWORD PTR -4[rbp]
	imul	eax, eax
	mov	DWORD PTR -8[rbp], eax
	jmp	.L5
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, f[rip]
	mov	BYTE PTR [rax+rdx], 1
	mov	eax, DWORD PTR -4[rbp]
	add	DWORD PTR -8[rbp], eax
	cmp	DWORD PTR -8[rbp], 999999
	jle	.L6
	jmp	.L4
	nop
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 1000
	jle	.L7
	lea	rcx, -20[rbp]
	lea	rdx, -16[rbp]
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L8
	mov	DWORD PTR -4[rbp], 0
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L9
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, f[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	test	eax, eax
	jne	.L10
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	add	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L11
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, edx
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rcx, -20[rbp]
	lea	rdx, -16[rbp]
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -12[rbp]
	test	eax, eax
	jne	.L12
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	jne	.L12
	mov	eax, DWORD PTR -20[rbp]
	test	eax, eax
	jne	.L12
	mov	eax, 0
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L17
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L17
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