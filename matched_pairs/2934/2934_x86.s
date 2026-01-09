n:
word:
query:
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, word[rip]
	add	rax, rdx
	lea	rdx, query[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L3
	lea	rax, query[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 1
	jmp	.L4
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L5
	mov	eax, 0
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, word[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L8
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L9
	lea	rax, query[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, 0
	call	cmp
	cmp	eax, 1
	je	.L35
	lea	rax, query[rip]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -24[rbp], eax
	mov	DWORD PTR -8[rbp], 0
	jmp	.L12
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, word[rip]
	add	rax, rdx
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, DWORD PTR -24[rbp]
	cmp	eax, 1
	jg	.L36
	mov	eax, DWORD PTR -24[rbp]
	sub	eax, DWORD PTR -28[rbp]
	cmp	eax, 1
	jg	.L36
	mov	DWORD PTR -12[rbp], 0
	jmp	.L16
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, word[rip]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, query[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	je	.L17
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jne	.L18
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, word[rip]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	cdqe
	lea	rcx, query[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	jne	.L19
	add	DWORD PTR -12[rbp], 1
	jmp	.L21
	mov	eax, DWORD PTR -12[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, word[rip]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	cdqe
	lea	rcx, query[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	jne	.L21
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, word[rip]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, query[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	jne	.L21
	add	DWORD PTR -12[rbp], 2
	jmp	.L21
	mov	eax, DWORD PTR -12[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, word[rip]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, query[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	jne	.L37
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L24
	jmp	.L23
	nop
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jne	.L15
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, word[rip]
	add	rax, rdx
	mov	rdx, rax
	lea	rax, query[rip]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L25
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	cmp	DWORD PTR -24[rbp], eax
	jne	.L26
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	mov	DWORD PTR -20[rbp], eax
	jmp	.L28
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -20[rbp], eax
	jmp	.L28
	mov	eax, DWORD PTR -16[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, word[rip]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rcx, query[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	jne	.L38
	add	DWORD PTR -16[rbp], 1
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L31
	jmp	.L30
	nop
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jne	.L15
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, word[rip]
	add	rax, rdx
	mov	rdx, rax
	lea	rax, query[rip]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L25
	nop
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L32
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jne	.L11
	lea	rax, query[rip]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L11
	nop
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L33
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: