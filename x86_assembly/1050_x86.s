main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -36864[rsp]
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 3168
	mov	DWORD PTR -20[rbp], 0
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	lea	rcx, -40032[rbp]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	sal	rax, 2
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L4
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L5
	mov	DWORD PTR -4[rbp], 0
	jmp	.L6
	mov	DWORD PTR -8[rbp], 0
	jmp	.L7
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L8
	mov	DWORD PTR -16[rbp], 0
	jmp	.L9
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	mov	eax, DWORD PTR -40032[rbp+rax*4]
	add	DWORD PTR -24[rbp], eax
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jle	.L10
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jle	.L11
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -20[rbp], eax
	cmp	DWORD PTR -24[rbp], 0
	jns	.L12
	mov	DWORD PTR -24[rbp], 0
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L13
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, DWORD PTR -4[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L14
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L15
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: