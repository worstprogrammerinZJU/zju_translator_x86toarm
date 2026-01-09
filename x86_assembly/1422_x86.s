Check:
Hide:
Match:
n:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L2
	lea	rax, -28[rbp]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, 14400
	mov	esi, 0
	lea	rax, Hide[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	lea	rdx, -24[rbp]
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -24[rbp]
	sub	eax, 1
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	sal	rax, 3
	lea	rdx, [rax+rcx]
	lea	rax, Hide[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L4
	mov	DWORD PTR -12[rbp], 0
	mov	edx, 480
	mov	esi, -1
	lea	rax, Match[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L5
	mov	edx, 120
	mov	esi, 0
	lea	rax, Check[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	_Z3DFSi
	test	al, al
	je	.L6
	add	DWORD PTR -12[rbp], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L7
	mov	eax, DWORD PTR n[rip]
	sub	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L8
	mov	eax, 0
	leave
	ret
_Z3DFSi:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L11
	mov	eax, DWORD PTR -20[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	sal	rax, 3
	lea	rdx, [rax+rcx]
	lea	rax, Hide[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L12
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, Check[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	xor	eax, 1
	test	al, al
	je	.L12
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, Check[rip]
	mov	BYTE PTR [rax+rdx], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Match[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Match[rip]
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	cmp	DWORD PTR -8[rbp], -1
	je	.L13
	mov	eax, DWORD PTR -8[rbp]
	mov	edi, eax
	call	_Z3DFSi
	test	al, al
	je	.L14
	mov	eax, 1
	jmp	.L15
	mov	eax, 0
	test	al, al
	je	.L16
	mov	eax, 1
	jmp	.L17
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Match[rip]
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L18
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: