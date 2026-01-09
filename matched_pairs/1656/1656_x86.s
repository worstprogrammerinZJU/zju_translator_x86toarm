p:
snuc:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -28[rbp], edx
	mov	DWORD PTR -32[rbp], ecx
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L2
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L3
	mov	eax, DWORD PTR -32[rbp]
	mov	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rsi]
	lea	rax, p[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], cl
	add	DWORD PTR -8[rbp], 1
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	cmp	DWORD PTR -8[rbp], eax
	jl	.L4
	add	DWORD PTR -4[rbp], 1
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	cmp	DWORD PTR -4[rbp], eax
	jl	.L5
	nop
	nop
	pop	rbp
	ret
test:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -28[rbp], edx
	mov	DWORD PTR -12[rbp], 0
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L7
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L8
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, p[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L9
	add	DWORD PTR -12[rbp], 1
	add	DWORD PTR -8[rbp], 1
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	cmp	DWORD PTR -8[rbp], eax
	jl	.L10
	add	DWORD PTR -4[rbp], 1
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	cmp	DWORD PTR -4[rbp], eax
	jl	.L11
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L13
	lea	rsi, -20[rbp]
	lea	rcx, -16[rbp]
	lea	rdx, -12[rbp]
	lea	rax, -26[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR -26[rbp]
	cmp	al, 87
	jne	.L14
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -16[rbp]
	lea	esi, -1[rdx]
	mov	edx, DWORD PTR -12[rbp]
	lea	edi, -1[rdx]
	mov	ecx, 0
	mov	edx, eax
	call	snuc
	jmp	.L15
	movzx	eax, BYTE PTR -26[rbp]
	cmp	al, 66
	jne	.L16
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -16[rbp]
	lea	esi, -1[rdx]
	mov	edx, DWORD PTR -12[rbp]
	lea	edi, -1[rdx]
	mov	ecx, 1
	mov	edx, eax
	call	snuc
	jmp	.L15
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -16[rbp]
	lea	esi, -1[rdx]
	mov	edx, DWORD PTR -12[rbp]
	lea	ecx, -1[rdx]
	mov	edx, eax
	mov	edi, ecx
	call	test
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L17
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: