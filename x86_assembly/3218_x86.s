line:
str:
len:
makeline:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, str[rip]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -4[rbp], eax
	jmp	.L2
	lea	rax, str[rip]
	mov	rsi, rax
	lea	rax, line[rip]
	mov	rdi, rax
	call	strcat@PLT
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, line[rip]
	mov	rdi, rax
	call	strcat@PLT
	lea	rax, line[rip]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR len[rip], eax
	lea	rax, str[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L3
	mov	eax, DWORD PTR len[rip]
	sub	eax, 1
	mov	DWORD PTR len[rip], eax
	mov	eax, DWORD PTR len[rip]
	cdqe
	lea	rdx, line[rip]
	mov	BYTE PTR [rax+rdx], 0
	mov	eax, -1
	jmp	.L4
	lea	rax, str[rip]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR len[rip]
	mov	eax, DWORD PTR -4[rbp]
	add	eax, edx
	cmp	eax, 75
	jle	.L5
	mov	eax, DWORD PTR len[rip]
	sub	eax, 1
	mov	DWORD PTR len[rip], eax
	mov	eax, DWORD PTR len[rip]
	cdqe
	lea	rdx, line[rip]
	mov	BYTE PTR [rax+rdx], 0
	mov	eax, 1
	leave
	ret
left:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	rax, line[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	nop
	pop	rbp
	ret
right:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	edx, DWORD PTR len[rip]
	mov	eax, 75
	sub	eax, edx
	mov	DWORD PTR -4[rbp], eax
	jmp	.L8
	mov	edi, 32
	call	putchar@PLT
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jg	.L9
	lea	rax, line[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	nop
	leave
	ret
center:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	edx, DWORD PTR len[rip]
	mov	eax, 75
	sub	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	sub	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L11
	mov	edi, 32
	call	putchar@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L12
	lea	rax, line[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L13
	mov	edi, 32
	call	putchar@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L14
	mov	edi, 10
	call	putchar@PLT
	nop
	leave
	ret
justify:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	edx, DWORD PTR len[rip]
	mov	eax, 75
	sub	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L16
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, line[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 32
	jne	.L17
	add	DWORD PTR -12[rbp], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR len[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L18
	cmp	DWORD PTR -12[rbp], 0
	je	.L19
	mov	eax, DWORD PTR -8[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	DWORD PTR -8[rbp], edx
	mov	DWORD PTR -4[rbp], 0
	jmp	.L20
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, line[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 32
	jne	.L21
	mov	DWORD PTR -12[rbp], 0
	jmp	.L22
	mov	edi, 32
	call	putchar@PLT
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jl	.L23
	cmp	DWORD PTR -8[rbp], 0
	jle	.L21
	mov	edi, 32
	call	putchar@PLT
	sub	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, line[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR len[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L24
	mov	edi, 10
	call	putchar@PLT
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, str[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR str[rip]
	cmp	al, 76
	jne	.L26
	mov	DWORD PTR -4[rbp], 0
	jmp	.L27
	movzx	eax, BYTE PTR str[rip]
	cmp	al, 82
	jne	.L28
	mov	DWORD PTR -4[rbp], 1
	jmp	.L27
	movzx	eax, BYTE PTR str[rip]
	cmp	al, 67
	jne	.L29
	mov	DWORD PTR -4[rbp], 2
	jmp	.L27
	mov	DWORD PTR -4[rbp], 3
	lea	rax, str[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L30
	cmp	DWORD PTR -4[rbp], 0
	jne	.L31
	mov	eax, 0
	call	left
	jmp	.L32
	cmp	DWORD PTR -4[rbp], 1
	jne	.L33
	mov	eax, 0
	call	right
	jmp	.L32
	cmp	DWORD PTR -4[rbp], 2
	jne	.L34
	mov	eax, 0
	call	center
	jmp	.L32
	mov	eax, 0
	call	justify
	mov	DWORD PTR len[rip], 0
	mov	BYTE PTR line[rip], 0
	mov	eax, 0
	call	makeline
	cmp	eax, 1
	je	.L35
	cmp	DWORD PTR -4[rbp], 0
	jne	.L36
	mov	eax, 0
	call	left
	jmp	.L37
	cmp	DWORD PTR -4[rbp], 1
	jne	.L38
	mov	eax, 0
	call	right
	jmp	.L37
	cmp	DWORD PTR -4[rbp], 2
	jne	.L39
	mov	eax, 0
	call	center
	jmp	.L37
	mov	eax, 0
	call	left
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: