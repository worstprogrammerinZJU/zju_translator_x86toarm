strStr:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	strlen@PLT
	mov	DWORD PTR -12[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	strlen@PLT
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jge	.L2
	mov	eax, -1
	jmp	.L3
	mov	DWORD PTR -4[rbp], 0
	jmp	.L4
	mov	DWORD PTR -8[rbp], 0
	jmp	.L5
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L11
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jl	.L8
	jmp	.L7
	nop
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jne	.L9
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L3
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L10
	mov	eax, -1
	leave
	ret
0:
1:
2:
3:
4: