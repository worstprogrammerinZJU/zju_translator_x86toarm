main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -36864[rsp]
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 3184
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 1
	jmp	.L3
	lea	rdx, -20032[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	add	rax, rax
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, WORD PTR -20032[rbp+rax*2]
	cwde
	mov	edx, DWORD PTR -8[rbp]
	cdqe
	mov	WORD PTR -40048[rbp+rax*2], dx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L4
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -8[rbp], 1
	jmp	.L5
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, WORD PTR -20032[rbp+rax*2]
	cwde
	cmp	DWORD PTR -8[rbp], eax
	je	.L6
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, WORD PTR -40048[rbp+rax*2]
	movsx	ecx, ax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	edx, WORD PTR -20032[rbp+rax*2]
	movsx	rax, ecx
	mov	WORD PTR -20032[rbp+rax*2], dx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, WORD PTR -20032[rbp+rax*2]
	movsx	ecx, ax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	edx, WORD PTR -40048[rbp+rax*2]
	movsx	rax, ecx
	mov	WORD PTR -40048[rbp+rax*2], dx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L7
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L8
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: