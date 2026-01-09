min:
m:
t:
wise:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, t[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, m[rip]
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L4
	mov	DWORD PTR wise[rip], 0
	mov	DWORD PTR -4[rbp], 1
	jmp	.L5
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, wise[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, t[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, wise[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L6
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	add	rax, 301
	lea	rdx, 0[0+rax*4]
	lea	rax, wise[rip]
	mov	DWORD PTR [rdx+rax], 0
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L7
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	cdqe
	add	rax, 301
	lea	rdx, 0[0+rax*4]
	lea	rax, wise[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, t[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	rax, 301
	lea	rdx, 0[0+rax*4]
	lea	rax, wise[rip]
	mov	DWORD PTR [rdx+rax], ecx
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jns	.L8
	mov	DWORD PTR min[rip], 1000000000
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	mov	r9d, 0
	mov	r8d, 0
	mov	ecx, 0
	mov	edx, 0
	mov	esi, eax
	mov	edi, 1
	call	dp
	mov	eax, DWORD PTR min[rip]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -8[rbp]
	test	eax, eax
	jne	.L9
	mov	eax, 0
	leave
	ret
dp:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -28[rbp], edx
	mov	DWORD PTR -32[rbp], ecx
	mov	DWORD PTR -36[rbp], r8d
	mov	DWORD PTR -40[rbp], r9d
	mov	eax, DWORD PTR min[rip]
	cmp	DWORD PTR -32[rbp], eax
	jge	.L16
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jle	.L14
	mov	eax, DWORD PTR -32[rbp]
	mov	DWORD PTR min[rip], eax
	jmp	.L11
	cmp	DWORD PTR -36[rbp], 0
	jne	.L15
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, t[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, m[rip]
	mov	eax, DWORD PTR [rdx+rax]
	imul	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -32[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	lea	edi, 1[rax]
	mov	esi, DWORD PTR -40[rbp]
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -24[rbp]
	mov	r9d, esi
	mov	r8d, 0
	mov	esi, eax
	call	dp
	cmp	DWORD PTR -40[rbp], 1
	jg	.L11
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, wise[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -28[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	add	rax, 301
	lea	rdx, 0[0+rax*4]
	lea	rax, wise[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, ecx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	lea	edi, 1[rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, m[rip]
	mov	eax, DWORD PTR [rdx+rax]
	imul	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -32[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -24[rbp]
	lea	esi, -1[rax]
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	r9d, edi
	mov	r8d, 1
	mov	edi, eax
	call	dp
	jmp	.L11
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, t[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, m[rip]
	mov	eax, DWORD PTR [rdx+rax]
	imul	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -32[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -24[rbp]
	lea	esi, -1[rax]
	mov	edi, DWORD PTR -40[rbp]
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	r9d, edi
	mov	r8d, 1
	mov	edi, eax
	call	dp
	cmp	DWORD PTR -40[rbp], 1
	jg	.L11
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	cdqe
	add	rax, 301
	lea	rdx, 0[0+rax*4]
	lea	rax, wise[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -28[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, wise[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, ecx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	lea	esi, 1[rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, m[rip]
	mov	eax, DWORD PTR [rdx+rax]
	imul	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -32[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	lea	edi, 1[rax]
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -24[rbp]
	mov	r9d, esi
	mov	r8d, 0
	mov	esi, eax
	call	dp
	jmp	.L11
	nop
	leave
	ret
0:
1:
2:
3:
4: