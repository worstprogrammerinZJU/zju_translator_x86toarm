lengthOfLastWord:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -4[rbp], 0
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 32
	je	.L2
	mov	DWORD PTR -4[rbp], 1
	mov	DWORD PTR -8[rbp], 1
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 32
	je	.L4
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 32
	jne	.L5
	mov	DWORD PTR -4[rbp], 1
	jmp	.L4
	add	DWORD PTR -4[rbp], 1
	add	DWORD PTR -8[rbp], 1
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	strlen@PLT
	cmp	DWORD PTR -8[rbp], eax
	jl	.L6
	mov	eax, DWORD PTR -4[rbp]
	leave
	ret
0:
1:
2:
3:
4: