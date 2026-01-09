set:
p:
q:
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
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR p[rip], 0
	mov	DWORD PTR q[rip], 0
	jmp	.L3
	lea	rdx, -12[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cmp	edx, eax
	jge	.L4
	mov	edx, DWORD PTR p[rip]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	lea	rdx, set[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	edx, DWORD PTR p[rip]
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	lea	rdx, set[rip+4]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR p[rip]
	add	eax, 1
	mov	DWORD PTR p[rip], eax
	jmp	.L5
	mov	edx, DWORD PTR q[rip]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, edx
	add	rdx, 10000
	lea	rcx, 0[0+rdx*8]
	lea	rdx, set[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	edx, DWORD PTR q[rip]
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	lea	rdx, set[rip+80004]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR q[rip]
	add	eax, 1
	mov	DWORD PTR q[rip], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L6
	mov	eax, DWORD PTR p[rip]
	sub	eax, 1
	mov	edx, 0
	mov	esi, eax
	mov	edi, 0
	call	quick
	mov	eax, DWORD PTR q[rip]
	sub	eax, 1
	mov	edx, 1
	mov	esi, eax
	mov	edi, 0
	call	quick
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, set[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cmp	edx, eax
	jge	.L8
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, set[rip+4]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR p[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L9
	mov	eax, DWORD PTR q[rip]
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L10
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	rax, 10000
	lea	rdx, 0[0+rax*8]
	lea	rax, set[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cmp	edx, eax
	jge	.L11
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, set[rip+80004]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	mov	DWORD PTR -12[rbp], eax
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jns	.L12
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	jne	.L13
	mov	eax, 0
	leave
	ret
quick:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -28[rbp], edx
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jge	.L24
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	imul	rax, rax, 10000
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, set[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -28[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	mov	ecx, DWORD PTR -4[rbp]
	movsx	rcx, ecx
	imul	rax, rax, 10000
	add	rax, rcx
	add	rax, rax
	add	rax, rsi
	lea	rcx, 0[0+rax*4]
	lea	rax, set[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jle	.L20
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jne	.L18
	sub	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	imul	rax, rax, 10000
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, set[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -28[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	mov	ecx, DWORD PTR -8[rbp]
	movsx	rcx, ecx
	imul	rax, rax, 10000
	add	rax, rcx
	add	rax, rax
	add	rax, rsi
	lea	rcx, 0[0+rax*4]
	lea	rax, set[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jge	.L19
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jne	.L20
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jge	.L25
	mov	edx, DWORD PTR -28[rbp]
	mov	ecx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, ecx
	mov	edi, eax
	call	swap
	jmp	.L18
	nop
	mov	edx, DWORD PTR -28[rbp]
	mov	ecx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, ecx
	mov	edi, eax
	call	swap
	mov	eax, DWORD PTR -8[rbp]
	lea	ecx, -1[rax]
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, ecx
	mov	edi, eax
	call	quick
	mov	eax, DWORD PTR -8[rbp]
	lea	ecx, 1[rax]
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, eax
	mov	edi, ecx
	call	quick
	nop
	leave
	ret
swap:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -28[rbp], edx
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	imul	rax, rax, 10000
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, set[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	imul	rax, rax, 10000
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, set[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rcx, edx
	mov	edx, DWORD PTR -28[rbp]
	movsx	rdx, edx
	imul	rdx, rdx, 10000
	add	rdx, rcx
	lea	rcx, 0[0+rdx*8]
	lea	rdx, set[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	imul	rax, rax, 10000
	add	rax, rdx
	lea	rcx, 0[0+rax*8]
	lea	rdx, set[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	imul	rax, rax, 10000
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, set[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	imul	rax, rax, 10000
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, set[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rcx, edx
	mov	edx, DWORD PTR -28[rbp]
	movsx	rdx, edx
	imul	rdx, rdx, 10000
	add	rdx, rcx
	lea	rcx, 0[0+rdx*8]
	lea	rdx, set[rip+4]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	imul	rax, rax, 10000
	add	rax, rdx
	lea	rcx, 0[0+rax*8]
	lea	rdx, set[rip+4]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	nop
	pop	rbp
	ret
0:
1:
2:
3:
4: