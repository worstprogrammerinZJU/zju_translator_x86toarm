main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], 2992
	jmp	.L2
	mov	DWORD PTR -12[rbp], 0
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L3
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
	jne	.L4
	mov	DWORD PTR -16[rbp], 0
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L5
	mov	ecx, DWORD PTR -8[rbp]
	movsx	rax, ecx
	imul	rax, rax, 715827883
	shr	rax, 32
	sar	eax
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	sal	eax, 2
	sub	ecx, eax
	mov	edx, ecx
	add	DWORD PTR -16[rbp], edx
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 715827883
	shr	rdx, 32
	sar	edx
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -8[rbp], eax
	cmp	DWORD PTR -8[rbp], 0
	jne	.L6
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jne	.L13
	mov	DWORD PTR -16[rbp], 0
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L9
	mov	eax, DWORD PTR -8[rbp]
	cdq
	shr	edx, 28
	add	eax, edx
	and	eax, 15
	sub	eax, edx
	add	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 15[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 4
	mov	DWORD PTR -8[rbp], eax
	cmp	DWORD PTR -8[rbp], 0
	jne	.L10
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jne	.L8
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L8
	nop
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 9999
	jle	.L11
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: