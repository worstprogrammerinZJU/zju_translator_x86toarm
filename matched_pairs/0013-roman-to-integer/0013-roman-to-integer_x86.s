value:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	eax, edi
	mov	BYTE PTR -4[rbp], al
	movsx	eax, BYTE PTR -4[rbp]
	sub	eax, 67
	cmp	eax, 21
	ja	.L2
	mov	eax, eax
	lea	rdx, 0[0+rax*4]
	lea	rax, .L4[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	lea	rdx, .L4[rip]
	add	rax, rdx
	notrack jmp	rax
	mov	eax, 1
	jmp	.L11
	mov	eax, 5
	jmp	.L11
	mov	eax, 10
	jmp	.L11
	mov	eax, 50
	jmp	.L11
	mov	eax, 100
	jmp	.L11
	mov	eax, 500
	jmp	.L11
	mov	eax, 1000
	jmp	.L11
	mov	eax, 0
	pop	rbp
	ret
romanToInt:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	strlen@PLT
	mov	DWORD PTR -16[rbp], eax
	mov	DWORD PTR -12[rbp], 0
	jmp	.L13
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	value
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	cmp	DWORD PTR -16[rbp], eax
	jle	.L14
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	value
	mov	DWORD PTR -8[rbp], eax
	jmp	.L15
	mov	DWORD PTR -8[rbp], 0
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jle	.L16
	mov	eax, DWORD PTR -20[rbp]
	sub	DWORD PTR -4[rbp], eax
	jmp	.L17
	mov	eax, DWORD PTR -20[rbp]
	add	DWORD PTR -4[rbp], eax
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jl	.L18
	mov	eax, DWORD PTR -4[rbp]
	leave
	ret
0:
1:
2:
3:
4: