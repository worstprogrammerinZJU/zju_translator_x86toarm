main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 240
	mov	QWORD PTR -224[rbp], 0
	mov	QWORD PTR -216[rbp], 0
	mov	QWORD PTR -208[rbp], 0
	mov	QWORD PTR -200[rbp], 0
	mov	QWORD PTR -192[rbp], 0
	mov	QWORD PTR -184[rbp], 0
	mov	QWORD PTR -176[rbp], 0
	mov	QWORD PTR -168[rbp], 0
	mov	QWORD PTR -160[rbp], 0
	mov	QWORD PTR -152[rbp], 0
	mov	BYTE PTR -144[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L2
	lea	rax, -225[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR -225[rbp]
	cmp	al, 47
	jle	.L3
	movzx	eax, BYTE PTR -225[rbp]
	cmp	al, 57
	jg	.L3
	movzx	eax, BYTE PTR -225[rbp]
	sub	eax, 48
	mov	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	BYTE PTR -80[rbp+rax], dl
	add	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -12[rbp], 40
	jle	.L4
	mov	DWORD PTR -16[rbp], 0
	jmp	.L5
	lea	rax, -225[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR -225[rbp]
	cmp	al, 47
	jle	.L6
	movzx	eax, BYTE PTR -225[rbp]
	cmp	al, 57
	jg	.L6
	movzx	eax, BYTE PTR -225[rbp]
	sub	eax, 48
	mov	edx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	BYTE PTR -128[rbp+rax], dl
	add	DWORD PTR -16[rbp], 1
	cmp	DWORD PTR -16[rbp], 40
	jle	.L7
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L8
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	sub	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L9
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	movzx	eax, BYTE PTR -224[rbp+rax]
	mov	esi, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -80[rbp+rax]
	mov	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	mov	edx, eax
	mov	eax, ecx
	imul	eax, edx
	add	eax, esi
	mov	edx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	BYTE PTR -224[rbp+rax], dl
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -24[rbp], eax
	jmp	.L10
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	cdqe
	movzx	eax, BYTE PTR -224[rbp+rax]
	mov	esi, eax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	movzx	edx, BYTE PTR -224[rbp+rax]
	mov	ecx, 103
	mov	eax, ecx
	imul	dl
	shr	ax, 8
	sar	al, 2
	sar	dl, 7
	sub	eax, edx
	lea	edx, [rsi+rax]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	cdqe
	mov	BYTE PTR -224[rbp+rax], dl
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	movzx	edx, BYTE PTR -224[rbp+rax]
	mov	ecx, 103
	mov	eax, ecx
	imul	dl
	shr	ax, 8
	sar	al, 2
	mov	esi, edx
	sar	sil, 7
	sub	eax, esi
	mov	ecx, eax
	mov	eax, ecx
	sal	eax, 2
	add	eax, ecx
	add	eax, eax
	mov	ecx, edx
	sub	ecx, eax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	mov	BYTE PTR -224[rbp+rax], cl
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	movzx	eax, BYTE PTR -224[rbp+rax]
	cmp	al, 9
	jg	.L11
	add	DWORD PTR -20[rbp], 1
	sub	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 0
	jns	.L12
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jns	.L13
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -16[rbp]
	add	eax, edx
	mov	DWORD PTR -4[rbp], eax
	jmp	.L14
	sub	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -224[rbp+rax]
	test	al, al
	jne	.L15
	cmp	DWORD PTR -4[rbp], 0
	jg	.L16
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L17
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -224[rbp+rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	sub	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 0
	jns	.L18
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: