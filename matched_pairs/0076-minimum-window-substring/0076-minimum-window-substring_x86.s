minWindow:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 304
	mov	QWORD PTR -296[rbp], rdi
	mov	QWORD PTR -304[rbp], rsi
	lea	rdx, -288[rbp]
	mov	eax, 0
	mov	ecx, 29
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	DWORD PTR [rdx], eax
	add	rdx, 4
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -304[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 65
	cdqe
	mov	eax, DWORD PTR -288[rbp+rax*4]
	test	eax, eax
	jne	.L3
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -304[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 65
	movsx	rdx, eax
	mov	edx, DWORD PTR -288[rbp+rdx*4]
	sub	edx, 1
	cdqe
	mov	DWORD PTR -288[rbp+rax*4], edx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -304[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L4
	mov	DWORD PTR -12[rbp], 100001
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -296[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 65
	movsx	rdx, eax
	mov	edx, DWORD PTR -288[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -288[rbp+rax*4], edx
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -296[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 65
	cdqe
	mov	eax, DWORD PTR -288[rbp+rax*4]
	test	eax, eax
	jne	.L6
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jne	.L6
	jmp	.L7
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -296[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 65
	movsx	rdx, eax
	mov	edx, DWORD PTR -288[rbp+rdx*4]
	sub	edx, 1
	cdqe
	mov	DWORD PTR -288[rbp+rax*4], edx
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -296[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 65
	cdqe
	mov	eax, DWORD PTR -288[rbp+rax*4]
	test	eax, eax
	jg	.L8
	mov	eax, DWORD PTR -24[rbp]
	sub	eax, DWORD PTR -20[rbp]
	add	eax, 1
	cmp	DWORD PTR -12[rbp], eax
	jle	.L9
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	sub	eax, DWORD PTR -20[rbp]
	add	eax, 1
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -296[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 65
	movsx	rdx, eax
	mov	edx, DWORD PTR -288[rbp+rdx*4]
	sub	edx, 1
	cdqe
	mov	DWORD PTR -288[rbp+rax*4], edx
	add	DWORD PTR -4[rbp], 1
	add	DWORD PTR -20[rbp], 1
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -296[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L10
	cmp	DWORD PTR -12[rbp], 100001
	jne	.L11
	mov	edi, 1
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR -48[rbp]
	jmp	.L15
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	cdqe
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	QWORD PTR -40[rbp], rax
	mov	DWORD PTR -28[rbp], 0
	jmp	.L13
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -16[rbp]
	add	eax, edx
	movsx	rdx, eax
	mov	rax, QWORD PTR -296[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -28[rbp]
	movsx	rcx, edx
	mov	rdx, QWORD PTR -40[rbp]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	add	DWORD PTR -28[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L14
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR -40[rbp]
	leave
	ret
0:
1:
2:
3:
4: