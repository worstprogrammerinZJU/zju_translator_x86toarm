n:
S:
sum:
min:
sen:
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
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rax, S[rip]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, [rax+rax]
	lea	rax, sen[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, [rax+rax]
	lea	rax, sen[rip]
	movzx	eax, WORD PTR [rdx+rax]
	cwde
	add	DWORD PTR -12[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L4
	mov	eax, DWORD PTR S[rip]
	cmp	DWORD PTR -12[rbp], eax
	jge	.L5
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L6
	mov	eax, DWORD PTR S[rip]
	cmp	DWORD PTR -12[rbp], eax
	jne	.L7
	mov	eax, DWORD PTR n[rip]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L6
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR sum[rip], 0
	mov	eax, DWORD PTR n[rip]
	mov	DWORD PTR min[rip], eax
	jmp	.L8
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -12[rbp], edx
	cdqe
	lea	rdx, [rax+rax]
	lea	rax, sen[rip]
	movzx	eax, WORD PTR [rdx+rax]
	movsx	edx, ax
	mov	eax, DWORD PTR sum[rip]
	add	eax, edx
	mov	DWORD PTR sum[rip], eax
	mov	edx, DWORD PTR sum[rip]
	mov	eax, DWORD PTR S[rip]
	cmp	edx, eax
	jl	.L10
	jmp	.L11
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, [rax+rax]
	lea	rax, sen[rip]
	movzx	edx, WORD PTR [rdx+rax]
	mov	eax, DWORD PTR sum[rip]
	movsx	edx, dx
	sub	eax, edx
	mov	DWORD PTR sum[rip], eax
	mov	eax, DWORD PTR sum[rip]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, [rdx+rdx]
	lea	rdx, sen[rip]
	movzx	edx, WORD PTR [rcx+rdx]
	movsx	ecx, dx
	sub	eax, ecx
	mov	edx, eax
	mov	eax, DWORD PTR S[rip]
	cmp	edx, eax
	jge	.L12
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR min[rip]
	cmp	edx, eax
	jge	.L13
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR min[rip], eax
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, [rax+rax]
	lea	rax, sen[rip]
	movzx	edx, WORD PTR [rdx+rax]
	mov	eax, DWORD PTR sum[rip]
	movsx	edx, dx
	sub	eax, edx
	mov	DWORD PTR sum[rip], eax
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L9
	mov	eax, DWORD PTR min[rip]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L15
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: