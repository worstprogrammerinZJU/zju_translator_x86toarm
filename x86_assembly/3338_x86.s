w:
h:
s:
cake:
wide:
height:
_Z3reciiii:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -28[rbp], edx
	mov	DWORD PTR -32[rbp], ecx
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jle	.L2
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -32[rbp]
	jle	.L3
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L4
	mov	eax, DWORD PTR -20[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, [rax+rcx]
	lea	rax, wide[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	mov	eax, DWORD PTR -28[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, [rax+rcx]
	lea	rax, wide[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -32[rbp]
	jl	.L5
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L6
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, height[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, height[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L7
	nop
	nop
	pop	rbp
	ret
_Z3DFSii:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, cake[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, [rax+rcx]
	lea	rax, wide[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	test	eax, eax
	jne	.L9
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, cake[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	test	eax, eax
	jne	.L9
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3DFSii
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, [rax+rcx]
	lea	rax, wide[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	test	eax, eax
	jne	.L10
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, cake[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	test	eax, eax
	jne	.L10
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3DFSii
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, height[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	test	eax, eax
	jne	.L11
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, cake[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	test	eax, eax
	jne	.L11
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	mov	edi, edx
	call	_Z3DFSii
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, height[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	test	eax, eax
	jne	.L13
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, cake[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	test	eax, eax
	jne	.L13
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	mov	edi, edx
	call	_Z3DFSii
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	jmp	.L15
	mov	edx, 400
	mov	esi, 0
	lea	rax, cake[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	edx, 420
	mov	esi, 0
	lea	rax, wide[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	edx, 420
	mov	esi, 0
	lea	rax, height[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR s[rip], 0
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR w[rip]
	mov	eax, DWORD PTR h[rip]
	mov	ecx, edx
	mov	edx, eax
	mov	esi, 0
	mov	edi, 0
	call	_Z3reciiii
	mov	DWORD PTR -4[rbp], 0
	jmp	.L16
	lea	rsi, -28[rbp]
	lea	rcx, -24[rbp]
	lea	rdx, -20[rbp]
	lea	rax, -16[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	ecx, DWORD PTR -28[rbp]
	mov	edx, DWORD PTR -24[rbp]
	mov	esi, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -16[rbp]
	mov	edi, eax
	call	_Z3reciiii
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L17
	mov	DWORD PTR -4[rbp], 0
	jmp	.L18
	mov	DWORD PTR -8[rbp], 0
	jmp	.L19
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, cake[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	test	eax, eax
	jne	.L20
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3DFSii
	mov	eax, DWORD PTR s[rip]
	add	eax, 1
	mov	DWORD PTR s[rip], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR h[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L21
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR w[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L22
	mov	eax, DWORD PTR s[rip]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, h[rip]
	mov	rdx, rax
	lea	rax, w[rip]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR w[rip]
	test	eax, eax
	jne	.L23
	mov	eax, DWORD PTR h[rip]
	test	eax, eax
	je	.L24
	mov	eax, 1
	jmp	.L25
	mov	eax, 0
	test	al, al
	jne	.L26
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: