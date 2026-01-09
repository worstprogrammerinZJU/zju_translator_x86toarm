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
	sub	rsp, 48
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -20[rbp], 0
	jmp	.L12
	mov	DWORD PTR -4[rbp], 0
	jmp	.L13
	lea	rax, -46[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L14
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, edx
	add	eax, eax
	add	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	edx, BYTE PTR -46[rbp+rax]
	movsx	rax, ecx
	lea	rcx, s[rip]
	mov	BYTE PTR [rax+rcx], dl
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 2
	jle	.L15
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 2
	jle	.L16
	mov	DWORD PTR -16[rbp], 0
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -24[rbp], 1
	mov	DWORD PTR -4[rbp], 0
	jmp	.L17
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 88
	jne	.L18
	add	DWORD PTR -12[rbp], 1
	jmp	.L19
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 79
	jne	.L19
	add	DWORD PTR -16[rbp], 1
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 8
	jle	.L20
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	je	.L21
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 1
	cmp	DWORD PTR -12[rbp], eax
	jne	.L22
	mov	edi, 88
	call	find
	mov	DWORD PTR -28[rbp], eax
	mov	edi, 79
	call	find
	mov	DWORD PTR -32[rbp], eax
	cmp	DWORD PTR -28[rbp], 1
	jne	.L23
	cmp	DWORD PTR -32[rbp], 1
	jne	.L23
	mov	DWORD PTR -24[rbp], 0
	jmp	.L24
	cmp	DWORD PTR -28[rbp], 1
	jne	.L25
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jne	.L25
	mov	DWORD PTR -24[rbp], 0
	jmp	.L24
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 1
	cmp	DWORD PTR -12[rbp], eax
	jne	.L31
	cmp	DWORD PTR -28[rbp], 0
	jne	.L31
	cmp	DWORD PTR -32[rbp], 1
	jne	.L31
	mov	DWORD PTR -24[rbp], 0
	jmp	.L31
	jmp	.L31
	mov	DWORD PTR -24[rbp], 0
	jmp	.L26
	nop
	cmp	DWORD PTR -24[rbp], 0
	je	.L27
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L28
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L29
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: