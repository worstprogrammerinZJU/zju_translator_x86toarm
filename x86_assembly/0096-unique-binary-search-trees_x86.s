numTrees:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	cdqe
	sal	rax, 2
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	add	rax, 4
	mov	DWORD PTR [rax], 1
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	DWORD PTR [rax], edx
	mov	DWORD PTR -4[rbp], 2
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	mov	DWORD PTR [rax], 0
	mov	DWORD PTR -8[rbp], 1
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 2
	lea	rdx, -4[rax]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rsi, 0[0+rax*4]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rsi
	mov	eax, DWORD PTR [rax]
	imul	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rsi, 0[0+rax*4]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rsi
	add	edx, ecx
	mov	DWORD PTR [rax], edx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jge	.L4
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jge	.L5
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	leave
	ret
0:
1:
2:
3:
4: