tribonacci:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	mov	DWORD PTR -52[rbp], edi
	mov	rax, rsp
	mov	rsi, rax
	cmp	DWORD PTR -52[rbp], 0
	jne	.L2
	mov	eax, 0
	jmp	.L3
	cmp	DWORD PTR -52[rbp], 1
	je	.L4
	cmp	DWORD PTR -52[rbp], 2
	jne	.L5
	mov	eax, 1
	jmp	.L3
	mov	eax, DWORD PTR -52[rbp]
	add	eax, 1
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -32[rbp], rdx
	movsx	rdx, eax
	mov	r8, rdx
	mov	r9d, 0
	movsx	rdx, eax
	mov	rcx, rdx
	mov	ebx, 0
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	ebx, 16
	mov	edx, 0
	div	rbx
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
	cmp	rsp, rdx
	je	.L7
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L6
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L8
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR -40[rbp]
	mov	DWORD PTR 4[rax], 1
	mov	rax, QWORD PTR -40[rbp]
	mov	DWORD PTR 8[rax], 1
	mov	DWORD PTR -20[rbp], 3
	jmp	.L9
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -40[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, -2[rax]
	mov	rax, QWORD PTR -40[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	add	ecx, eax
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, -3[rax]
	mov	rax, QWORD PTR -40[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	add	ecx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -52[rbp]
	jle	.L10
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -52[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	rsp, rsi
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
0:
1:
2:
3:
4: