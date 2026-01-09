main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -36864[rsp]
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 3152
	lea	rax, -40000[rbp]
	mov	edx, 40000
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -40000[rbp], 1
	mov	DWORD PTR -40004[rbp], 1
	jmp	.L2
	mov	eax, DWORD PTR -40004[rbp]
	sub	eax, 1
	cdqe
	mov	ecx, DWORD PTR -40000[rbp+rax*4]
	mov	edx, DWORD PTR -40004[rbp]
	mov	eax, DWORD PTR -40004[rbp]
	imul	edx, ecx
	cdqe
	mov	DWORD PTR -40000[rbp+rax*4], edx
	jmp	.L3
	mov	eax, DWORD PTR -40004[rbp]
	cdqe
	mov	eax, DWORD PTR -40000[rbp+rax*4]
	mov	ecx, DWORD PTR -40004[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	sub	edx, eax
	movsx	rax, ecx
	mov	DWORD PTR -40000[rbp+rax*4], edx
	mov	eax, DWORD PTR -40004[rbp]
	cdqe
	mov	ecx, DWORD PTR -40000[rbp+rax*4]
	movsx	rax, ecx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	test	edx, edx
	je	.L4
	mov	eax, DWORD PTR -40004[rbp]
	cdqe
	mov	edx, DWORD PTR -40000[rbp+rax*4]
	mov	ecx, DWORD PTR -40004[rbp]
	movsx	rax, edx
	imul	rax, rax, 351843721
	shr	rax, 32
	sar	eax, 13
	mov	esi, edx
	sar	esi, 31
	sub	eax, esi
	imul	esi, eax, 100000
	mov	eax, edx
	sub	eax, esi
	movsx	rdx, ecx
	mov	DWORD PTR -40000[rbp+rdx*4], eax
	mov	eax, DWORD PTR -40004[rbp]
	add	eax, 1
	mov	DWORD PTR -40004[rbp], eax
	mov	eax, DWORD PTR -40004[rbp]
	cmp	eax, 9999
	jle	.L5
	jmp	.L6
	mov	eax, DWORD PTR -40004[rbp]
	cdqe
	mov	ecx, DWORD PTR -40000[rbp+rax*4]
	movsx	rax, ecx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	mov	eax, DWORD PTR -40004[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -40004[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
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