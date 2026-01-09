words:
wordt:
c:
m:
n:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 416
	jmp	.L2
	mov	DWORD PTR m[rip], 1
	mov	eax, DWORD PTR m[rip]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, words[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L3
	mov	eax, DWORD PTR m[rip]
	add	eax, 1
	mov	DWORD PTR m[rip], eax
	mov	eax, DWORD PTR m[rip]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, words[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR m[rip]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, words[rip]
	add	rax, rdx
	lea	rdx, .LC1[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L4
	mov	DWORD PTR n[rip], 0
	mov	eax, DWORD PTR n[rip]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, wordt[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L5
	mov	eax, DWORD PTR n[rip]
	add	eax, 1
	mov	DWORD PTR n[rip], eax
	mov	eax, DWORD PTR n[rip]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, wordt[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, wordt[rip]
	add	rax, rdx
	lea	rdx, .LC1[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L6
	mov	eax, 0
	call	LCS
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L7
	mov	eax, DWORD PTR m[rip]
	mov	edx, DWORD PTR n[rip]
	movsx	rcx, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rsi, 0[0+rax*4]
	add	rax, rsi
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, c[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR m[rip]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR n[rip]
	movsx	rsi, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdi, 0[0+rax*4]
	add	rax, rdi
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, c[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	ecx, eax
	jne	.L8
	mov	eax, DWORD PTR m[rip]
	sub	eax, 1
	mov	DWORD PTR m[rip], eax
	jmp	.L7
	mov	eax, DWORD PTR m[rip]
	mov	edx, DWORD PTR n[rip]
	movsx	rcx, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rsi, 0[0+rax*4]
	add	rax, rsi
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, c[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR m[rip]
	mov	edx, DWORD PTR n[rip]
	sub	edx, 1
	movsx	rsi, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdi, 0[0+rax*4]
	add	rax, rdi
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, c[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	ecx, eax
	jne	.L9
	mov	eax, DWORD PTR n[rip]
	sub	eax, 1
	mov	DWORD PTR n[rip], eax
	jmp	.L7
	mov	eax, DWORD PTR m[rip]
	sub	eax, 1
	mov	DWORD PTR m[rip], eax
	mov	eax, DWORD PTR n[rip]
	sub	eax, 1
	mov	DWORD PTR n[rip], eax
	sub	DWORD PTR -4[rbp], 1
	mov	edx, DWORD PTR m[rip]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	DWORD PTR -416[rbp+rax*4], edx
	mov	eax, DWORD PTR m[rip]
	mov	edx, DWORD PTR n[rip]
	movsx	rcx, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rsi, 0[0+rax*4]
	add	rax, rsi
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, c[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jne	.L10
	mov	DWORD PTR -4[rbp], 0
	jmp	.L11
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -416[rbp+rax*4]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, words[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L12
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, words[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L13
	mov	eax, 0
	leave
	ret
LCS:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	edx, 40804
	mov	esi, 0
	lea	rax, c[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L16
	mov	DWORD PTR -8[rbp], 1
	jmp	.L17
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, wordt[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 4
	sub	rax, rcx
	add	rax, rax
	lea	rcx, words[rip]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L18
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rsi, 0[0+rax*4]
	add	rax, rsi
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, c[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdi, 0[0+rax*4]
	add	rax, rdi
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, c[rip]
	mov	DWORD PTR [rdx+rax], ecx
	jmp	.L19
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rsi, 0[0+rax*4]
	add	rax, rsi
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, c[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdi, 0[0+rax*4]
	add	rax, rdi
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, c[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdi, 0[0+rax*4]
	add	rax, rdi
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, c[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L20
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L21
	mov	eax, DWORD PTR m[rip]
	mov	edx, DWORD PTR n[rip]
	movsx	rcx, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rsi, 0[0+rax*4]
	add	rax, rsi
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, c[rip]
	mov	eax, DWORD PTR [rdx+rax]
	leave
	ret
0:
1:
2:
3:
4: