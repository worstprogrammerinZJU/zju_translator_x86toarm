findPivotIndex:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -4[rbp], 0
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L2
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jge	.L3
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	add	rax, 1
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jle	.L3
	mov	eax, DWORD PTR -12[rbp]
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jge	.L5
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 2
	lea	rcx, -4[rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jge	.L5
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jge	.L6
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jl	.L2
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L7
	mov	eax, DWORD PTR -28[rbp]
	pop	rbp
	ret
binarySearch:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -32[rbp], edx
	mov	DWORD PTR -36[rbp], ecx
	jmp	.L9
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, DWORD PTR -28[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -36[rbp], eax
	jne	.L10
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L11
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -36[rbp], eax
	jle	.L12
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	mov	DWORD PTR -28[rbp], eax
	jmp	.L9
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, DWORD PTR -32[rbp]
	jle	.L13
	mov	eax, -1
	pop	rbp
	ret
search:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -32[rbp], edx
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR -4[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	findPivotIndex
	mov	DWORD PTR -8[rbp], eax
	mov	ecx, DWORD PTR -32[rbp]
	mov	edx, DWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 0
	mov	rdi, rax
	call	binarySearch
	mov	DWORD PTR -12[rbp], eax
	cmp	DWORD PTR -12[rbp], -1
	je	.L15
	mov	eax, DWORD PTR -12[rbp]
	jmp	.L16
	mov	eax, DWORD PTR -8[rbp]
	lea	esi, 1[rax]
	mov	ecx, DWORD PTR -32[rbp]
	mov	edx, DWORD PTR -4[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	binarySearch
	leave
	ret
0:
1:
2:
3:
4: