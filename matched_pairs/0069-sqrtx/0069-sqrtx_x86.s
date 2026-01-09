mySqrt:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -4[rbp], 0
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L2
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	cdqe
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	imul	rax, rax
	mov	rdx, rax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	cmp	rdx, rax
	jne	.L3
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L4
	mov	rax, QWORD PTR -16[rbp]
	imul	rax, rax
	mov	rdx, rax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	cmp	rdx, rax
	jle	.L5
	mov	rax, QWORD PTR -16[rbp]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L2
	mov	rax, QWORD PTR -16[rbp]
	add	eax, 1
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L6
	mov	eax, DWORD PTR -8[rbp]
	pop	rbp
	ret
0:
1:
2:
3:
4: