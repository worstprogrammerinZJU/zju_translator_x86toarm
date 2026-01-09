main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 96
	lea	rax, -96[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	jmp	.L3
	add	DWORD PTR -4[rbp], 1
	lea	rdx, -96[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -96[rbp+rax*4]
	test	eax, eax
	jne	.L4
	mov	DWORD PTR -8[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -96[rbp+rax*4]
	add	eax, eax
	mov	DWORD PTR -20[rbp], eax
	mov	DWORD PTR -12[rbp], 0
	jmp	.L6
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -96[rbp+rax*4]
	cmp	DWORD PTR -20[rbp], eax
	jne	.L7
	add	DWORD PTR -16[rbp], 1
	jmp	.L8
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jl	.L9
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jl	.L10
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -96[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -96[rbp]
	cmp	eax, -1
	jne	.L11
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: