main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -40960[rsp]
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 272
	mov	QWORD PTR -41232[rbp], 0
	mov	QWORD PTR -41224[rbp], 0
	lea	rax, -41216[rbp]
	mov	edx, 39984
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -12[rbp], 0
	jmp	.L2
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	lea	rdx, -1232[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L4
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	DWORD PTR -8[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -1232[rbp+rax*4]
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	DWORD PTR -16[rbp], edx
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	movzx	eax, BYTE PTR -41232[rbp+rax]
	cmp	al, 1
	je	.L15
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	BYTE PTR -41232[rbp+rax], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L8
	jmp	.L7
	nop
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jne	.L9
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L14
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	lea	rax, -41232[rbp]
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	add	DWORD PTR -4[rbp], 1
	jmp	.L11
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	lea	rax, -41232[rbp]
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L12
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: