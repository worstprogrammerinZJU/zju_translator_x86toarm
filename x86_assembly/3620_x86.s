N:
M:
K:
k:
farm:
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
	sal	rax, 2
	add	rax, rdx
	lea	rsi, 0[0+rax*4]
	add	rax, rsi
	sal	rax, 2
	add	rax, rdx
	lea	rdx, [rax+rcx]
	lea	rax, farm[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	mov	eax, DWORD PTR k[rip]
	add	eax, 1
	mov	DWORD PTR k[rip], eax
	cmp	DWORD PTR -4[rbp], 1
	jle	.L2
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rsi, 0[0+rax*4]
	add	rax, rsi
	sal	rax, 2
	add	rax, rdx
	lea	rdx, [rax+rcx]
	lea	rax, farm[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	eax, 1
	jne	.L2
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	mov	edi, edx
	call	_Z3dfsii
	mov	eax, DWORD PTR N[rip]
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
	lea	rsi, 0[0+rax*4]
	add	rax, rsi
	sal	rax, 2
	add	rax, rdx
	lea	rdx, [rax+rcx]
	lea	rax, farm[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	eax, 1
	jne	.L3
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	mov	edi, edx
	call	_Z3dfsii
	cmp	DWORD PTR -8[rbp], 1
	jle	.L4
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rsi, 0[0+rax*4]
	add	rax, rsi
	sal	rax, 2
	add	rax, rdx
	lea	rdx, [rax+rcx]
	lea	rax, farm[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	eax, 1
	jne	.L4
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3dfsii
	mov	eax, DWORD PTR M[rip]
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
	lea	rsi, 0[0+rax*4]
	add	rax, rsi
	sal	rax, 2
	add	rax, rdx
	lea	rdx, [rax+rcx]
	lea	rax, farm[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	eax, 1
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
	sub	rsp, 32
	mov	DWORD PTR -12[rbp], 0
	lea	rax, K[rip]
	mov	rcx, rax
	lea	rax, M[rip]
	mov	rdx, rax
	lea	rax, N[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L8
	lea	rdx, -20[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -16[rbp]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rcx, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rsi, 0[0+rax*4]
	add	rax, rsi
	sal	rax, 2
	add	rax, rdx
	lea	rdx, [rax+rcx]
	lea	rax, farm[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR K[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L9
	mov	DWORD PTR -4[rbp], 1
	jmp	.L10
	mov	DWORD PTR -8[rbp], 1
	jmp	.L11
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rsi, 0[0+rax*4]
	add	rax, rsi
	sal	rax, 2
	add	rax, rdx
	lea	rdx, [rax+rcx]
	lea	rax, farm[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	eax, 1
	jne	.L12
	mov	DWORD PTR k[rip], 0
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3dfsii
	mov	eax, DWORD PTR k[rip]
	cmp	DWORD PTR -12[rbp], eax
	jge	.L12
	mov	eax, DWORD PTR k[rip]
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR M[rip]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L13
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR N[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L14
	mov	eax, DWORD PTR -12[rbp]
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