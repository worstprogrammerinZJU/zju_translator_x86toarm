Check:
Hide:
Match:
N:
P:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rax, N[rip]
	mov	rdx, rax
	lea	rax, P[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, 160000
	mov	esi, 0
	lea	rax, Hide[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -12[rbp], 0
	jmp	.L4
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -28[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR P[rip]
	add	eax, edx
	movsx	rcx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 4
	lea	rdx, [rax+rcx]
	lea	rax, Hide[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	mov	eax, DWORD PTR -28[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR P[rip]
	add	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 4
	lea	rdx, [rax+rcx]
	lea	rax, Hide[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L5
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR P[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L6
	mov	DWORD PTR -16[rbp], 0
	mov	edx, 1600
	mov	esi, -1
	lea	rax, Match[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -28[rbp], 0
	jmp	.L7
	mov	edx, 400
	mov	esi, 0
	lea	rax, Check[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	eax, DWORD PTR -28[rbp]
	mov	edi, eax
	call	_Z3DFSi
	test	al, al
	je	.L8
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	mov	DWORD PTR -28[rbp], eax
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR P[rip]
	cmp	edx, eax
	jl	.L9
	mov	eax, DWORD PTR P[rip]
	cmp	DWORD PTR -16[rbp], eax
	jne	.L10
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L11
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L12
	mov	eax, 0
	leave
	ret
_Z3DFSi:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR P[rip]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L15
	mov	DWORD PTR -8[rbp], 0
	mov	eax, DWORD PTR P[rip]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L16
	mov	eax, DWORD PTR P[rip]
	mov	DWORD PTR -8[rbp], eax
	mov	edx, DWORD PTR N[rip]
	mov	eax, DWORD PTR P[rip]
	add	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L17
	mov	eax, DWORD PTR -20[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 4
	lea	rdx, [rax+rcx]
	lea	rax, Hide[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L18
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, Check[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	xor	eax, 1
	test	al, al
	je	.L18
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, Check[rip]
	mov	BYTE PTR [rax+rdx], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Match[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Match[rip]
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	cmp	DWORD PTR -16[rbp], -1
	je	.L19
	mov	eax, DWORD PTR -16[rbp]
	mov	edi, eax
	call	_Z3DFSi
	test	al, al
	je	.L20
	mov	eax, 1
	jmp	.L21
	mov	eax, 0
	test	al, al
	je	.L22
	mov	eax, 1
	jmp	.L23
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Match[rip]
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L24
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: