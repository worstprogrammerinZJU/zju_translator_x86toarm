power2:
power3:
mod:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR power2[rip], 1
	jmp	.L2
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR power2[rip]
	add	eax, eax
	mov	DWORD PTR power2[rip], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	and	eax, 1
	test	eax, eax
	je	.L3
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
term:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR power3[rip], 1
	mov	DWORD PTR -4[rbp], 0
	jmp	.L6
	mov	edx, DWORD PTR power3[rip]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	mov	DWORD PTR power3[rip], eax
	add	DWORD PTR -4[rbp], 1
	mov	edx, DWORD PTR power2[rip]
	mov	eax, DWORD PTR power3[rip]
	imul	eax, edx
	cmp	DWORD PTR -20[rbp], eax
	jnb	.L7
	sub	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR power3[rip]
	mov	edx, eax
	mov	eax, 2863311531
	imul	rax, rdx
	shr	rax, 32
	shr	eax
	mov	DWORD PTR power3[rip], eax
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 832
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L10
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L11
	mov	eax, DWORD PTR -20[rbp]
	mov	edi, eax
	call	mod
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	mov	DWORD PTR -432[rbp+rdx*4], eax
	mov	eax, DWORD PTR -20[rbp]
	mov	edi, eax
	call	term
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	mov	DWORD PTR -832[rbp+rdx*4], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	mov	ecx, DWORD PTR power2[rip]
	mov	edx, DWORD PTR power3[rip]
	imul	edx, ecx
	sub	eax, edx
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	test	eax, eax
	jne	.L12
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -12[rbp], 0
	jmp	.L13
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -832[rbp+rax*4]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -432[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L14
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L15
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: