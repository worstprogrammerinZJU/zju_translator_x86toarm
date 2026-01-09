main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	movabs	rax, 564049515512064
	movabs	rdx, 72063113138143744
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	movabs	rax, 144116287637947906
	mov	QWORD PTR -16[rbp], rax
	mov	WORD PTR -8[rbp], 512
	jmp	.L2
	mov	BYTE PTR -5[rbp], -1
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -64[rbp+rax]
	movsx	eax, al
	sub	eax, 65
	cdqe
	movzx	eax, BYTE PTR -32[rbp+rax]
	test	al, al
	je	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -64[rbp+rax]
	movsx	eax, al
	sub	eax, 65
	cdqe
	movzx	eax, BYTE PTR -32[rbp+rax]
	cmp	BYTE PTR -5[rbp], al
	je	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -64[rbp+rax]
	movsx	eax, al
	sub	eax, 65
	cdqe
	movzx	eax, BYTE PTR -32[rbp+rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -64[rbp+rax]
	movsx	eax, al
	sub	eax, 65
	cdqe
	movzx	eax, BYTE PTR -32[rbp+rax]
	mov	BYTE PTR -5[rbp], al
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -64[rbp+rax]
	test	al, al
	jne	.L5
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L6
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: