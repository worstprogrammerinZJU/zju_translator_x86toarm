main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -499712[rsp]
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 320
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L2
	mov	DWORD PTR -20[rbp], -10001
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	lea	rdx, -500032[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	rax, rax
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, WORD PTR -500032[rbp+rax*2]
	cwde
	cmp	DWORD PTR -20[rbp], eax
	jge	.L4
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, WORD PTR -500032[rbp+rax*2]
	cwde
	mov	DWORD PTR -20[rbp], eax
	jmp	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, WORD PTR -500032[rbp+rax*2]
	cwde
	cmp	DWORD PTR -24[rbp], eax
	jge	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, WORD PTR -500032[rbp+rax*2]
	cwde
	mov	DWORD PTR -24[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L6
	mov	DWORD PTR -16[rbp], -10001
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, WORD PTR -500032[rbp+rax*2]
	cwde
	add	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jle	.L8
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -16[rbp], eax
	cmp	DWORD PTR -12[rbp], 0
	jns	.L9
	mov	DWORD PTR -12[rbp], 0
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	edx, DWORD PTR -16[rbp]
	mov	DWORD PTR -200032[rbp+rax*4], edx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L10
	mov	DWORD PTR -16[rbp], -10001
	mov	DWORD PTR -12[rbp], 0
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	cdqe
	mov	DWORD PTR -400032[rbp+rax*4], 0
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L11
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, WORD PTR -500032[rbp+rax*2]
	cwde
	add	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jle	.L12
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -16[rbp], eax
	cmp	DWORD PTR -12[rbp], 0
	jns	.L13
	mov	DWORD PTR -12[rbp], 0
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	cdqe
	mov	edx, DWORD PTR -16[rbp]
	mov	DWORD PTR -400032[rbp+rax*4], edx
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jg	.L14
	mov	DWORD PTR -16[rbp], -10001
	mov	DWORD PTR -4[rbp], 0
	jmp	.L15
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	edx, DWORD PTR -200032[rbp+rax*4]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -400032[rbp+rax*4]
	add	eax, edx
	cmp	DWORD PTR -16[rbp], eax
	jge	.L16
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	edx, DWORD PTR -200032[rbp+rax*4]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -400032[rbp+rax*4]
	add	eax, edx
	mov	DWORD PTR -16[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L17
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jne	.L18
	mov	eax, DWORD PTR -24[rbp]
	add	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L19
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: