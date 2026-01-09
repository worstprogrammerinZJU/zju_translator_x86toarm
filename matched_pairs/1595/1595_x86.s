main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 704
	lea	rdx, -688[rbp]
	mov	eax, 0
	mov	ecx, 84
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	DWORD PTR [rdx], eax
	add	rdx, 4
	mov	DWORD PTR -688[rbp], 1
	mov	DWORD PTR -684[rbp], 2
	mov	DWORD PTR -680[rbp], 3
	mov	DWORD PTR -4[rbp], 5
	mov	DWORD PTR -12[rbp], 3
	jmp	.L2
	mov	DWORD PTR -8[rbp], 2
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	ecx, DWORD PTR -688[rbp+rax*4]
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	je	.L23
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -688[rbp+rax*4]
	add	eax, eax
	cmp	DWORD PTR -4[rbp], eax
	jg	.L6
	jmp	.L5
	nop
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -688[rbp+rax*4]
	add	eax, eax
	cmp	DWORD PTR -4[rbp], eax
	jge	.L7
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -12[rbp], edx
	cdqe
	mov	edx, DWORD PTR -4[rbp]
	mov	DWORD PTR -688[rbp+rax*4], edx
	add	DWORD PTR -4[rbp], 2
	cmp	DWORD PTR -4[rbp], 999
	jle	.L8
	jmp	.L9
	mov	edx, DWORD PTR -696[rbp]
	mov	eax, DWORD PTR -692[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -4[rbp], 0
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L10
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	cdqe
	mov	edx, DWORD PTR -688[rbp+rax*4]
	mov	eax, DWORD PTR -692[rbp]
	cmp	edx, eax
	jle	.L11
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L10
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	cdqe
	mov	edx, DWORD PTR -688[rbp+rax*4]
	mov	eax, DWORD PTR -692[rbp]
	cmp	edx, eax
	jge	.L12
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	add	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L10
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -4[rbp], eax
	jmp	.L13
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L14
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	edx, DWORD PTR -688[rbp+rax*4]
	mov	eax, DWORD PTR -692[rbp]
	cmp	edx, eax
	jle	.L15
	sub	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -696[rbp]
	lea	edx, [rax+rax]
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	mov	ecx, eax
	sar	ecx, 31
	shr	ecx, 31
	add	eax, ecx
	and	eax, 1
	sub	eax, ecx
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -696[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	mov	edx, DWORD PTR -696[rbp]
	sub	eax, edx
	cmp	eax, -1
	jl	.L16
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	mov	edx, DWORD PTR -696[rbp]
	sub	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	jmp	.L17
	mov	eax, 0
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L18
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -688[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	edx, DWORD PTR -696[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	cmp	DWORD PTR -4[rbp], eax
	jge	.L19
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	edx, DWORD PTR -688[rbp+rax*4]
	mov	eax, DWORD PTR -692[rbp]
	cmp	edx, eax
	jle	.L20
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rdx, -696[rbp]
	lea	rax, -692[rbp]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L21
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: