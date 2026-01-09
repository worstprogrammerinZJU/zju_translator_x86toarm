integerBreak:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	mov	DWORD PTR -52[rbp], edi
	mov	rax, rsp
	mov	rbx, rax
	cmp	DWORD PTR -52[rbp], 2
	jg	.L2
	mov	eax, 1
	jmp	.L3
	mov	eax, DWORD PTR -52[rbp]
	add	eax, 1
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -32[rbp], rdx
	movsx	rdx, eax
	mov	r10, rdx
	mov	r11d, 0
	movsx	rdx, eax
	mov	r8, rdx
	mov	r9d, 0
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
	cmp	rsp, rdx
	je	.L5
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L4
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L6
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
	mov	DWORD PTR 4[rax], 0
	mov	rax, QWORD PTR -40[rbp]
	mov	DWORD PTR 8[rax], 1
	mov	DWORD PTR -20[rbp], 3
	jmp	.L7
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], 0
	mov	DWORD PTR -24[rbp], 1
	jmp	.L8
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, DWORD PTR -24[rbp]
	imul	eax, DWORD PTR -24[rbp]
	mov	edx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	ecx, DWORD PTR -20[rbp]
	movsx	rcx, ecx
	mov	eax, DWORD PTR [rax+rcx*4]
	mov	esi, edx
	mov	edi, eax
	mov	eax, 0
	call	fmax@PLT
	mov	rdx, QWORD PTR -40[rbp]
	mov	ecx, DWORD PTR -20[rbp]
	movsx	rcx, ecx
	mov	DWORD PTR [rdx+rcx*4], eax
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, DWORD PTR -24[rbp]
	mov	edx, eax
	mov	rax, QWORD PTR -40[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	imul	eax, DWORD PTR -24[rbp]
	mov	edx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	ecx, DWORD PTR -20[rbp]
	movsx	rcx, ecx
	mov	eax, DWORD PTR [rax+rcx*4]
	mov	esi, edx
	mov	edi, eax
	mov	eax, 0
	call	fmax@PLT
	mov	rdx, QWORD PTR -40[rbp]
	mov	ecx, DWORD PTR -20[rbp]
	movsx	rcx, ecx
	mov	DWORD PTR [rdx+rcx*4], eax
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	cmp	DWORD PTR -24[rbp], eax
	jle	.L9
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -52[rbp]
	jle	.L10
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -52[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	rsp, rbx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
0:
1:
2:
3:
4: