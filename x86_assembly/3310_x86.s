weight:
n:
e:
G:
flag:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -16[rbp], 1
	jmp	.L2
	lea	rax, e[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, 10201
	mov	esi, 0
	lea	rax, G[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	edx, 404
	mov	esi, 0
	lea	rax, weight[rip]
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
	mov	edx, DWORD PTR -24[rbp]
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
	lea	rax, G[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	mov	eax, DWORD PTR -24[rbp]
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
	lea	rax, G[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	lea	rcx, 0[0+rdx*4]
	lea	rdx, weight[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	lea	ecx, 1[rdx]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, weight[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rcx, 0[0+rdx*4]
	lea	rdx, weight[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	lea	ecx, 1[rdx]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, weight[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR e[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L4
	mov	DWORD PTR -4[rbp], 1
	jmp	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, weight[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 1
	jne	.L6
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rcx, 0[0+rax*4]
	add	rax, rcx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, G[rip]
	add	rax, rdx
	mov	edx, 101
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, weight[rip]
	mov	DWORD PTR [rdx+rax], -1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L7
	mov	BYTE PTR flag[rip], 1
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -4[rbp], 1
	jmp	.L8
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, weight[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L9
	mov	DWORD PTR -8[rbp], 1
	jmp	.L10
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
	lea	rax, G[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	eax, 1
	jne	.L11
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, weight[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L11
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
	lea	rax, G[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, weight[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, weight[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L12
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, weight[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 2
	jle	.L13
	mov	BYTE PTR flag[rip], 0
	jmp	.L14
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, weight[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 1
	jne	.L15
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	mov	DWORD PTR -20[rbp], eax
	jmp	.L9
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, weight[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jne	.L16
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	mov	DWORD PTR -24[rbp], eax
	jmp	.L9
	add	DWORD PTR -12[rbp], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L17
	movzx	eax, BYTE PTR flag[rip]
	movzx	eax, al
	cmp	eax, 1
	jne	.L18
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, 1
	jg	.L19
	mov	eax, DWORD PTR -20[rbp]
	test	eax, eax
	jne	.L19
	cmp	DWORD PTR -12[rbp], 0
	je	.L20
	mov	eax, DWORD PTR -24[rbp]
	test	eax, eax
	jne	.L21
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, 2
	jne	.L21
	mov	BYTE PTR flag[rip], 1
	jmp	.L18
	mov	BYTE PTR flag[rip], 0
	movzx	eax, BYTE PTR flag[rip]
	movzx	eax, al
	test	eax, eax
	jne	.L23
	mov	eax, DWORD PTR -16[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -16[rbp], edx
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L2
	mov	eax, DWORD PTR -16[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -16[rbp], edx
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	test	eax, eax
	setne	al
	test	al, al
	jne	.L24
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: