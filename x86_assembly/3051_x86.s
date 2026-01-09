w:
h:
num:
max:
farm:
_Z3dfsii:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR num[rip]
	add	eax, 1
	mov	DWORD PTR num[rip], eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 4
	lea	rdx, [rax+rcx]
	lea	rax, farm[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 46
	cmp	DWORD PTR -4[rbp], 0
	jle	.L2
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 4
	lea	rdx, [rax+rcx]
	lea	rax, farm[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 42
	jne	.L2
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	mov	edi, edx
	call	_Z3dfsii
	mov	eax, DWORD PTR h[rip]
	sub	eax, 1
	cmp	DWORD PTR -4[rbp], eax
	jge	.L3
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 4
	lea	rdx, [rax+rcx]
	lea	rax, farm[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 42
	jne	.L3
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	mov	edi, edx
	call	_Z3dfsii
	cmp	DWORD PTR -8[rbp], 0
	jle	.L4
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 4
	lea	rdx, [rax+rcx]
	lea	rax, farm[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 42
	jne	.L4
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3dfsii
	mov	eax, DWORD PTR w[rip]
	sub	eax, 1
	cmp	DWORD PTR -8[rbp], eax
	jge	.L6
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 4
	lea	rdx, [rax+rcx]
	lea	rax, farm[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 42
	jne	.L6
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3dfsii
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, h[rip]
	mov	rdx, rax
	lea	rax, w[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L8
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 4
	lea	rdx, farm[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR h[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L9
	mov	DWORD PTR max[rip], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L10
	mov	DWORD PTR -8[rbp], 0
	jmp	.L11
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 4
	lea	rdx, [rax+rcx]
	lea	rax, farm[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 42
	jne	.L12
	mov	DWORD PTR num[rip], 0
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3dfsii
	mov	edx, DWORD PTR num[rip]
	mov	eax, DWORD PTR max[rip]
	cmp	edx, eax
	jle	.L12
	mov	eax, DWORD PTR num[rip]
	mov	DWORD PTR max[rip], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR w[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L13
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR h[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L14
	mov	eax, DWORD PTR max[rip]
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