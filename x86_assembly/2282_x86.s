d:
e:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 112
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	cal
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 9
	jle	.L3
	lea	rdx, -12[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L4
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cmp	edx, eax
	jge	.L5
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, -1[rax]
	lea	rax, -64[rbp]
	mov	rsi, rax
	mov	edi, edx
	call	count
	mov	eax, DWORD PTR -12[rbp]
	lea	rdx, -112[rbp]
	mov	rsi, rdx
	mov	edi, eax
	call	count
	mov	DWORD PTR -4[rbp], 0
	jmp	.L6
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	edx, DWORD PTR -112[rbp+rax*4]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	ecx, DWORD PTR -64[rbp+rax*4]
	mov	eax, edx
	sub	eax, ecx
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 8
	jle	.L7
	mov	eax, DWORD PTR -76[rbp]
	mov	edx, DWORD PTR -28[rbp]
	sub	eax, edx
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rdx, -12[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -8[rbp]
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -12[rbp]
	test	eax, eax
	jne	.L8
	mov	eax, 0
	leave
	ret
count:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -36[rbp], edi
	mov	QWORD PTR -48[rbp], rsi
	mov	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -36[rbp], 0
	jne	.L11
	mov	rax, QWORD PTR -48[rbp]
	mov	DWORD PTR [rax], 1
	mov	DWORD PTR -4[rbp], 1
	jmp	.L12
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	DWORD PTR [rax], 0
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 9
	jle	.L13
	jmp	.L10
	mov	DWORD PTR -4[rbp], 0
	jmp	.L15
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, e[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -36[rbp], eax
	jge	.L16
	sub	DWORD PTR -4[rbp], 1
	mov	DWORD PTR -8[rbp], 0
	jmp	.L17
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -48[rbp]
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR [rcx], eax
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 9
	jle	.L18
	jmp	.L19
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, e[rip]
	mov	edi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -36[rbp]
	cdq
	idiv	edi
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L20
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, e[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rsi, 0[0+rax*4]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rsi
	add	edx, ecx
	mov	DWORD PTR [rax], edx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jl	.L21
	mov	DWORD PTR -8[rbp], 0
	jmp	.L22
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	esi, DWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	imul	eax, DWORD PTR -20[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, e[rip]
	mov	eax, DWORD PTR [rcx+rax]
	imul	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rcx
	add	edx, esi
	mov	DWORD PTR [rax], edx
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 9
	jle	.L23
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, e[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -36[rbp]
	cdq
	idiv	ecx
	mov	DWORD PTR -36[rbp], edx
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -36[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rsi, 0[0+rax*4]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rsi
	add	edx, ecx
	mov	DWORD PTR [rax], edx
	sub	DWORD PTR -4[rbp], 1
	mov	DWORD PTR -12[rbp], 0
	cmp	DWORD PTR -4[rbp], 0
	jg	.L24
	mov	DWORD PTR -8[rbp], 0
	jmp	.L25
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	add	edx, 1
	mov	DWORD PTR [rax], edx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jle	.L26
	pop	rbp
	ret
cal:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	cmp	DWORD PTR -20[rbp], 1
	jne	.L28
	mov	DWORD PTR -4[rbp], 0
	jmp	.L29
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	rax, 10
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	DWORD PTR [rdx+rax], 1
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 9
	jle	.L30
	jmp	.L36
	mov	DWORD PTR -4[rbp], 0
	jmp	.L32
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rsi, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 9
	jle	.L33
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	lea	rax, d[rip]
	mov	edi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	lea	esi, -1[rax]
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, e[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -20[rbp]
	sub	edx, 2
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, e[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	imul	eax, esi
	lea	ecx, [rdi+rax]
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	lea	rax, d[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	DWORD PTR -4[rbp], 1
	jmp	.L34
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	edi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, e[rip]
	mov	r8d, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	lea	esi, -1[rax]
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, e[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -20[rbp]
	sub	edx, 2
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, e[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	imul	eax, esi
	add	eax, r8d
	lea	ecx, [rdi+rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 9
	jle	.L35
	nop
	pop	rbp
	ret
0:
1:
2:
3:
4: