cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jge	.L2
	mov	eax, 1
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L4
	mov	eax, -1
	jmp	.L3
	mov	eax, 0
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 3936
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L6
	mov	DWORD PTR -4[rbp], 0
	jmp	.L7
	lea	rdx, -4032[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L8
	mov	DWORD PTR -4[rbp], 0
	jmp	.L9
	lea	rdx, -8032[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L10
	mov	eax, DWORD PTR -24[rbp]
	movsx	rsi, eax
	lea	rax, -4032[rbp]
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 4
	mov	rdi, rax
	call	qsort@PLT
	mov	eax, DWORD PTR -24[rbp]
	movsx	rsi, eax
	lea	rax, -8032[rbp]
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 4
	mov	rdi, rax
	call	qsort@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L11
	add	DWORD PTR -4[rbp], 1
	mov	edx, DWORD PTR -4032[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -8032[rbp+rax*4]
	cmp	edx, eax
	jge	.L12
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L13
	mov	eax, DWORD PTR -24[rbp]
	imul	eax, eax, -200
	mov	DWORD PTR -16[rbp], eax
	jmp	.L14
	mov	eax, DWORD PTR -4[rbp]
	imul	eax, eax, -200
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -12[rbp], 0
	jmp	.L15
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -4032[rbp+rax*4]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -8032[rbp+rax*4]
	cmp	edx, eax
	jle	.L16
	add	DWORD PTR -20[rbp], 200
	jmp	.L17
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -4032[rbp+rax*4]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -8032[rbp+rax*4]
	cmp	edx, eax
	jge	.L17
	sub	DWORD PTR -20[rbp], 200
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L18
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jle	.L19
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -16[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L20
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -24[rbp]
	test	eax, eax
	jne	.L21
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: