main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -999424[rsp]
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 592
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L2
	call	getchar@PLT
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	BYTE PTR -1000016[rbp+rax], dl
	call	getchar@PLT
	call	getchar@PLT
	lea	edx, -48[rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -1000016[rbp+rax]
	mov	ecx, eax
	mov	eax, edx
	add	eax, ecx
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	BYTE PTR -1000016[rbp+rax], dl
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -1000016[rbp+rax]
	sub	eax, 10
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	BYTE PTR -1000016[rbp+rax], dl
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -1000016[rbp+rax]
	add	eax, 1
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	BYTE PTR -1000016[rbp+rax], dl
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -1000016[rbp+rax]
	cmp	al, 57
	jg	.L4
	call	getchar@PLT
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jns	.L5
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L6
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -1000016[rbp+rax]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jns	.L7
	mov	edi, 10
	call	putchar@PLT
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: