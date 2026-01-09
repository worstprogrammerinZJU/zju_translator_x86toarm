main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 816
	lea	rdx, -816[rbp]
	mov	eax, 0
	mov	ecx, 100
	mov	rdi, rdx
	rep stosq
	mov	DWORD PTR -816[rbp], 1
	mov	DWORD PTR -812[rbp], 2
	mov	DWORD PTR -808[rbp], 4
	mov	DWORD PTR -804[rbp], 6
	mov	DWORD PTR -4[rbp], 4
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	cdqe
	mov	edx, DWORD PTR -816[rbp+rax*4]
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 3
	cdqe
	mov	eax, DWORD PTR -816[rbp+rax*4]
	add	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 4
	cdqe
	mov	eax, DWORD PTR -816[rbp+rax*4]
	add	edx, eax
	movsx	rax, edx
	imul	rax, rax, 137096213
	shr	rax, 32
	sar	eax, 6
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 2005
	mov	eax, edx
	sub	eax, ecx
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	mov	DWORD PTR -816[rbp+rdx*4], eax
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 199
	jle	.L3
	jmp	.L4
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1374389535
	shr	rdx, 32
	sar	edx, 6
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	imul	ecx, edx, 200
	sub	eax, ecx
	mov	edx, eax
	movsx	rax, edx
	mov	eax, DWORD PTR -816[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L5
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: