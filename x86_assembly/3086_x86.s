num:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -8[rbp], 3
	mov	DWORD PTR -4[rbp], 2
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	add	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	imul	eax, DWORD PTR -4[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 300
	jle	.L3
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L4
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L5
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: