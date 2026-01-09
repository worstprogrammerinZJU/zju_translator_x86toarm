runningSum:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	sal	rax, 2
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -28[rbp]
	mov	DWORD PTR [rax], edx
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	cmp	DWORD PTR -4[rbp], 0
	je	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	lea	rcx, -4[rax]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	add	eax, edx
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -16[rbp]
	add	rdx, rcx
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L5
	mov	rax, QWORD PTR -16[rbp]
	leave
	ret
0:
1:
2:
3:
4: