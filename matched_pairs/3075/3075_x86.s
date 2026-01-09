s:
find:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	eax, edi
	mov	BYTE PTR -4[rbp], al
	movzx	eax, BYTE PTR s[rip]
	cmp	BYTE PTR -4[rbp], al
	jne	.L2
	movzx	eax, BYTE PTR s[rip+1]
	cmp	BYTE PTR -4[rbp], al
	jne	.L2
	movzx	eax, BYTE PTR s[rip+2]
	cmp	BYTE PTR -4[rbp], al
	jne	.L2
	mov	eax, 1
	jmp	.L3
	movzx	eax, BYTE PTR s[rip+3]
	cmp	BYTE PTR -4[rbp], al
	jne	.L4
	movzx	eax, BYTE PTR s[rip+4]
	cmp	BYTE PTR -4[rbp], al
	jne	.L4
	movzx	eax, BYTE PTR s[rip+5]
	cmp	BYTE PTR -4[rbp], al
	jne	.L4
	mov	eax, 1
	jmp	.L3
	movzx	eax, BYTE PTR s[rip+6]
	cmp	BYTE PTR -4[rbp], al
	jne	.L5
	movzx	eax, BYTE PTR s[rip+7]
	cmp	BYTE PTR -4[rbp], al
	jne	.L5
	movzx	eax, BYTE PTR s[rip+8]
	cmp	BYTE PTR -4[rbp], al
	jne	.L5
	mov	eax, 1
	jmp	.L3
	movzx	eax, BYTE PTR s[rip]
	cmp	BYTE PTR -4[rbp], al
	jne	.L6
	movzx	eax, BYTE PTR s[rip+3]
	cmp	BYTE PTR -4[rbp], al
	jne	.L6
	movzx	eax, BYTE PTR s[rip+6]
	cmp	BYTE PTR -4[rbp], al
	jne	.L6
	mov	eax, 1
	jmp	.L3
	movzx	eax, BYTE PTR s[rip+1]
	cmp	BYTE PTR -4[rbp], al
	jne	.L7
	movzx	eax, BYTE PTR s[rip+4]
	cmp	BYTE PTR -4[rbp], al
	jne	.L7
	movzx	eax, BYTE PTR s[rip+7]
	cmp	BYTE PTR -4[rbp], al
	jne	.L7
	mov	eax, 1
	jmp	.L3
	movzx	eax, BYTE PTR s[rip+2]
	cmp	BYTE PTR -4[rbp], al
	jne	.L8
	movzx	eax, BYTE PTR s[rip+5]
	cmp	BYTE PTR -4[rbp], al
	jne	.L8
	movzx	eax, BYTE PTR s[rip+8]
	cmp	BYTE PTR -4[rbp], al
	jne	.L8
	mov	eax, 1
	jmp	.L3
	movzx	eax, BYTE PTR s[rip]
	cmp	BYTE PTR -4[rbp], al
	jne	.L9
	movzx	eax, BYTE PTR s[rip+4]
	cmp	BYTE PTR -4[rbp], al
	jne	.L9
	movzx	eax, BYTE PTR s[rip+8]
	cmp	BYTE PTR -4[rbp], al
	jne	.L9
	mov	eax, 1
	jmp	.L3
	movzx	eax, BYTE PTR s[rip+2]
	cmp	BYTE PTR -4[rbp], al
	jne	.L10
	movzx	eax, BYTE PTR s[rip+4]
	cmp	BYTE PTR -4[rbp], al
	jne	.L10
	movzx	eax, BYTE PTR s[rip+6]
	cmp	BYTE PTR -4[rbp], al
	jne	.L10
	mov	eax, 1
	jmp	.L3
	mov	eax, 0
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	jmp	.L12
	mov	DWORD PTR -12[rbp], 0
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L13
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 88
	jne	.L14
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 79
	jne	.L15
	add	DWORD PTR -12[rbp], 1
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 8
	jle	.L16
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	je	.L17
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	cmp	DWORD PTR -8[rbp], eax
	jne	.L18
	mov	edi, 88
	call	find
	mov	DWORD PTR -20[rbp], eax
	mov	edi, 79
	call	find
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jne	.L19
	cmp	DWORD PTR -20[rbp], 0
	jne	.L19
	cmp	DWORD PTR -24[rbp], 1
	jne	.L19
	mov	DWORD PTR -16[rbp], 1
	jmp	.L18
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	cmp	DWORD PTR -8[rbp], eax
	jne	.L20
	cmp	DWORD PTR -20[rbp], 1
	jne	.L20
	cmp	DWORD PTR -24[rbp], 0
	jne	.L20
	mov	DWORD PTR -16[rbp], 1
	jmp	.L18
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	cmp	eax, 9
	jne	.L18
	cmp	DWORD PTR -24[rbp], 0
	jne	.L18
	mov	DWORD PTR -16[rbp], 1
	cmp	DWORD PTR -16[rbp], 0
	je	.L21
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L12
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, s[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, .LC3[rip]
	mov	rsi, rax
	lea	rax, s[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L22
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: