main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 496
	movabs	rax, 3255307769123515691
	movabs	rdx, 3255307769123515691
	mov	QWORD PTR -384[rbp], rax
	mov	QWORD PTR -376[rbp], rdx
	mov	QWORD PTR -368[rbp], rax
	mov	QWORD PTR -360[rbp], rdx
	mov	QWORD PTR -352[rbp], 43
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rbp
	add	rax, rcx
	sub	rax, 336
	mov	BYTE PTR [rax], 124
	add	DWORD PTR -8[rbp], 4
	cmp	DWORD PTR -8[rbp], 33
	jle	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	sal	eax, 2
	add	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L5
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rbp
	add	rax, rcx
	sub	rax, 336
	mov	BYTE PTR [rax], 46
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rbp
	add	rax, rcx
	sub	rax, 336
	mov	BYTE PTR [rax], 46
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 2
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rbp
	add	rax, rcx
	sub	rax, 336
	mov	BYTE PTR [rax], 46
	add	DWORD PTR -8[rbp], 8
	cmp	DWORD PTR -8[rbp], 33
	jle	.L6
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	sal	eax, 2
	add	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L7
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rbp
	add	rax, rcx
	sub	rax, 336
	mov	BYTE PTR [rax], 58
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rbp
	add	rax, rcx
	sub	rax, 336
	mov	BYTE PTR [rax], 58
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 2
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rbp
	add	rax, rcx
	sub	rax, 336
	mov	BYTE PTR [rax], 58
	add	DWORD PTR -8[rbp], 8
	cmp	DWORD PTR -8[rbp], 33
	jle	.L8
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rbp
	sub	rax, 303
	mov	BYTE PTR [rax], 0
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 7
	jle	.L9
	lea	rax, -496[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -4[rbp], 6
	jmp	.L10
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	cmp	al, 75
	je	.L11
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	cmp	al, 81
	je	.L11
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	cmp	al, 82
	je	.L11
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	cmp	al, 66
	je	.L11
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	cmp	al, 78
	jne	.L12
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	movsx	eax, al
	sub	eax, 97
	sal	eax, 2
	add	eax, 2
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 2
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	movsx	edx, al
	mov	eax, 56
	sub	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	edx, BYTE PTR -496[rbp+rax]
	mov	eax, DWORD PTR -12[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	sal	rax, 3
	add	rax, rbp
	add	rax, rsi
	sub	rax, 336
	mov	BYTE PTR [rax], dl
	add	DWORD PTR -4[rbp], 2
	jmp	.L13
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	cmp	al, 44
	jne	.L13
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	cmp	al, 96
	jle	.L13
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	cmp	al, 104
	jg	.L13
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	movsx	eax, al
	sub	eax, 97
	sal	eax, 2
	add	eax, 2
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 2
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	movsx	edx, al
	mov	eax, 56
	sub	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rbp
	add	rax, rcx
	sub	rax, 336
	mov	BYTE PTR [rax], 80
	add	DWORD PTR -4[rbp], 2
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	test	al, al
	jne	.L14
	lea	rax, -496[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -4[rbp], 6
	jmp	.L15
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	cmp	al, 75
	je	.L16
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	cmp	al, 81
	je	.L16
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	cmp	al, 82
	je	.L16
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	cmp	al, 66
	je	.L16
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	cmp	al, 78
	jne	.L17
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	movsx	eax, al
	sub	eax, 97
	sal	eax, 2
	add	eax, 2
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 2
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	movsx	edx, al
	mov	eax, 56
	sub	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	add	eax, 32
	mov	ecx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rbp
	add	rax, rsi
	sub	rax, 336
	mov	BYTE PTR [rax], cl
	add	DWORD PTR -4[rbp], 2
	jmp	.L18
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	cmp	al, 44
	jne	.L18
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	cmp	al, 96
	jle	.L18
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	cmp	al, 104
	jg	.L18
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	movsx	eax, al
	sub	eax, 97
	sal	eax, 2
	add	eax, 2
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 2
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	movsx	edx, al
	mov	eax, 56
	sub	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rbp
	add	rax, rcx
	sub	rax, 336
	mov	BYTE PTR [rax], 112
	add	DWORD PTR -4[rbp], 2
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -496[rbp+rax]
	test	al, al
	jne	.L19
	mov	DWORD PTR -4[rbp], 0
	jmp	.L20
	lea	rcx, -336[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rcx+rax]
	lea	rax, -384[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 7
	jle	.L21
	lea	rax, -384[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
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