e:
r:
f:
eric:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -20[rbp], edi
	cmp	DWORD PTR -20[rbp], 0
	jne	.L2
	fldz
	jmp	.L3
	mov	DWORD PTR -4[rbp], 29
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, e[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -20[rbp], eax
	jge	.L8
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jns	.L7
	jmp	.L6
	nop
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, e[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, f[rip]
	fld	TBYTE PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, r[rip]
	fld	TBYTE PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	mov	DWORD PTR -48[rbp], eax
	fild	DWORD PTR -48[rbp]
	fmulp	st(1), st
	faddp	st(1), st
	fstp	TBYTE PTR -48[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	edi, eax
	call	eric
	fld	TBYTE PTR -48[rbp]
	faddp	st(1), st
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L10
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	mov	edi, eax
	call	eric
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -20[rbp], eax
	fild	DWORD PTR -20[rbp]
	fdivp	st(1), st
	fld	st(0)
	faddp	st(1), st
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -20[rbp], eax
	fild	DWORD PTR -20[rbp]
	fdivp	st(1), st
	lea	rsp, -16[rsp]
	fstp	TBYTE PTR [rsp]
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	rsp, 16
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L11
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: