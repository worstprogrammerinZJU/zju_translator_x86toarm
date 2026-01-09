main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -5996544[rsp]
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 3488
	lea	rax, -6000032[rbp]
	mov	edx, 4000000
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	BYTE PTR -6000032[rbp], 1
	mov	DWORD PTR -2000020[rbp], 1
	jmp	.L2
	mov	eax, DWORD PTR -2000020[rbp]
	sub	eax, 1
	cdqe
	mov	edx, DWORD PTR -2000016[rbp+rax*4]
	mov	eax, DWORD PTR -2000020[rbp]
	cmp	edx, eax
	jle	.L3
	mov	eax, DWORD PTR -2000020[rbp]
	sub	eax, 1
	cdqe
	mov	eax, DWORD PTR -2000016[rbp+rax*4]
	mov	edx, DWORD PTR -2000020[rbp]
	sub	eax, edx
	cdqe
	movzx	eax, BYTE PTR -6000032[rbp+rax]
	movzx	eax, al
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -2000020[rbp]
	sub	eax, 1
	cdqe
	mov	edx, DWORD PTR -2000016[rbp+rax*4]
	mov	ecx, DWORD PTR -2000020[rbp]
	mov	eax, DWORD PTR -2000020[rbp]
	sub	edx, ecx
	cdqe
	mov	DWORD PTR -2000016[rbp+rax*4], edx
	jmp	.L4
	mov	eax, DWORD PTR -2000020[rbp]
	sub	eax, 1
	cdqe
	mov	ecx, DWORD PTR -2000016[rbp+rax*4]
	mov	edx, DWORD PTR -2000020[rbp]
	mov	eax, DWORD PTR -2000020[rbp]
	add	edx, ecx
	cdqe
	mov	DWORD PTR -2000016[rbp+rax*4], edx
	mov	eax, DWORD PTR -2000020[rbp]
	cdqe
	mov	eax, DWORD PTR -2000016[rbp+rax*4]
	cdqe
	mov	BYTE PTR -6000032[rbp+rax], 1
	mov	eax, DWORD PTR -2000020[rbp]
	add	eax, 1
	mov	DWORD PTR -2000020[rbp], eax
	mov	eax, DWORD PTR -2000020[rbp]
	cmp	eax, 500000
	jle	.L5
	lea	rax, -2000020[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L6
	mov	eax, DWORD PTR -2000020[rbp]
	cdqe
	mov	eax, DWORD PTR -2000016[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -2000020[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -2000020[rbp]
	cmp	eax, -1
	jne	.L7
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: