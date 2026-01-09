main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -36864[rsp]
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 3296
	mov	DWORD PTR -4[rbp], 1
	lea	rax, -40160[rbp]
	mov	edx, 40144
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -40160[rbp+rax*4]
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L4
	mov	ecx, DWORD PTR -8[rbp]
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
	add	DWORD PTR -12[rbp], edx
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -8[rbp], eax
	cmp	DWORD PTR -8[rbp], 0
	jne	.L5
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	DWORD PTR -40160[rbp+rax*4], 1
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 9999
	jle	.L6
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: