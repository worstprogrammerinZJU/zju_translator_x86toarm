main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -16[rbp]
	imul	rax, rdx
	add	rax, 1
	mov	edx, 0
	div	QWORD PTR -8[rbp]
	mov	rax, rdx
	test	rax, rax
	je	.L7
	sub	QWORD PTR -8[rbp], 1
	jmp	.L4
	nop
	mov	rax, QWORD PTR -16[rbp]
	lea	rcx, [rax+rax]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -16[rbp]
	imul	rax, rdx
	add	rax, 1
	mov	edx, 0
	div	QWORD PTR -8[rbp]
	lea	rdx, [rcx+rax]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: