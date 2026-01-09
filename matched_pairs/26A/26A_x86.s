main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 2752
	mov	DWORD PTR -4[rbp], 0
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rdx, -3024[rbp]
	mov	eax, 0
	mov	ecx, 375
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	BYTE PTR [rdx], al
	add	rdx, 1
	lea	rax, -15040[rbp]
	mov	edx, 12004
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -8[rbp], 2
	jmp	.L2
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -3024[rbp+rax]
	xor	eax, 1
	test	al, al
	je	.L3
	mov	eax, DWORD PTR -8[rbp]
	add	eax, eax
	mov	DWORD PTR -12[rbp], eax
	jmp	.L4
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	BYTE PTR -3024[rbp+rax], 1
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -15040[rbp+rax*4]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	DWORD PTR -15040[rbp+rax*4], edx
	mov	eax, DWORD PTR -8[rbp]
	add	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L5
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -15040[rbp+rax*4]
	cmp	eax, 2
	jne	.L6
	add	DWORD PTR -4[rbp], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L7
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: