main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4032
	lea	rax, -4020[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	lea	rax, -4016[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L3
	mov	DWORD PTR -4[rbp], 1
	jmp	.L4
	lea	rdx, -4016[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4020[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L5
	mov	DWORD PTR -4[rbp], 0
	jmp	.L6
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L7
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -4016[rbp+rax*4]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	cmp	edx, eax
	jg	.L21
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L22
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L9
	nop
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -4020[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L12
	jmp	.L11
	nop
	mov	eax, DWORD PTR -4020[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L23
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4020[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L15
	jmp	.L14
	nop
	mov	eax, DWORD PTR -4020[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jge	.L16
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L17
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -4016[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4016[rbp]
	test	eax, eax
	jne	.L18
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -4020[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4020[rbp]
	test	eax, eax
	jne	.L19
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: