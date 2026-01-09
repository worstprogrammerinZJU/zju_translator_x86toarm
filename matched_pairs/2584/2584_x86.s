numofnode:
Flow:
Residual:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	mov	DWORD PTR -48[rbp], 83
	mov	DWORD PTR -44[rbp], 77
	mov	DWORD PTR -40[rbp], 76
	mov	DWORD PTR -36[rbp], 88
	mov	DWORD PTR -32[rbp], 84
	jmp	.L2
	mov	edx, 3600
	mov	esi, 0
	lea	rax, Flow[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	edx, 3600
	mov	esi, 0
	lea	rax, Residual[rip]
	mov	rdi, rax
	call	memset@PLT
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 6
	mov	DWORD PTR numofnode[rip], eax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Flow[rip]
	mov	DWORD PTR [rdx+rax], 1
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -16[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	edx, DWORD PTR -48[rbp+rax*4]
	movzx	eax, BYTE PTR -80[rbp]
	movsx	eax, al
	cmp	edx, eax
	je	.L20
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 1
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, 4
	jle	.L7
	jmp	.L6
	nop
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L8
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -48[rbp+rax*4]
	movzx	eax, BYTE PTR -79[rbp]
	movsx	eax, al
	cmp	edx, eax
	je	.L21
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 4
	jle	.L11
	jmp	.L12
	nop
	jmp	.L12
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, Flow[rip]
	mov	DWORD PTR [rdx+rax], 1
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 1
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jge	.L13
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L14
	mov	DWORD PTR -4[rbp], 0
	jmp	.L15
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR numofnode[rip]
	mov	edx, DWORD PTR -16[rbp]
	movsx	rsi, eax
	movsx	rcx, ecx
	mov	rax, rcx
	sal	rax, 4
	sub	rax, rcx
	add	rax, rax
	add	rax, rsi
	lea	rcx, 0[0+rax*4]
	lea	rax, Flow[rip]
	mov	DWORD PTR [rcx+rax], edx
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 4
	jle	.L16
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	call	_Z14bfsnetworkflowv
	mov	edx, DWORD PTR -12[rbp]
	cmp	eax, edx
	sete	al
	test	al, al
	je	.L17
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L2
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -80[rbp]
	lea	rdx, .LC4[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	setne	al
	test	al, al
	jne	.L18
	mov	eax, 0
	leave
	ret
_Z14bfsnetworkflowv:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 296
	mov	DWORD PTR -288[rbp], 999999
	mov	DWORD PTR -4[rbp], 0
	jmp	.L23
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	DWORD PTR -160[rbp+rax*4], -2
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 29
	jle	.L24
	mov	DWORD PTR -160[rbp], -1
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	DWORD PTR -416[rbp+rax*4], 0
	jmp	.L25
	mov	eax, DWORD PTR -16[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -16[rbp], edx
	cdqe
	mov	eax, DWORD PTR -416[rbp+rax*4]
	mov	DWORD PTR -28[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L26
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -160[rbp+rax*4]
	cmp	eax, -2
	jne	.L27
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, Flow[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, Residual[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR -12[rbp], eax
	cmp	DWORD PTR -12[rbp], 0
	je	.L27
	mov	eax, 1
	jmp	.L28
	mov	eax, 0
	test	al, al
	je	.L29
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	edx, DWORD PTR -28[rbp]
	mov	DWORD PTR -160[rbp+rax*4], edx
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -20[rbp]
	lea	ecx, 1[rax]
	mov	DWORD PTR -20[rbp], ecx
	cdqe
	mov	DWORD PTR -416[rbp+rax*4], edx
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	mov	eax, DWORD PTR -288[rbp+rax*4]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L30
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	mov	eax, DWORD PTR -288[rbp+rax*4]
	jmp	.L31
	mov	eax, DWORD PTR -12[rbp]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	mov	DWORD PTR -288[rbp+rdx*4], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR numofnode[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L32
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jge	.L33
	mov	eax, DWORD PTR numofnode[rip]
	cdqe
	mov	eax, DWORD PTR -160[rbp+rax*4]
	cmp	eax, -2
	je	.L34
	mov	eax, DWORD PTR numofnode[rip]
	cdqe
	mov	eax, DWORD PTR -160[rbp+rax*4]
	cmp	eax, -2
	je	.L44
	mov	eax, DWORD PTR numofnode[rip]
	cdqe
	mov	eax, DWORD PTR -160[rbp+rax*4]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR numofnode[rip]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L37
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, Residual[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR numofnode[rip]
	cdqe
	mov	eax, DWORD PTR -288[rbp+rax*4]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, Residual[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, Residual[rip]
	mov	eax, DWORD PTR [rdx+rax]
	neg	eax
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, Residual[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -160[rbp+rax*4]
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -4[rbp], -1
	jne	.L38
	jmp	.L39
	nop
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	jmp	.L40
	mov	eax, DWORD PTR numofnode[rip]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, Residual[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	DWORD PTR -24[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR numofnode[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L41
	mov	eax, DWORD PTR -24[rbp]
	leave
	ret
0:
1:
2:
3:
4: