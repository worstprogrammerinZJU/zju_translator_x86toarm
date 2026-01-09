peanut:
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	QWORD PTR -12[rbp], rdx
	mov	eax, DWORD PTR 8[rax]
	mov	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	QWORD PTR -24[rbp], rdx
	mov	eax, DWORD PTR 8[rax]
	mov	DWORD PTR -16[rbp], eax
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jge	.L2
	mov	eax, 1
	jmp	.L5
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jle	.L4
	mov	eax, -1
	jmp	.L5
	mov	eax, 0
	pop	rbp
	ret
fab:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L7
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, DWORD PTR -8[rbp]
	jmp	.L8
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	lea	rax, -56[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -20[rbp], 0
	jmp	.L10
	lea	rcx, -60[rbp]
	lea	rdx, -44[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -32[rbp], 0
	mov	DWORD PTR -24[rbp], 1
	jmp	.L11
	mov	DWORD PTR -28[rbp], 1
	jmp	.L12
	lea	rax, -52[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -52[rbp]
	test	eax, eax
	je	.L13
	mov	edx, DWORD PTR -52[rbp]
	mov	eax, DWORD PTR -32[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 2
	mov	rcx, rax
	lea	rax, peanut[rip]
	mov	DWORD PTR [rcx+rax], edx
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rcx, rax
	lea	rdx, peanut[rip+4]
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rcx, rax
	lea	rdx, peanut[rip+8]
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -32[rbp], 1
	add	DWORD PTR -28[rbp], 1
	mov	eax, DWORD PTR -44[rbp]
	cmp	DWORD PTR -28[rbp], eax
	jle	.L14
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -48[rbp]
	cmp	DWORD PTR -24[rbp], eax
	jle	.L15
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 12
	mov	rsi, rax
	lea	rax, peanut[rip]
	mov	rdi, rax
	call	qsort@PLT
	mov	DWORD PTR -52[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -28[rbp], 0
	mov	DWORD PTR -36[rbp], 0
	mov	eax, DWORD PTR peanut[rip+8]
	mov	DWORD PTR -40[rbp], eax
	jmp	.L16
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, peanut[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -36[rbp]
	mov	esi, edx
	mov	edi, eax
	call	fab
	mov	ebx, eax
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, peanut[rip+8]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -40[rbp]
	mov	esi, edx
	mov	edi, eax
	call	fab
	add	eax, ebx
	add	eax, 1
	add	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, peanut[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, peanut[rip+8]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -40[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, peanut[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -52[rbp]
	add	eax, edx
	mov	DWORD PTR -52[rbp], eax
	add	DWORD PTR -28[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, peanut[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -36[rbp]
	mov	esi, edx
	mov	edi, eax
	call	fab
	mov	edx, DWORD PTR -24[rbp]
	lea	ebx, [rax+rdx]
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, peanut[rip+8]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -40[rbp]
	mov	esi, edx
	mov	edi, eax
	call	fab
	lea	ecx, [rbx+rax]
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, peanut[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	lea	edx, [rcx+rax]
	mov	eax, DWORD PTR -60[rbp]
	cmp	edx, eax
	jl	.L17
	mov	eax, DWORD PTR -52[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -56[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L18
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
0:
1:
2:
3:
4: