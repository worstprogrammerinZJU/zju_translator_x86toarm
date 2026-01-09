field:
x:
y:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -20[rbp]
	mov	rcx, rax
	lea	rax, y[rip]
	mov	rdx, rax
	lea	rax, x[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rsi, -28[rbp]
	lea	rcx, -24[rbp]
	lea	rdx, -16[rbp]
	lea	rax, -12[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -28[rbp]
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -24[rbp]
	mov	edx, DWORD PTR -16[rbp]
	lea	esi, -1[rdx]
	mov	edx, DWORD PTR -12[rbp]
	lea	ecx, -1[rdx]
	mov	edx, eax
	mov	edi, ecx
	call	_Z10notinrangeiii
	jmp	.L4
	mov	eax, DWORD PTR -24[rbp]
	mov	edx, DWORD PTR -16[rbp]
	lea	esi, -1[rdx]
	mov	edx, DWORD PTR -12[rbp]
	lea	ecx, -1[rdx]
	mov	edx, eax
	mov	edi, ecx
	call	_Z7inrangeiii
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L5
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L6
	mov	DWORD PTR -16[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -12[rbp]
	mov	edx, DWORD PTR -16[rbp]
	movsx	rcx, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, field[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	test	eax, eax
	jne	.L8
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 1
	mov	DWORD PTR -16[rbp], eax
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR y[rip]
	cmp	edx, eax
	jl	.L9
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	mov	DWORD PTR -12[rbp], eax
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR x[rip]
	cmp	edx, eax
	jl	.L10
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	ret
_Z7inrangeiii:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -36[rbp], edi
	mov	DWORD PTR -40[rbp], esi
	mov	DWORD PTR -44[rbp], edx
	mov	eax, DWORD PTR -44[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	add	eax, 1
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	sub	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	edx, DWORD PTR -40[rbp]
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	add	eax, 1
	mov	DWORD PTR -24[rbp], eax
	cmp	DWORD PTR -12[rbp], 0
	jns	.L13
	mov	DWORD PTR -12[rbp], 0
	cmp	DWORD PTR -20[rbp], 0
	jns	.L14
	mov	DWORD PTR -20[rbp], 0
	mov	eax, DWORD PTR x[rip]
	cmp	DWORD PTR -16[rbp], eax
	jle	.L15
	mov	eax, DWORD PTR x[rip]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR y[rip]
	cmp	DWORD PTR -24[rbp], eax
	jle	.L16
	mov	eax, DWORD PTR y[rip]
	mov	DWORD PTR -24[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L17
	mov	DWORD PTR -8[rbp], 0
	jmp	.L18
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, field[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR y[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L19
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L20
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L21
	mov	DWORD PTR -8[rbp], 0
	jmp	.L22
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, field[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR y[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L23
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR x[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L24
	mov	DWORD PTR -8[rbp], 0
	jmp	.L25
	mov	DWORD PTR -4[rbp], 0
	jmp	.L26
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, field[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR x[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L27
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L28
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L29
	mov	DWORD PTR -4[rbp], 0
	jmp	.L30
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, field[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR x[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L31
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR y[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L32
	nop
	nop
	pop	rbp
	ret
_Z10notinrangeiii:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -36[rbp], edi
	mov	DWORD PTR -40[rbp], esi
	mov	DWORD PTR -44[rbp], edx
	mov	eax, DWORD PTR -44[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	add	eax, 1
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	sub	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	edx, DWORD PTR -40[rbp]
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	add	eax, 1
	mov	DWORD PTR -24[rbp], eax
	cmp	DWORD PTR -12[rbp], 0
	jns	.L34
	mov	DWORD PTR -12[rbp], 0
	cmp	DWORD PTR -20[rbp], 0
	jns	.L35
	mov	DWORD PTR -20[rbp], 0
	mov	eax, DWORD PTR x[rip]
	cmp	DWORD PTR -16[rbp], eax
	jle	.L36
	mov	eax, DWORD PTR x[rip]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR y[rip]
	cmp	DWORD PTR -24[rbp], eax
	jle	.L37
	mov	eax, DWORD PTR y[rip]
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L38
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L39
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, field[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jl	.L40
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jl	.L41
	nop
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L44
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L44
	lea	rax, _ZStL8__ioinit[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, _ZStL8__ioinit[rip]
	mov	rsi, rax
	mov	rdi, rax
	call	__cxa_atexit@PLT
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	esi, 65535
	mov	edi, 1
	pop	rbp
	ret
0:
1:
2:
3:
4: