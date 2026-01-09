longestCommonPrefix:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -4[rbp], 0
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	mov	eax, 0
	call	strlen@PLT
	mov	DWORD PTR -16[rbp], eax
	mov	DWORD PTR -8[rbp], 0
	jmp	.L2
	mov	DWORD PTR -12[rbp], 1
	jmp	.L3
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	mov	eax, 0
	call	strlen@PLT
	cmp	DWORD PTR -8[rbp], eax
	je	.L4
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	mov	rcx, QWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	je	.L5
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	jmp	.L6
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L7
	add	DWORD PTR -4[rbp], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jl	.L8
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	leave
	ret
0:
1:
2:
3:
4: