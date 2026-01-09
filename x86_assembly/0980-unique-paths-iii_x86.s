OBSTACLE:
EMPTY:
START:
END:
uniquePathsIII:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	mov	QWORD PTR -56[rbp], rdi
	mov	DWORD PTR -60[rbp], esi
	mov	QWORD PTR -72[rbp], rdx
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	mov	eax, DWORD PTR -60[rbp]
	mov	DWORD PTR -36[rbp], eax
	mov	rax, QWORD PTR -72[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -40[rbp], eax
	mov	DWORD PTR -28[rbp], 0
	jmp	.L2
	mov	DWORD PTR -32[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -44[rbp], eax
	mov	eax, -1
	cmp	DWORD PTR -44[rbp], eax
	je	.L4
	add	DWORD PTR -20[rbp], 1
	mov	eax, 1
	cmp	DWORD PTR -44[rbp], eax
	jne	.L5
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L6
	mov	eax, 2
	cmp	DWORD PTR -44[rbp], eax
	jne	.L6
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	mov	DWORD PTR -16[rbp], eax
	jmp	.L6
	mov	eax, DWORD PTR -28[rbp]
	imul	eax, DWORD PTR -40[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -32[rbp]
	add	eax, edx
	mov	edx, 1
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	or	DWORD PTR -24[rbp], eax
	add	DWORD PTR -32[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	eax, DWORD PTR -40[rbp]
	jl	.L7
	add	DWORD PTR -28[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L8
	mov	r9d, DWORD PTR -20[rbp]
	mov	r8d, DWORD PTR -24[rbp]
	mov	ecx, DWORD PTR -16[rbp]
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, DWORD PTR -40[rbp]
	mov	eax, DWORD PTR -36[rbp]
	mov	edi, DWORD PTR -8[rbp]
	push	rdi
	mov	edi, DWORD PTR -4[rbp]
	push	rdi
	mov	edi, eax
	mov	eax, 0
	call	solve
	add	rsp, 16
	leave
	ret
solve:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -28[rbp], edx
	mov	DWORD PTR -32[rbp], ecx
	mov	DWORD PTR -36[rbp], r8d
	mov	DWORD PTR -40[rbp], r9d
	sub	DWORD PTR -40[rbp], 1
	mov	eax, DWORD PTR 16[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jne	.L11
	mov	eax, DWORD PTR 24[rbp]
	cmp	eax, DWORD PTR -32[rbp]
	jne	.L11
	cmp	DWORD PTR -40[rbp], 0
	sete	al
	movzx	eax, al
	jmp	.L12
	mov	eax, DWORD PTR 16[rbp]
	imul	eax, DWORD PTR -24[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR 24[rbp]
	add	eax, edx
	mov	edx, 1
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	or	DWORD PTR -36[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	cmp	DWORD PTR 16[rbp], 0
	jle	.L13
	mov	eax, DWORD PTR 16[rbp]
	sub	eax, 1
	imul	eax, DWORD PTR -24[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR 24[rbp]
	add	eax, edx
	mov	edx, DWORD PTR -36[rbp]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	test	eax, eax
	jne	.L13
	mov	eax, DWORD PTR 16[rbp]
	lea	r8d, -1[rax]
	mov	r9d, DWORD PTR -40[rbp]
	mov	r10d, DWORD PTR -36[rbp]
	mov	ecx, DWORD PTR -32[rbp]
	mov	edx, DWORD PTR -28[rbp]
	mov	esi, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	edi, DWORD PTR 24[rbp]
	push	rdi
	push	r8
	mov	r8d, r10d
	mov	edi, eax
	call	solve
	add	rsp, 16
	add	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR 16[rbp]
	add	eax, 1
	cmp	DWORD PTR -20[rbp], eax
	jle	.L14
	mov	eax, DWORD PTR 16[rbp]
	add	eax, 1
	imul	eax, DWORD PTR -24[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR 24[rbp]
	add	eax, edx
	mov	edx, DWORD PTR -36[rbp]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	test	eax, eax
	jne	.L14
	mov	eax, DWORD PTR 16[rbp]
	lea	r8d, 1[rax]
	mov	r9d, DWORD PTR -40[rbp]
	mov	r10d, DWORD PTR -36[rbp]
	mov	ecx, DWORD PTR -32[rbp]
	mov	edx, DWORD PTR -28[rbp]
	mov	esi, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	edi, DWORD PTR 24[rbp]
	push	rdi
	push	r8
	mov	r8d, r10d
	mov	edi, eax
	call	solve
	add	rsp, 16
	add	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR 24[rbp], 0
	jle	.L15
	mov	eax, DWORD PTR 16[rbp]
	imul	eax, DWORD PTR -24[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR 24[rbp]
	add	eax, edx
	sub	eax, 1
	mov	edx, DWORD PTR -36[rbp]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	test	eax, eax
	jne	.L15
	mov	eax, DWORD PTR 24[rbp]
	lea	edi, -1[rax]
	mov	r9d, DWORD PTR -40[rbp]
	mov	r8d, DWORD PTR -36[rbp]
	mov	ecx, DWORD PTR -32[rbp]
	mov	edx, DWORD PTR -28[rbp]
	mov	esi, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -20[rbp]
	push	rdi
	mov	edi, DWORD PTR 16[rbp]
	push	rdi
	mov	edi, eax
	call	solve
	add	rsp, 16
	add	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR 24[rbp]
	add	eax, 1
	cmp	DWORD PTR -24[rbp], eax
	jle	.L16
	mov	eax, DWORD PTR 16[rbp]
	imul	eax, DWORD PTR -24[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR 24[rbp]
	add	eax, edx
	add	eax, 1
	mov	edx, DWORD PTR -36[rbp]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	test	eax, eax
	jne	.L16
	mov	eax, DWORD PTR 24[rbp]
	lea	edi, 1[rax]
	mov	r9d, DWORD PTR -40[rbp]
	mov	r8d, DWORD PTR -36[rbp]
	mov	ecx, DWORD PTR -32[rbp]
	mov	edx, DWORD PTR -28[rbp]
	mov	esi, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -20[rbp]
	push	rdi
	mov	edi, DWORD PTR 16[rbp]
	push	rdi
	mov	edi, eax
	call	solve
	add	rsp, 16
	add	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	leave
	ret
0:
1:
2:
3:
4: