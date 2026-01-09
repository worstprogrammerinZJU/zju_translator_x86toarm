greater:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	eax, edx
	sub	eax, ecx
	pop	rbp
	ret
maxFrequency:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -32[rbp], edx
	mov	QWORD PTR -16[rbp], 0
	mov	esi, DWORD PTR -28[rbp]
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, greater[rip]
	mov	rcx, rdx
	mov	edx, 4
	mov	rdi, rax
	mov	eax, 0
	call	qsort@PLT
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	cdqe
	add	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, DWORD PTR -4[rbp]
	add	eax, 1
	movsx	rdx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	cdqe
	imul	rax, rdx
	sub	rax, QWORD PTR -16[rbp]
	mov	rdx, rax
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	cmp	rdx, rax
	jle	.L5
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	cdqe
	sub	QWORD PTR -16[rbp], rax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L6
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, DWORD PTR -4[rbp]
	leave
	ret
0:
1:
2:
3:
4: