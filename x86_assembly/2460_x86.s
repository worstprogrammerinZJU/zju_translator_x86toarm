x:
y:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, y[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, x[rip]
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L4
	mov	eax, DWORD PTR -24[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, x[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, y[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -20[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, x[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -16[rbp], eax
	jge	.L6
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, y[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L7
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, x[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -16[rbp], eax
	jle	.L8
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, y[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L8
	add	DWORD PTR -8[rbp], 1
	jmp	.L9
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, x[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -16[rbp], eax
	jge	.L10
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, y[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -20[rbp], eax
	jg	.L11
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, x[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -16[rbp], eax
	jle	.L9
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, y[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -20[rbp], eax
	jge	.L9
	add	DWORD PTR -12[rbp], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L12
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -24[rbp]
	test	eax, eax
	jne	.L13
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: