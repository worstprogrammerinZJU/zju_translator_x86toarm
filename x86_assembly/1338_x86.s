main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	DWORD PTR [rax], 1
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -64[rbp], rax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	edx, ecx
	mov	eax, 2863311531
	imul	rax, rdx
	shr	rax, 32
	shr	eax
	mov	edx, eax
	add	edx, edx
	add	edx, eax
	mov	eax, ecx
	sub	eax, edx
	test	eax, eax
	je	.L3
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	edx, ecx
	mov	eax, 3435973837
	imul	rax, rdx
	shr	rax, 32
	shr	eax, 2
	mov	edx, eax
	sal	edx, 2
	add	edx, eax
	mov	eax, ecx
	sub	eax, edx
	test	eax, eax
	je	.L3
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	lea	edx, [rax+rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
	jmp	.L4
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
	cmp	QWORD PTR -40[rbp], 0
	je	.L5
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jb	.L6
	cmp	QWORD PTR -40[rbp], 0
	jne	.L7
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], 0
	jmp	.L8
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	edx, ecx
	mov	eax, 3435973837
	imul	rax, rdx
	shr	rax, 32
	shr	eax, 2
	mov	edx, eax
	sal	edx, 2
	add	edx, eax
	mov	eax, ecx
	sub	eax, edx
	test	eax, eax
	je	.L9
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR [rax]
	mov	eax, edx
	add	eax, eax
	add	edx, eax
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
	jmp	.L10
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
	cmp	QWORD PTR -40[rbp], 0
	je	.L11
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jb	.L12
	cmp	QWORD PTR -40[rbp], 0
	jne	.L13
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], 0
	jmp	.L14
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -56[rbp], rax
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR [rax]
	mov	eax, edx
	sal	eax, 2
	add	edx, eax
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
	jmp	.L15
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
	cmp	QWORD PTR -40[rbp], 0
	je	.L16
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jb	.L17
	cmp	QWORD PTR -40[rbp], 0
	jne	.L18
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], 0
	jmp	.L19
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -16[rbp], rax
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 1288
	jle	.L20
	lea	rax, -68[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L21
	mov	rax, QWORD PTR -64[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L22
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -32[rbp], rax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -68[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L23
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -68[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -68[rbp]
	test	eax, eax
	jne	.L24
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: