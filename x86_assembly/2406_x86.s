main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -999424[rsp]
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 608
	lea	rax, -1000032[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	DWORD PTR -12[rbp], 0
	lea	rax, -1000032[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -16[rbp], eax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	edx, BYTE PTR -1000032[rbp+rax]
	movzx	eax, BYTE PTR -1000032[rbp]
	cmp	dl, al
	jne	.L4
	mov	eax, DWORD PTR -16[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L4
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L5
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	edx, BYTE PTR -1000032[rbp+rax]
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -1000032[rbp+rax]
	cmp	dl, al
	jne	.L14
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jl	.L8
	jmp	.L7
	nop
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jne	.L4
	mov	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L9
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jl	.L10
	cmp	DWORD PTR -12[rbp], 0
	jne	.L11
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -1000032[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR -1000032[rbp]
	cmp	al, 46
	jne	.L12
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: