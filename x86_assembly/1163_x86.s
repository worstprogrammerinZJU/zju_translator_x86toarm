main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 832
	mov	DWORD PTR -12[rbp], 0
	lea	rdx, -816[rbp]
	lea	rax, -820[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	mov	eax, 1
	sub	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -12[rbp], eax
	lea	rcx, -816[rbp]
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 4
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 4
	add	rax, rbp
	sub	rax, 816
	mov	ecx, DWORD PTR [rax]
	mov	eax, 1
	sub	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 4
	add	rax, rbp
	sub	rax, 816
	mov	eax, DWORD PTR [rax]
	add	ecx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 4
	add	rax, rbp
	sub	rax, 816
	mov	DWORD PTR [rax], ecx
	mov	DWORD PTR -8[rbp], 1
	jmp	.L3
	lea	rcx, -816[rbp]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	sal	rax, 2
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	mov	esi, DWORD PTR -816[rbp+rax*4]
	mov	eax, 1
	sub	eax, DWORD PTR -12[rbp]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rcx, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	mov	edx, DWORD PTR -816[rbp+rax*4]
	mov	eax, 1
	sub	eax, DWORD PTR -12[rbp]
	mov	ecx, DWORD PTR -8[rbp]
	sub	ecx, 1
	movsx	rdi, ecx
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	add	rax, rcx
	sal	rax, 2
	add	rax, rdi
	mov	eax, DWORD PTR -816[rbp+rax*4]
	cmp	edx, eax
	cmovge	eax, edx
	lea	ecx, [rsi+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	mov	DWORD PTR -816[rbp+rax*4], ecx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jl	.L4
	lea	rcx, -816[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	sal	rax, 2
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	mov	ecx, DWORD PTR -816[rbp+rax*4]
	mov	eax, 1
	sub	eax, DWORD PTR -12[rbp]
	mov	edx, DWORD PTR -4[rbp]
	sub	edx, 1
	movsx	rsi, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	mov	eax, DWORD PTR -816[rbp+rax*4]
	add	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	mov	DWORD PTR -816[rbp+rax*4], ecx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -820[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L5
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 4
	add	rax, rbp
	sub	rax, 816
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	mov	eax, DWORD PTR -816[rbp+rax*4]
	cmp	DWORD PTR -8[rbp], eax
	jge	.L7
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	mov	eax, DWORD PTR -816[rbp+rax*4]
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -820[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L8
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
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