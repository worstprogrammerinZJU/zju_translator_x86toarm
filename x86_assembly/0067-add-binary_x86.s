addBinary:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	strlen@PLT
	mov	ebx, eax
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	strlen@PLT
	cmp	ebx, eax
	jle	.L2
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	strlen@PLT
	jmp	.L3
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	strlen@PLT
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 2
	cdqe
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	QWORD PTR -40[rbp], rax
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 2
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	esi, 0
	mov	rdi, rax
	mov	eax, 0
	call	memset@PLT
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	jmp	.L4
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	strlen@PLT
	cmp	DWORD PTR -24[rbp], eax
	jge	.L5
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	strlen@PLT
	sub	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	jmp	.L6
	mov	eax, 0
	mov	DWORD PTR -44[rbp], eax
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	strlen@PLT
	cmp	DWORD PTR -24[rbp], eax
	jge	.L7
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	strlen@PLT
	sub	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -80[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	jmp	.L8
	mov	eax, 0
	mov	DWORD PTR -48[rbp], eax
	mov	edx, DWORD PTR -44[rbp]
	mov	eax, DWORD PTR -48[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, edx
	mov	DWORD PTR -52[rbp], eax
	mov	eax, DWORD PTR -52[rbp]
	and	eax, 1
	add	eax, 48
	mov	BYTE PTR -53[rbp], al
	mov	eax, DWORD PTR -52[rbp]
	shr	eax
	mov	DWORD PTR -20[rbp], eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	strlen@PLT
	mov	edx, eax
	mov	rax, QWORD PTR -40[rbp]
	lea	rcx, 1[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	mov	eax, 0
	call	memmove@PLT
	mov	rax, QWORD PTR -40[rbp]
	movzx	edx, BYTE PTR -53[rbp]
	mov	BYTE PTR [rax], dl
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L9
	cmp	DWORD PTR -20[rbp], 0
	je	.L10
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	strlen@PLT
	mov	edx, eax
	mov	rax, QWORD PTR -40[rbp]
	lea	rcx, 1[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	mov	eax, 0
	call	memmove@PLT
	mov	rax, QWORD PTR -40[rbp]
	mov	BYTE PTR [rax], 49
	mov	rax, QWORD PTR -40[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
0:
1:
2:
3:
4: