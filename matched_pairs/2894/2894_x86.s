t:
n:
count:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, t[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, 8000
	mov	esi, 0
	lea	rax, count[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	lea	rcx, -20[rbp]
	lea	rdx, -16[rbp]
	lea	rax, -21[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L4
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, count[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, count[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L5
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L6
	mov	DWORD PTR -8[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, count[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	je	.L8
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, count[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, 64
	mov	edi, eax
	call	putchar@PLT
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 1000
	jle	.L9
	mov	edi, 10
	call	putchar@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR t[rip]
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