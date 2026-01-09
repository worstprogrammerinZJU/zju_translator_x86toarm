m:
n:
Step:
map:
_Z3dfsiii:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -28[rbp], edx
	mov	DWORD PTR -4[rbp], 10000
	mov	DWORD PTR -8[rbp], 10000
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	imul	rax, rax, 250
	add	rdx, rax
	lea	rax, Step[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	jmp	.L2
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	imul	rax, rax, 250
	add	rdx, rax
	lea	rax, Step[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	add	DWORD PTR -28[rbp], 1
	mov	eax, DWORD PTR n[rip]
	sub	eax, 1
	cmp	DWORD PTR -20[rbp], eax
	jge	.L3
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -24[rbp]
	movsx	rcx, eax
	movsx	rax, edx
	imul	rax, rax, 250
	lea	rdx, [rax+rcx]
	lea	rax, map[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 83
	je	.L4
	mov	eax, DWORD PTR n[rip]
	sub	eax, 1
	cmp	DWORD PTR -20[rbp], eax
	jne	.L5
	mov	eax, DWORD PTR -28[rbp]
	jmp	.L6
	cmp	DWORD PTR -24[rbp], 0
	jle	.L7
	mov	eax, DWORD PTR -24[rbp]
	sub	eax, 1
	movsx	rdx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	imul	rax, rax, 250
	add	rdx, rax
	lea	rax, map[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 83
	jne	.L7
	mov	eax, DWORD PTR -24[rbp]
	sub	eax, 1
	movsx	rdx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	imul	rax, rax, 250
	add	rdx, rax
	lea	rax, Step[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	test	eax, eax
	jne	.L7
	mov	eax, DWORD PTR -28[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -24[rbp]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, ecx
	mov	edi, eax
	call	_Z3dfsiii
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR m[rip]
	sub	eax, 1
	cmp	DWORD PTR -24[rbp], eax
	jge	.L8
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	movsx	rdx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	imul	rax, rax, 250
	add	rdx, rax
	lea	rax, map[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 83
	jne	.L8
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	movsx	rdx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	imul	rax, rax, 250
	add	rdx, rax
	lea	rax, Step[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -28[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -24[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, ecx
	mov	edi, eax
	call	_Z3dfsiii
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L9
	mov	eax, DWORD PTR -8[rbp]
	jmp	.L6
	mov	eax, DWORD PTR -4[rbp]
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, m[rip]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L11
	mov	DWORD PTR -4[rbp], 0
	jmp	.L12
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 250
	lea	rdx, map[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR m[rip]
	sub	eax, 2
	mov	DWORD PTR -8[rbp], eax
	jmp	.L13
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 250
	add	rdx, rax
	lea	rax, map[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 83
	jne	.L14
	cmp	DWORD PTR -4[rbp], 0
	je	.L15
	mov	eax, DWORD PTR n[rip]
	sub	eax, 1
	cmp	DWORD PTR -4[rbp], eax
	jne	.L16
	mov	eax, DWORD PTR m[rip]
	sub	eax, 2
	cmp	DWORD PTR -8[rbp], eax
	je	.L14
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 250
	add	rdx, rax
	lea	rax, map[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 83
	sub	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 0
	jns	.L17
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L18
	mov	edx, 62500
	mov	esi, 0
	lea	rax, Step[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L19
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, map[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 83
	je	.L26
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L22
	jmp	.L21
	nop
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, 1
	mov	esi, eax
	mov	edi, 0
	call	_Z3dfsiii
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR m[rip]
	sub	eax, 2
	cmp	DWORD PTR -8[rbp], eax
	je	.L23
	mov	edx, 62500
	mov	esi, 0
	lea	rax, Step[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	mov	edx, 1
	mov	esi, eax
	mov	edi, 0
	call	_Z3dfsiii
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jle	.L23
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, m[rip]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR m[rip]
	test	eax, eax
	jne	.L24
	mov	eax, DWORD PTR n[rip]
	test	eax, eax
	jne	.L24
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: