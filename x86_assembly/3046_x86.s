family:
coefficient:
temp:
T:
A:
S:
B:
Q:
multiply:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, coefficient[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, temp[rip]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR Q[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L3
	mov	DWORD PTR -4[rbp], 1
	jmp	.L4
	mov	DWORD PTR -8[rbp], 0
	jmp	.L5
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	add	eax, edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, temp[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, coefficient[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	esi, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	add	eax, esi
	add	ecx, edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, temp[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR Q[rip]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L6
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, family[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L7
	mov	edx, DWORD PTR Q[rip]
	mov	eax, DWORD PTR B[rip]
	cmp	edx, eax
	jge	.L8
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, family[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR Q[rip]
	add	eax, edx
	mov	DWORD PTR Q[rip], eax
	jmp	.L9
	mov	eax, DWORD PTR B[rip]
	mov	DWORD PTR Q[rip], eax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, temp[rip]
	mov	edx, DWORD PTR [rdx+rax]
	movsx	rax, edx
	imul	rax, rax, 1125899907
	shr	rax, 32
	sar	eax, 18
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 1000000
	mov	eax, edx
	sub	eax, ecx
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, coefficient[rip]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR Q[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L11
	nop
	nop
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	r8, B[rip]
	lea	rax, S[rip]
	mov	rcx, rax
	lea	rax, A[rip]
	mov	rdx, rax
	lea	rax, T[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L13
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	lea	rcx, 0[0+rdx*4]
	lea	rdx, family[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	lea	ecx, 1[rdx]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, family[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR A[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L14
	mov	eax, DWORD PTR family[rip+4]
	mov	DWORD PTR Q[rip], eax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L15
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, coefficient[rip]
	mov	DWORD PTR [rdx+rax], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR Q[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L16
	mov	DWORD PTR -4[rbp], 2
	jmp	.L17
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	multiply
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR T[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L18
	mov	eax, DWORD PTR S[rip]
	mov	DWORD PTR -4[rbp], eax
	mov	DWORD PTR -8[rbp], 0
	jmp	.L19
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, coefficient[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	edx, DWORD PTR -8[rbp]
	movsx	rax, edx
	imul	rax, rax, 1125899907
	shr	rax, 32
	sar	eax, 18
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 1000000
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR B[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L20
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