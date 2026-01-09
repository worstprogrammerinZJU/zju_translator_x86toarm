stack:
top:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	DWORD PTR top[rip], 0
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	jmp	.L3
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -12[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR top[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR top[rip], edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, stack[rip]
	mov	DWORD PTR [rdx+rax], 1
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L5
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR top[rip]
	sub	eax, 1
	mov	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -28[rbp], 1
	jmp	.L6
	sub	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	mov	DWORD PTR -28[rbp], eax
	cmp	DWORD PTR -12[rbp], 0
	js	.L7
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, stack[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	je	.L8
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, stack[rip]
	mov	DWORD PTR [rdx+rax], 0
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L9
	mov	edi, 10
	call	putchar@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L10
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: