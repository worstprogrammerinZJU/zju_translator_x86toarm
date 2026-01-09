jc:
g:
f:
zuhe:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, jc[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, jc[rip]
	mov	esi, DWORD PTR [rcx+rdx]
	cdq
	idiv	esi
	mov	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, jc[rip]
	mov	edi, DWORD PTR [rdx+rax]
	mov	eax, ecx
	cdq
	idiv	edi
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	DWORD PTR -20[rbp], 3
	jmp	.L4
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, g[rip]
	mov	DWORD PTR [rdx+rax], 0
	mov	DWORD PTR -24[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, g[rip]
	mov	ebx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -24[rbp]
	mov	edx, DWORD PTR -20[rbp]
	mov	esi, edx
	mov	edi, eax
	call	zuhe
	imul	ebx, eax
	mov	ecx, ebx
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, g[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, g[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jg	.L6
	add	DWORD PTR -20[rbp], 1
	cmp	DWORD PTR -20[rbp], 11
	jle	.L7
	mov	DWORD PTR -20[rbp], 1
	jmp	.L8
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, f[rip]
	mov	DWORD PTR [rdx+rax], 0
	mov	DWORD PTR -24[rbp], 1
	jmp	.L9
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, g[rip]
	mov	ebx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -24[rbp]
	mov	edx, DWORD PTR -20[rbp]
	mov	esi, edx
	mov	edi, eax
	call	zuhe
	imul	ebx, eax
	mov	ecx, ebx
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, f[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, f[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jge	.L10
	add	DWORD PTR -20[rbp], 1
	cmp	DWORD PTR -20[rbp], 11
	jle	.L11
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -20[rbp], 1
	jmp	.L12
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, f[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L13
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
0:
1:
2:
3:
4: