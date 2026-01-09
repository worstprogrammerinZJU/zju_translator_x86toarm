flag1:
n:
flag2:
sign:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	esi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	add	ecx, esi
	movsx	rsi, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	esi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	add	ecx, esi
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	add	ecx, edx
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	add	ecx, edx
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	esi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	add	ecx, esi
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	esi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	add	ecx, esi
	movsx	rsi, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	DWORD PTR [rdx+rax], ecx
	nop
	pop	rbp
	ret
copy:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	mov	DWORD PTR -8[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	add	rax, rcx
	add	rax, rsi
	lea	rcx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	DWORD PTR [rcx+rax], edx
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 24
	jle	.L5
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 24
	jle	.L6
	nop
	nop
	pop	rbp
	ret
search:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], 0
	jmp	.L8
	mov	DWORD PTR -8[rbp], 0
	jmp	.L9
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	je	.L10
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	sign
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 24
	jle	.L11
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 24
	jle	.L12
	mov	eax, 0
	call	copy
	mov	edx, 2500
	mov	esi, 0
	lea	rax, flag1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	memset@PLT
	nop
	leave
	ret
solve:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	eax, DWORD PTR n[rip]
	mov	edx, DWORD PTR n[rip]
	movsx	rcx, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	DWORD PTR [rdx+rax], 1
	mov	edx, DWORD PTR n[rip]
	mov	eax, DWORD PTR n[rip]
	mov	esi, edx
	mov	edi, eax
	call	sign
	mov	eax, 0
	call	copy
	mov	edx, 2500
	mov	esi, 0
	lea	rax, flag1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	memset@PLT
	mov	DWORD PTR -4[rbp], 2
	jmp	.L14
	mov	eax, 0
	call	search
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L15
	mov	eax, DWORD PTR n[rip]
	mov	edx, DWORD PTR n[rip]
	movsx	rcx, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L17
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, 0
	call	solve
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L18
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: