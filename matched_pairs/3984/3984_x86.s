maze:
visit:
_Z3dfsii:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 3
	jg	.L2
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, maze[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jne	.L2
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	je	.L3
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, 1
	cmp	ecx, eax
	jle	.L2
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -4[rbp]
	add	edx, 1
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	mov	edi, edx
	call	_Z3dfsii
	cmp	DWORD PTR -8[rbp], 3
	jg	.L4
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, maze[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jne	.L4
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	je	.L5
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, 1
	cmp	ecx, eax
	jle	.L4
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -8[rbp]
	add	edx, 1
	lea	ecx, 1[rax]
	movsx	rsi, edx
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3dfsii
	cmp	DWORD PTR -4[rbp], 0
	jle	.L6
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, maze[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jne	.L6
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	je	.L7
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, 1
	cmp	ecx, eax
	jle	.L6
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -4[rbp]
	sub	edx, 1
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	mov	edi, edx
	call	_Z3dfsii
	cmp	DWORD PTR -8[rbp], 0
	jle	.L10
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, maze[rip]
	mov	eax, DWORD PTR [rdx+rax]
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
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	je	.L9
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, 1
	cmp	ecx, eax
	jle	.L10
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -8[rbp]
	sub	edx, 1
	lea	ecx, 1[rax]
	movsx	rsi, edx
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, -1[rax]
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
	sub	rsp, 224
	lea	rdx, -224[rbp]
	mov	eax, 0
	mov	ecx, 25
	mov	rdi, rdx
	rep stosq
	mov	DWORD PTR -4[rbp], 0
	jmp	.L12
	mov	DWORD PTR -8[rbp], 0
	jmp	.L13
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, maze[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 4
	jle	.L14
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 4
	jle	.L15
	mov	DWORD PTR visit[rip], 1
	mov	esi, 0
	mov	edi, 0
	call	_Z3dfsii
	mov	DWORD PTR -4[rbp], 4
	mov	DWORD PTR -8[rbp], 4
	mov	DWORD PTR -12[rbp], 0
	jmp	.L16
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -4[rbp]
	mov	DWORD PTR -224[rbp+rax*8], edx
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -8[rbp]
	mov	DWORD PTR -220[rbp+rax*8], edx
	cmp	DWORD PTR -4[rbp], 3
	jg	.L17
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	eax, DWORD PTR [rdx+rax]
	sub	eax, 1
	cmp	ecx, eax
	jne	.L17
	add	DWORD PTR -4[rbp], 1
	jmp	.L18
	cmp	DWORD PTR -8[rbp], 3
	jg	.L19
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	eax, DWORD PTR [rdx+rax]
	sub	eax, 1
	cmp	ecx, eax
	jne	.L19
	add	DWORD PTR -8[rbp], 1
	jmp	.L18
	cmp	DWORD PTR -4[rbp], 0
	jle	.L20
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	eax, DWORD PTR [rdx+rax]
	sub	eax, 1
	cmp	ecx, eax
	jne	.L20
	sub	DWORD PTR -4[rbp], 1
	jmp	.L18
	cmp	DWORD PTR -8[rbp], 0
	jle	.L18
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, visit[rip]
	mov	eax, DWORD PTR [rdx+rax]
	sub	eax, 1
	cmp	ecx, eax
	jne	.L18
	sub	DWORD PTR -8[rbp], 1
	add	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jne	.L21
	cmp	DWORD PTR -8[rbp], 0
	jne	.L21
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	DWORD PTR -224[rbp+rax*8], 0
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	DWORD PTR -220[rbp+rax*8], 0
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L22
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	edx, DWORD PTR -220[rbp+rax*8]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -224[rbp+rax*8]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jns	.L23
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: