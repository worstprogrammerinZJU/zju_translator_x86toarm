p:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 1
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, [rax+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	cmp	ecx, eax
	jnb	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, eax
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	ecx, eax
	jne	.L4
	add	DWORD PTR -4[rbp], 1
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, [rax+rax]
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -12[rbp], edx
	add	ecx, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	DWORD PTR [rdx+rax], ecx
	jmp	.L2
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	ecx, eax
	jne	.L5
	add	DWORD PTR -8[rbp], 1
	jmp	.L2
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, edx
	add	eax, eax
	lea	ecx, [rax+rdx]
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -12[rbp], edx
	add	ecx, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 9999999
	jle	.L6
	jmp	.L7
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L8
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: