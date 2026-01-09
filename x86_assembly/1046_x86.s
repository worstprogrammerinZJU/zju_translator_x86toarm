color:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, 8[rax]
	lea	rax, color[rip]
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, 4[rax]
	lea	rax, color[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rsi, eax
	mov	rax, rsi
	add	rax, rax
	add	rax, rsi
	sal	rax, 2
	lea	rsi, color[rip]
	add	rax, rsi
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 15
	jle	.L3
	lea	rcx, -28[rbp]
	lea	rdx, -24[rbp]
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L4
	mov	DWORD PTR -8[rbp], 200000
	mov	DWORD PTR -4[rbp], 0
	jmp	.L5
	mov	ecx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, color[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, ecx
	sub	esi, eax
	mov	ecx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, color[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, ecx
	sub	eax, edx
	mov	edi, esi
	imul	edi, eax
	mov	ecx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, color[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, ecx
	sub	esi, eax
	mov	ecx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, color[rip+4]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, ecx
	sub	eax, edx
	imul	eax, esi
	add	edi, eax
	mov	ecx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, color[rip+8]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, ecx
	sub	esi, eax
	mov	ecx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, color[rip+8]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, ecx
	sub	eax, edx
	imul	eax, esi
	add	eax, edi
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jge	.L6
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 15
	jle	.L7
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, color[rip+8]
	mov	esi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, color[rip+4]
	mov	r8d, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, color[rip]
	mov	edi, DWORD PTR [rdx+rax]
	mov	ecx, DWORD PTR -28[rbp]
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -20[rbp]
	sub	rsp, 8
	push	rsi
	mov	r9d, r8d
	mov	r8d, edi
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	rsp, 16
	lea	rcx, -28[rbp]
	lea	rdx, -24[rbp]
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, -1
	jne	.L8
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, -1
	jne	.L8
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, -1
	jne	.L8
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: