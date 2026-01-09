w:
h:
count:
t:
p:
_Z3dfsii:
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
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, p[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	eax, 1
	je	.L7
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, p[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	mov	eax, DWORD PTR count[rip]
	add	eax, 1
	mov	DWORD PTR count[rip], eax
	cmp	DWORD PTR -4[rbp], 0
	jle	.L4
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, t[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 46
	jne	.L4
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	mov	edi, edx
	call	_Z3dfsii
	cmp	DWORD PTR -8[rbp], 0
	jle	.L5
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, t[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 46
	jne	.L5
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3dfsii
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR w[rip]
	cmp	edx, eax
	jge	.L6
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, t[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 46
	jne	.L6
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3dfsii
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR h[rip]
	cmp	edx, eax
	jge	.L1
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, t[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 46
	jne	.L1
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	mov	edi, edx
	call	_Z3dfsii
	jmp	.L1
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	jmp	.L9
	mov	DWORD PTR count[rip], 0
	mov	edx, 900
	mov	esi, 0
	lea	rax, p[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, t[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR h[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L11
	mov	DWORD PTR -4[rbp], 0
	jmp	.L12
	mov	DWORD PTR -8[rbp], 0
	jmp	.L13
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, t[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 64
	jne	.L14
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3dfsii
	jmp	.L15
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR w[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L16
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR h[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L17
	mov	eax, DWORD PTR count[rip]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, h[rip]
	mov	rdx, rax
	lea	rax, w[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR w[rip]
	test	eax, eax
	jne	.L18
	mov	eax, DWORD PTR h[rip]
	test	eax, eax
	je	.L19
	mov	eax, 1
	jmp	.L20
	mov	eax, 0
	test	al, al
	jne	.L21
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: