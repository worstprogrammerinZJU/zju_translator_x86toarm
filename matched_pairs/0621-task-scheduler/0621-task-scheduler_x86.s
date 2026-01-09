leastInterval:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 24
	mov	QWORD PTR -136[rbp], rdi
	mov	DWORD PTR -140[rbp], esi
	mov	DWORD PTR -144[rbp], edx
	lea	rdx, -128[rbp]
	mov	eax, 0
	mov	ecx, 13
	mov	rdi, rdx
	rep stosq
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -136[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 65
	movsx	rdx, eax
	mov	edx, DWORD PTR -128[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -128[rbp+rax*4], edx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -140[rbp]
	jl	.L3
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	eax, DWORD PTR -128[rbp+rax*4]
	cmp	DWORD PTR -8[rbp], eax
	jge	.L5
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	eax, DWORD PTR -128[rbp+rax*4]
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -12[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	eax, DWORD PTR -128[rbp+rax*4]
	cmp	DWORD PTR -8[rbp], eax
	jne	.L6
	add	DWORD PTR -12[rbp], 1
	add	DWORD PTR -16[rbp], 1
	cmp	DWORD PTR -16[rbp], 25
	jle	.L7
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -144[rbp]
	add	eax, 1
	imul	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	mov	DWORD PTR -20[rbp], eax
	mov	edx, DWORD PTR -140[rbp]
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	cmovge	eax, edx
	leave
	ret
0:
1:
2:
3:
4: