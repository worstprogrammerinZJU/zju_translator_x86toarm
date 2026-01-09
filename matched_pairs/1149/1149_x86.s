n:
p:
r:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4048
	lea	rdx, -4048[rbp]
	mov	eax, 0
	mov	ecx, 250
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	WORD PTR [rdx], ax
	add	rdx, 2
	lea	rax, -12[rbp]
	lea	rdx, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	add	eax, 1
	mov	DWORD PTR n[rip], eax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	lea	rdx, -2032[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	rax, rax
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L3
	mov	DWORD PTR -4[rbp], 1
	jmp	.L4
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L5
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	movzx	eax, WORD PTR -4048[rbp+rax*2]
	test	ax, ax
	jne	.L6
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	movzx	eax, WORD PTR -2032[rbp+rax*2]
	cwde
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	DWORD PTR [rdx+rax], ecx
	jmp	.L7
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	movzx	eax, WORD PTR -4048[rbp+rax*2]
	cwde
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	DWORD PTR [rdx+rax], 10000
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -4[rbp]
	cdqe
	mov	WORD PTR -4048[rbp+rax*2], dx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L8
	mov	eax, DWORD PTR n[rip]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L9
	mov	eax, 0
	call	bfsnetworkflow
	mov	eax, 0
	leave
	ret
bfsnetworkflow:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1280
	mov	DWORD PTR -864[rbp], 10000
	mov	DWORD PTR -4[rbp], 0
	jmp	.L12
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	DWORD PTR -448[rbp+rax*4], -2
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 101
	jle	.L13
	mov	DWORD PTR -448[rbp], -1
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	DWORD PTR -1280[rbp+rax*4], 0
	jmp	.L14
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -12[rbp], edx
	cdqe
	mov	eax, DWORD PTR -1280[rbp+rax*4]
	mov	DWORD PTR -24[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L15
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -448[rbp+rax*4]
	cmp	eax, -2
	jne	.L16
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rcx, edx
	mov	edx, DWORD PTR -24[rbp]
	movsx	rdx, edx
	imul	rdx, rdx, 102
	add	rdx, rcx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, r[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	mov	DWORD PTR -28[rbp], eax
	cmp	DWORD PTR -28[rbp], 0
	je	.L16
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	edx, DWORD PTR -24[rbp]
	mov	DWORD PTR -448[rbp+rax*4], edx
	mov	eax, DWORD PTR -16[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -16[rbp], edx
	cdqe
	mov	edx, DWORD PTR -4[rbp]
	mov	DWORD PTR -1280[rbp+rax*4], edx
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	mov	edx, DWORD PTR -864[rbp+rax*4]
	mov	eax, DWORD PTR -28[rbp]
	cmp	edx, eax
	cmovg	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	DWORD PTR -864[rbp+rax*4], edx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L17
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jge	.L18
	mov	eax, DWORD PTR n[rip]
	cdqe
	mov	eax, DWORD PTR -448[rbp+rax*4]
	cmp	eax, -2
	je	.L19
	mov	eax, DWORD PTR n[rip]
	cdqe
	mov	eax, DWORD PTR -448[rbp+rax*4]
	cmp	eax, -2
	je	.L28
	mov	eax, DWORD PTR n[rip]
	cdqe
	mov	eax, DWORD PTR -448[rbp+rax*4]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR n[rip]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L22
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, r[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR n[rip]
	cdqe
	mov	eax, DWORD PTR -864[rbp+rax*4]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, r[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, r[rip]
	mov	eax, DWORD PTR [rdx+rax]
	neg	eax
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, r[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -448[rbp+rax*4]
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -4[rbp], -1
	jne	.L23
	jmp	.L24
	nop
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -20[rbp], 0
	jmp	.L25
	mov	eax, DWORD PTR n[rip]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, r[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	DWORD PTR -20[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L26
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	nop
	leave
	ret
0:
1:
2:
3:
4: