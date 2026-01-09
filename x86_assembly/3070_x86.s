f:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR f[rip], 0
	mov	DWORD PTR f[rip+4], 1
	mov	QWORD PTR -8[rbp], 2
	jmp	.L2
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, 1
	lea	rdx, 0[0+rax*4]
	lea	rax, f[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, 2
	lea	rdx, 0[0+rax*4]
	lea	rax, f[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	edx, [rcx+rax]
	movsx	rax, edx
	imul	rax, rax, 1759218605
	shr	rax, 32
	sar	eax, 12
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 10000
	mov	eax, edx
	sub	eax, ecx
	mov	rdx, QWORD PTR -8[rbp]
	lea	rcx, 0[0+rdx*4]
	lea	rdx, f[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	QWORD PTR -16[rbp], 0
	jmp	.L3
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 0[0+rax*4]
	lea	rax, f[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, 1
	lea	rcx, 0[0+rax*4]
	lea	rax, f[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jne	.L4
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*4]
	lea	rax, f[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, 1
	lea	rcx, 0[0+rax*4]
	lea	rax, f[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jne	.L4
	mov	DWORD PTR -20[rbp], 1
	jmp	.L5
	add	QWORD PTR -16[rbp], 1
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, 1
	cmp	QWORD PTR -16[rbp], rax
	jl	.L6
	cmp	DWORD PTR -20[rbp], 0
	jne	.L13
	add	QWORD PTR -8[rbp], 1
	cmp	QWORD PTR -8[rbp], 100000
	jle	.L9
	jmp	.L10
	nop
	jmp	.L10
	mov	rcx, QWORD PTR -32[rbp]
	movabs	rdx, 5037190915060954895
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	sar	rax, 12
	mov	rdx, rcx
	sar	rdx, 63
	sub	rax, rdx
	imul	rdx, rax, 15000
	mov	rax, rcx
	sub	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, f[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	rax, QWORD PTR -32[rbp]
	cmp	rax, -1
	jne	.L11
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: