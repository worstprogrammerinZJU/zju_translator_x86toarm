stone:
chest:
link:
num:
n:
m:
che:
flag1:
flag2:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 336
	lea	rax, m[rip]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	lea	rax, -336[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, stone[rip]
	add	rax, rdx
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L4
	mov	DWORD PTR -8[rbp], 0
	jmp	.L5
	lea	rax, -336[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -20[rbp], 0
	jmp	.L6
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -336[rbp+rax]
	cmp	al, 44
	jne	.L7
	mov	eax, DWORD PTR -20[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -16[rbp]
	movsx	rdx, edx
	imul	rsi, rax, 270
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	add	rax, rsi
	lea	rdx, [rax+rcx]
	lea	rax, link[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	add	DWORD PTR -16[rbp], 1
	mov	DWORD PTR -20[rbp], 0
	add	DWORD PTR -12[rbp], 1
	jmp	.L8
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -20[rbp], edx
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	movzx	edx, BYTE PTR -336[rbp+rdx]
	movsx	rsi, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	ecx, DWORD PTR -16[rbp]
	movsx	rcx, ecx
	imul	rdi, rax, 270
	mov	rax, rcx
	sal	rax, 4
	sub	rax, rcx
	add	rax, rax
	add	rax, rdi
	lea	rcx, [rax+rsi]
	lea	rax, link[rip]
	add	rax, rcx
	mov	BYTE PTR [rax], dl
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -336[rbp+rax]
	cmp	al, 58
	jne	.L9
	mov	eax, DWORD PTR -20[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -16[rbp]
	movsx	rdx, edx
	imul	rsi, rax, 270
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	add	rax, rsi
	lea	rdx, [rax+rcx]
	lea	rax, link[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	mov	eax, DWORD PTR -16[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	DWORD PTR -20[rbp], 0
	add	DWORD PTR -12[rbp], 2
	jmp	.L10
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -20[rbp], edx
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	movzx	edx, BYTE PTR -336[rbp+rdx]
	movsx	rsi, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 4
	sub	rax, rcx
	add	rax, rax
	lea	rcx, [rax+rsi]
	lea	rax, chest[rip]
	add	rax, rcx
	mov	BYTE PTR [rax], dl
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -336[rbp+rax]
	test	al, al
	jne	.L11
	mov	eax, DWORD PTR -20[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, chest[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, chest[rip]
	add	rax, rdx
	lea	rdx, .LC1[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L12
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -24[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L13
	mov	DWORD PTR che[rip], 1
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	DWORD PTR [rdx+rax], 1
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	DWORD PTR [rdx+rax], 1
	mov	eax, DWORD PTR -24[rbp]
	mov	edi, eax
	call	dfs
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	edx, 400
	mov	esi, 0
	lea	rax, flag1[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	edx, 400
	mov	esi, 0
	lea	rax, flag2[rip]
	mov	rdi, rax
	call	memset@PLT
	lea	rax, m[rip]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	test	eax, eax
	jne	.L14
	mov	eax, DWORD PTR m[rip]
	test	eax, eax
	jne	.L14
	mov	eax, 0
	leave
	ret
dfs:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L17
	mov	DWORD PTR -8[rbp], 0
	jmp	.L18
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, stone[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 4
	sub	rax, rcx
	add	rax, rax
	mov	ecx, DWORD PTR -20[rbp]
	movsx	rcx, ecx
	imul	rcx, rcx, 270
	add	rcx, rax
	lea	rax, link[rip]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	je	.L31
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L21
	jmp	.L20
	nop
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jne	.L22
	mov	DWORD PTR -8[rbp], 0
	jmp	.L23
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jne	.L24
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	lea	rdx, chest[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 4
	sub	rax, rcx
	add	rax, rax
	mov	ecx, DWORD PTR -20[rbp]
	movsx	rcx, ecx
	imul	rcx, rcx, 270
	add	rcx, rax
	lea	rax, link[rip]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L24
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	DWORD PTR [rdx+rax], 1
	mov	eax, DWORD PTR -8[rbp]
	mov	edi, eax
	call	dfs
	cmp	eax, -1
	jne	.L25
	mov	eax, -1
	jmp	.L26
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jne	.L27
	mov	eax, DWORD PTR che[rip]
	add	eax, 1
	mov	DWORD PTR che[rip], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, flag2[rip]
	mov	DWORD PTR [rdx+rax], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, flag1[rip]
	mov	DWORD PTR [rdx+rax], 0
	jmp	.L28
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L29
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -8[rbp], eax
	jne	.L22
	mov	eax, -1
	jmp	.L26
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L30
	mov	eax, DWORD PTR che[rip]
	leave
	ret
0:
1:
2:
3:
4: