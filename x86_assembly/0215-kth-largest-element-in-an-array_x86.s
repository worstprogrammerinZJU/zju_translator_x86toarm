partition:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	DWORD PTR -48[rbp], edx
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L2
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L3
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -40[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -48[rbp]
	jl	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	add	rdx, 1
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -40[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR [rdx], eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	pop	rbp
	ret
quickSelect:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -32[rbp], edx
	mov	DWORD PTR -36[rbp], ecx
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, DWORD PTR -32[rbp]
	jg	.L7
	mov	edx, DWORD PTR -32[rbp]
	mov	ecx, DWORD PTR -28[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	partition
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jne	.L8
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	jmp	.L9
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jle	.L10
	mov	eax, DWORD PTR -4[rbp]
	lea	edi, -1[rax]
	mov	edx, DWORD PTR -36[rbp]
	mov	esi, DWORD PTR -28[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	ecx, edx
	mov	edx, edi
	mov	rdi, rax
	call	quickSelect
	jmp	.L9
	mov	eax, DWORD PTR -4[rbp]
	lea	esi, 1[rax]
	mov	ecx, DWORD PTR -36[rbp]
	mov	edx, DWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	quickSelect
	jmp	.L9
	mov	eax, -1
	leave
	ret
findKthLargest:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	DWORD PTR -16[rbp], edx
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -16[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	lea	esi, -1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	ecx, edx
	mov	edx, esi
	mov	esi, 0
	mov	rdi, rax
	call	quickSelect
	leave
	ret
0:
1:
2:
3:
4: