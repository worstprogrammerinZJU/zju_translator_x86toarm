main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 416
	mov	DWORD PTR -8[rbp], 1
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	lea	rcx, -416[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L4
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L5
	lea	rcx, -416[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 2
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L6
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -12[rbp]
	mov	ecx, eax
	sar	ecx, 31
	shr	ecx, 31
	add	eax, ecx
	and	eax, 1
	sub	eax, ecx
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -4[rbp], eax
	jmp	.L7
	lea	rcx, -416[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	sub	DWORD PTR -4[rbp], 2
	cmp	DWORD PTR -4[rbp], 0
	jg	.L8
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -12[rbp]
	test	eax, eax
	jne	.L9
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: