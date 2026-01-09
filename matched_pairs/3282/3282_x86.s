str:
left:
right:
n:
l:
m:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rax, m[rip]
	mov	rdx, rax
	lea	rax, l[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR l[rip]
	imul	eax, eax, 100
	mov	DWORD PTR l[rip], eax
	mov	DWORD PTR -28[rbp], 0
	mov	DWORD PTR -32[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	lea	rax, -36[rbp]
	lea	rdx, str[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, .LC3[rip]
	mov	rsi, rax
	lea	rax, str[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L4
	mov	eax, DWORD PTR -28[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -28[rbp], edx
	mov	edx, DWORD PTR -36[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, left[rip]
	mov	DWORD PTR [rcx+rax], edx
	jmp	.L5
	mov	eax, DWORD PTR -32[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -32[rbp], edx
	mov	edx, DWORD PTR -36[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, right[rip]
	mov	DWORD PTR [rcx+rax], edx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L6
	mov	DWORD PTR -20[rbp], 1
	mov	DWORD PTR -24[rbp], 1
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, left[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -12[rbp]
	add	edx, eax
	mov	eax, DWORD PTR l[rip]
	cmp	edx, eax
	jle	.L8
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, left[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L9
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, left[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	DWORD PTR -12[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L10
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L11
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, right[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -12[rbp]
	add	edx, eax
	mov	eax, DWORD PTR l[rip]
	cmp	edx, eax
	jle	.L12
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, right[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L13
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, right[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	DWORD PTR -12[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -32[rbp]
	jl	.L14
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	je	.L15
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	cmp	DWORD PTR -20[rbp], eax
	jne	.L16
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	mov	DWORD PTR -16[rbp], eax
	jmp	.L17
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jle	.L18
	mov	eax, DWORD PTR -24[rbp]
	add	eax, eax
	mov	DWORD PTR -16[rbp], eax
	jmp	.L17
	mov	eax, DWORD PTR -20[rbp]
	add	eax, eax
	sub	eax, 1
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L19
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: