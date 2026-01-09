main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -36864[rsp]
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 3168
	mov	DWORD PTR -12[rbp], 1
	lea	rdx, -40016[rbp]
	lea	rax, -40020[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -40020[rbp]
	sub	eax, 1
	mov	DWORD PTR -16[rbp], eax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	lea	rax, -40024[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -40016[rbp]
	mov	eax, DWORD PTR -40024[rbp]
	cmp	edx, eax
	jge	.L3
	mov	eax, DWORD PTR -16[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -16[rbp], edx
	mov	edx, DWORD PTR -40024[rbp]
	cdqe
	mov	DWORD PTR -40016[rbp+rax*4], edx
	jmp	.L4
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -12[rbp], edx
	mov	edx, DWORD PTR -40024[rbp]
	cdqe
	mov	DWORD PTR -40016[rbp+rax*4], edx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -40020[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L5
	mov	eax, DWORD PTR -40020[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	add	eax, 1
	mov	DWORD PTR -40024[rbp], eax
	mov	eax, DWORD PTR -40024[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jne	.L6
	mov	eax, DWORD PTR -40016[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L7
	mov	eax, DWORD PTR -40024[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L8
	mov	DWORD PTR -4[rbp], 1
	jmp	.L9
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L10
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	edx, DWORD PTR -40016[rbp+rax*4]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -40016[rbp+rax*4]
	cmp	edx, eax
	jge	.L11
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -40016[rbp+rax*4]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -40016[rbp+rax*4]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	DWORD PTR -40016[rbp+rax*4], edx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -16[rbp]
	mov	DWORD PTR -40016[rbp+rax*4], edx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L12
	add	DWORD PTR -4[rbp], 1
	mov	edx, DWORD PTR -40024[rbp]
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, edx
	cmp	DWORD PTR -4[rbp], eax
	jle	.L13
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	cdqe
	mov	eax, DWORD PTR -40016[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L7
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L14
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L15
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	edx, DWORD PTR -40016[rbp+rax*4]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -40016[rbp+rax*4]
	cmp	edx, eax
	jle	.L16
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -40016[rbp+rax*4]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -40016[rbp+rax*4]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	DWORD PTR -40016[rbp+rax*4], edx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -16[rbp]
	mov	DWORD PTR -40016[rbp+rax*4], edx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -40020[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L17
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -40024[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L18
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	cdqe
	mov	eax, DWORD PTR -40016[rbp+rax*4]
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