addToArrayForm:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	mov	QWORD PTR -56[rbp], rdi
	mov	DWORD PTR -60[rbp], esi
	mov	DWORD PTR -64[rbp], edx
	mov	QWORD PTR -72[rbp], rcx
	mov	eax, DWORD PTR -60[rbp]
	mov	edx, 6
	cmp	eax, edx
	cmovl	eax, edx
	add	eax, 2
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	sal	rax, 2
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	QWORD PTR -40[rbp], rax
	mov	DWORD PTR -4[rbp], 0
	mov	eax, DWORD PTR -60[rbp]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -12[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -16[rbp], eax
	cmp	DWORD PTR -8[rbp], 0
	js	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	add	DWORD PTR -16[rbp], eax
	sub	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -64[rbp], 0
	jle	.L4
	mov	ecx, DWORD PTR -64[rbp]
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
	add	DWORD PTR -16[rbp], edx
	mov	eax, DWORD PTR -64[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	lea	rsi, [rdx+rax]
	mov	ecx, DWORD PTR -16[rbp]
	movsx	rax, ecx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	edi, ecx
	sar	edi, 31
	sub	eax, edi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	mov	DWORD PTR [rsi], edx
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -4[rbp], eax
	add	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -8[rbp], 0
	jns	.L5
	cmp	DWORD PTR -64[rbp], 0
	jg	.L5
	cmp	DWORD PTR -4[rbp], 0
	jg	.L5
	mov	DWORD PTR -20[rbp], 0
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	mov	DWORD PTR -24[rbp], eax
	jmp	.L6
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -44[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -40[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -44[rbp]
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR -20[rbp], 1
	sub	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jl	.L7
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -12[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -40[rbp]
	leave
	ret
0:
1:
2:
3:
4: