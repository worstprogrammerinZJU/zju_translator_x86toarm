n:
d:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	jmp	.L2
	mov	eax, DWORD PTR n[rip]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 999
	jle	.L3
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 9999
	jg	.L3
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 1111
	je	.L3
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 2222
	je	.L3
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 3333
	je	.L3
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 4444
	je	.L3
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 5555
	je	.L3
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 6666
	je	.L3
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 7777
	je	.L3
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 8888
	je	.L3
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 9999
	jne	.L4
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L2
	mov	DWORD PTR -16[rbp], 0
	jmp	.L5
	mov	DWORD PTR d[rip+12], 0
	mov	eax, DWORD PTR d[rip+12]
	mov	DWORD PTR d[rip+8], eax
	mov	eax, DWORD PTR d[rip+8]
	mov	DWORD PTR d[rip+4], eax
	mov	eax, DWORD PTR d[rip+4]
	mov	DWORD PTR d[rip], eax
	mov	DWORD PTR -12[rbp], 0
	mov	eax, DWORD PTR n[rip]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L6
	mov	ecx, DWORD PTR -8[rbp]
	movsx	rax, ecx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	DWORD PTR [rcx+rax], edx
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -8[rbp], eax
	cmp	DWORD PTR -8[rbp], 0
	jg	.L7
	mov	DWORD PTR -4[rbp], 0
	jmp	.L8
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L9
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jge	.L10
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, d[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, d[rip]
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L11
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L12
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L13
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, ecx
	mov	DWORD PTR -20[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L14
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L15
	sub	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jne	.L16
	cmp	DWORD PTR -4[rbp], 0
	jns	.L17
	mov	DWORD PTR -24[rbp], 0
	jmp	.L18
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, ecx
	mov	DWORD PTR -24[rbp], eax
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jns	.L19
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR n[rip], eax
	add	DWORD PTR -16[rbp], 1
	mov	ecx, DWORD PTR n[rip]
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 6174
	je	.L20
	mov	eax, DWORD PTR n[rip]
	test	eax, eax
	jne	.L21
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	cmp	eax, -1
	jne	.L22
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: