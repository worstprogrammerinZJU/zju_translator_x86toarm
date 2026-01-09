isVowel:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	eax, edi
	mov	BYTE PTR -4[rbp], al
	cmp	BYTE PTR -4[rbp], 97
	je	.L2
	cmp	BYTE PTR -4[rbp], 101
	je	.L2
	cmp	BYTE PTR -4[rbp], 105
	je	.L2
	cmp	BYTE PTR -4[rbp], 111
	je	.L2
	cmp	BYTE PTR -4[rbp], 117
	jne	.L3
	mov	eax, 1
	jmp	.L5
	mov	eax, 0
	pop	rbp
	ret
maxVowels:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	mov	QWORD PTR -56[rbp], rdi
	mov	DWORD PTR -60[rbp], esi
	mov	DWORD PTR -20[rbp], 0
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	strlen@PLT
	mov	DWORD PTR -36[rbp], eax
	mov	DWORD PTR -28[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	isVowel
	add	DWORD PTR -20[rbp], eax
	add	DWORD PTR -28[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, DWORD PTR -60[rbp]
	jl	.L8
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -60[rbp]
	mov	DWORD PTR -32[rbp], eax
	jmp	.L9
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	isVowel
	mov	edx, eax
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, edx
	mov	ebx, eax
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	isVowel
	add	eax, ebx
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jle	.L10
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -24[rbp], eax
	add	DWORD PTR -32[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L11
	mov	eax, DWORD PTR -24[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
0:
1:
2:
3:
4: