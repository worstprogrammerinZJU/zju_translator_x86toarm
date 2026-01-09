main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -196608[rsp]
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 3408
	jmp	.L2
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -100016[rbp+rax]
	test	al, al
	je	.L11
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	edx, BYTE PTR -100016[rbp+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -200016[rbp+rax]
	cmp	dl, al
	jne	.L6
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -200016[rbp+rax]
	test	al, al
	jne	.L7
	jmp	.L5
	nop
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -100016[rbp+rax]
	test	al, al
	jne	.L8
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L2
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rdx, -200016[rbp]
	lea	rax, -100016[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L9
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: