main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 208
	mov	DWORD PTR -28[rbp], 0
	mov	QWORD PTR -192[rbp], 0
	mov	QWORD PTR -184[rbp], 0
	mov	QWORD PTR -176[rbp], 0
	mov	QWORD PTR -168[rbp], 0
	mov	QWORD PTR -160[rbp], 0
	mov	QWORD PTR -152[rbp], 0
	mov	QWORD PTR -144[rbp], 0
	mov	QWORD PTR -136[rbp], 0
	mov	QWORD PTR -128[rbp], 0
	mov	QWORD PTR -120[rbp], 0
	mov	QWORD PTR -112[rbp], 0
	mov	QWORD PTR -104[rbp], 0
	mov	QWORD PTR -96[rbp], 0
	mov	QWORD PTR -88[rbp], 0
	mov	QWORD PTR -80[rbp], 0
	mov	QWORD PTR -72[rbp], 0
	mov	QWORD PTR -64[rbp], 0
	mov	QWORD PTR -56[rbp], 0
	mov	DWORD PTR -48[rbp], 0
	mov	WORD PTR -44[rbp], 0
	jmp	.L2
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	BYTE PTR -192[rbp+rax], 0
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jle	.L4
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 4
	jmp	.L5
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -199[rbp+rax]
	cmp	al, 46
	jne	.L6
	mov	eax, 5
	sub	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -36[rbp]
	imul	eax, edx
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L7
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -199[rbp+rax]
	lea	ecx, -48[rax]
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -12[rbp], edx
	mov	edx, ecx
	cdqe
	mov	BYTE PTR -192[rbp+rax], dl
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -199[rbp+rax]
	movsx	eax, al
	add	eax, edx
	sub	eax, 48
	mov	DWORD PTR -24[rbp], eax
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 5
	jle	.L8
	mov	DWORD PTR -28[rbp], 4
	mov	DWORD PTR -8[rbp], 2
	jmp	.L9
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L10
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -192[rbp+rax]
	movsx	eax, al
	mov	edx, DWORD PTR -24[rbp]
	imul	eax, edx
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -16[rbp], eax
	mov	edx, DWORD PTR -32[rbp]
	movsx	rax, edx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, edx
	sar	esi, 31
	sub	eax, esi
	mov	ecx, eax
	mov	eax, ecx
	sal	eax, 2
	add	eax, ecx
	add	eax, eax
	mov	ecx, edx
	sub	ecx, eax
	mov	eax, DWORD PTR -16[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -16[rbp], edx
	mov	edx, ecx
	cdqe
	mov	BYTE PTR -192[rbp+rax], dl
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -32[rbp], eax
	jmp	.L11
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	movzx	eax, BYTE PTR -192[rbp+rax]
	mov	edi, eax
	mov	edx, DWORD PTR -32[rbp]
	movsx	rax, edx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, edx
	sar	esi, 31
	sub	eax, esi
	mov	ecx, eax
	mov	eax, ecx
	sal	eax, 2
	add	eax, ecx
	add	eax, eax
	mov	ecx, edx
	sub	ecx, eax
	mov	eax, ecx
	add	eax, edi
	mov	edx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	BYTE PTR -192[rbp+rax], dl
	mov	eax, DWORD PTR -16[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -16[rbp], edx
	mov	DWORD PTR -20[rbp], eax
	jmp	.L12
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	cdqe
	movzx	eax, BYTE PTR -192[rbp+rax]
	mov	esi, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	movzx	edx, BYTE PTR -192[rbp+rax]
	mov	ecx, 103
	mov	eax, ecx
	imul	dl
	shr	ax, 8
	sar	al, 2
	sar	dl, 7
	sub	eax, edx
	lea	edx, [rsi+rax]
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	cdqe
	mov	BYTE PTR -192[rbp+rax], dl
	mov	edx, DWORD PTR -20[rbp]
	lea	eax, 1[rdx]
	mov	DWORD PTR -20[rbp], eax
	movsx	rax, edx
	movzx	ecx, BYTE PTR -192[rbp+rax]
	mov	esi, 103
	mov	eax, esi
	imul	cl
	shr	ax, 8
	sar	al, 2
	mov	edi, ecx
	sar	dil, 7
	sub	eax, edi
	mov	esi, eax
	mov	eax, esi
	sal	eax, 2
	add	eax, esi
	add	eax, eax
	mov	esi, ecx
	sub	esi, eax
	movsx	rax, edx
	mov	BYTE PTR -192[rbp+rax], sil
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	movzx	eax, BYTE PTR -192[rbp+rax]
	cmp	al, 9
	jg	.L13
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jle	.L14
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -32[rbp], eax
	cmp	DWORD PTR -32[rbp], 0
	jne	.L15
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	cmp	DWORD PTR -16[rbp], eax
	jle	.L16
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	mov	DWORD PTR -28[rbp], eax
	sub	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -12[rbp], 0
	jns	.L17
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L18
	mov	DWORD PTR -12[rbp], 0
	jmp	.L19
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -192[rbp+rax]
	test	al, al
	jne	.L33
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jle	.L22
	jmp	.L21
	nop
	sub	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jle	.L23
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -16[rbp], eax
	jmp	.L24
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	sub	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jg	.L25
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L26
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jg	.L27
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jle	.L34
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jne	.L29
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -192[rbp+rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	sub	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 0
	jns	.L30
	jmp	.L28
	nop
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rdx, -36[rbp]
	lea	rax, -199[rbp]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L31
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: