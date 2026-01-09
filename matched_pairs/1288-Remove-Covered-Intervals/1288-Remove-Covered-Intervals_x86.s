cmp_fun:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jne	.L2
	mov	rax, QWORD PTR -16[rbp]
	add	rax, 4
	mov	eax, DWORD PTR [rax]
	mov	rdx, QWORD PTR -8[rbp]
	add	rdx, 4
	mov	edx, DWORD PTR [rdx]
	sub	eax, edx
	jmp	.L3
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	eax, edx
	sub	eax, ecx
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	esi, DWORD PTR -28[rbp]
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, cmp_fun[rip]
	mov	rcx, rdx
	mov	edx, 8
	mov	rdi, rax
	mov	eax, 0
	call	qsort@PLT
	mov	DWORD PTR -4[rbp], 0
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -12[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	add	rax, 4
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L6
	sub	DWORD PTR -8[rbp], 1
	jmp	.L7
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	eax, DWORD PTR 4[rax]
	mov	DWORD PTR -4[rbp], eax
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L8
	mov	eax, DWORD PTR -8[rbp]
	leave
	ret
0:
1:
2:
3:
4: