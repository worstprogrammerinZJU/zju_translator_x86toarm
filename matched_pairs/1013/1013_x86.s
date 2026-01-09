coin:
balance:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 65
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, coin[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	DWORD PTR -4[rbp], eax
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L3
	mov	DWORD PTR -12[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 65
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, coin[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	DWORD PTR -8[rbp], eax
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L5
	mov	rax, QWORD PTR -40[rbp]
	lea	rdx, .LC0[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L6
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jne	.L6
	mov	eax, 1
	jmp	.L7
	mov	rax, QWORD PTR -40[rbp]
	lea	rdx, .LC1[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L8
	mov	eax, 1
	jmp	.L7
	mov	rax, QWORD PTR -40[rbp]
	lea	rdx, .LC2[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L9
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jge	.L9
	mov	eax, 1
	jmp	.L7
	mov	eax, 0
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	add	rsp, -128
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L11
	mov	DWORD PTR -8[rbp], 0
	jmp	.L12
	lea	rcx, -128[rbp]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rcx, rax
	lea	rsi, -96[rbp]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, [rsi+rax]
	lea	rdi, -64[rbp]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	rax, rsi
	sal	rax, 2
	add	rax, rsi
	add	rax, rax
	add	rax, rdi
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 2
	jle	.L13
	mov	DWORD PTR -8[rbp], -1
	jmp	.L14
	mov	DWORD PTR -12[rbp], 0
	jmp	.L15
	mov	edx, 48
	mov	esi, 0
	lea	rax, coin[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, coin[rip]
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	DWORD PTR -16[rbp], 0
	jmp	.L16
	lea	rcx, -128[rbp]
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, [rcx+rax]
	lea	rsi, -96[rbp]
	mov	eax, DWORD PTR -16[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	add	rax, rax
	lea	rcx, [rsi+rax]
	lea	rdi, -64[rbp]
	mov	eax, DWORD PTR -16[rbp]
	movsx	rsi, eax
	mov	rax, rsi
	sal	rax, 2
	add	rax, rsi
	add	rax, rax
	add	rax, rdi
	mov	rsi, rcx
	mov	rdi, rax
	call	balance
	test	eax, eax
	je	.L30
	add	DWORD PTR -16[rbp], 1
	cmp	DWORD PTR -16[rbp], 2
	jle	.L19
	jmp	.L18
	nop
	cmp	DWORD PTR -16[rbp], 3
	je	.L31
	add	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -12[rbp], 11
	jle	.L22
	jmp	.L21
	nop
	cmp	DWORD PTR -12[rbp], 11
	jle	.L32
	add	DWORD PTR -8[rbp], 2
	cmp	DWORD PTR -8[rbp], 1
	jle	.L25
	jmp	.L24
	nop
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 65
	mov	esi, eax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	cmp	DWORD PTR -8[rbp], -1
	jne	.L26
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L27
	lea	rax, .LC7[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L28
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: