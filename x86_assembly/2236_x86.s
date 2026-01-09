Parent:
x:
y:
flag:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	lea	rdx, -32[rbp]
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -20[rbp], 1
	jmp	.L2
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	DWORD PTR [rdx+rax], -1
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, flag[rip]
	mov	BYTE PTR [rax+rdx], 0
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, y[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, x[rip]
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L3
	jmp	.L4
	movzx	eax, BYTE PTR -46[rbp]
	cmp	al, 79
	jne	.L5
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rdx, flag[rip]
	mov	BYTE PTR [rax+rdx], 1
	mov	DWORD PTR -20[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, flag[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	cmp	eax, 1
	jne	.L7
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, x[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -28[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, x[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	mov	esi, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, x[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -28[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, x[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	imul	esi, eax
	mov	edi, esi
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, y[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -28[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, y[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	mov	esi, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, y[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -28[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, y[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	imul	eax, esi
	lea	ecx, [rdi+rax]
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -32[rbp]
	imul	eax, edx
	cmp	ecx, eax
	jg	.L7
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z5mergeii
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L8
	jmp	.L4
	lea	rdx, -28[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -24[rbp]
	mov	edi, eax
	call	_Z4rooti
	mov	ebx, eax
	mov	eax, DWORD PTR -28[rbp]
	mov	edi, eax
	call	_Z4rooti
	cmp	ebx, eax
	sete	al
	test	al, al
	je	.L9
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L4
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -46[rbp]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	setne	al
	test	al, al
	jne	.L10
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
_Z4rooti:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L13
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jg	.L14
	jmp	.L15
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Parent[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jne	.L16
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
_Z5mergeii:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 8
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	_Z4rooti
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	edi, eax
	call	_Z4rooti
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	je	.L22
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jge	.L21
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Parent[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L18
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Parent[rip]
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L18
	nop
	leave
	ret
0:
1:
2:
3:
4: