lengthOfLastWord:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -4[rbp], -1
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 32
	jne	.L3
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	cmp	DWORD PTR -4[rbp], eax
	je	.L4
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -4[rbp], eax
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L5
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	cmp	DWORD PTR -4[rbp], eax
	jne	.L6
	mov	eax, DWORD PTR -8[rbp]
	jmp	.L7
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	pop	rbp
	ret
0:
1:
2:
3:
4: