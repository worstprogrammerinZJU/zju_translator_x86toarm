G:
dp:
weight:
queue:
source:
n:
m:
front:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	jmp	.L2
	mov	edx, 100001
	mov	esi, 0
	lea	rax, source[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	edx, 800008
	mov	esi, 0
	lea	rax, G[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, weight[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	DWORD PTR [rdx+rax], -2100000000
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L4
	mov	eax, DWORD PTR m[rip]
	mov	edi, eax
	call	_Z7ADJLISTi
	mov	eax, DWORD PTR n[rip]
	mov	DWORD PTR front[rip], eax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, source[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	test	eax, eax
	jne	.L6
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	_Z3DFSi
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L7
	call	_Z2DPv
	mov	DWORD PTR -4[rbp], 1
	mov	DWORD PTR -8[rbp], -2100000000
	jmp	.L8
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, G[rip]
	mov	rax, QWORD PTR [rdx+rax]
	test	rax, rax
	jne	.L9
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -8[rbp], eax
	jge	.L9
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L10
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, m[rip]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	setne	al
	test	al, al
	jne	.L11
	mov	eax, 0
	leave
	ret
_Z7ADJLISTi:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -36[rbp], edi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L14
	lea	rdx, -24[rbp]
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	edx, DWORD PTR -24[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, G[rip]
	mov	rdx, QWORD PTR [rdx+rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	lea	rdx, G[rip]
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR [rcx+rdx], rax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L15
	nop
	nop
	leave
	ret
_Z3DFSi:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, G[rip]
	mov	rax, QWORD PTR [rdx+rax]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L17
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	cdqe
	lea	rdx, source[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	test	eax, eax
	jne	.L18
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	mov	edi, eax
	call	_Z3DFSi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jne	.L19
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR front[rip]
	lea	ecx, -1[rax]
	mov	DWORD PTR front[rip], ecx
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, queue[rip]
	mov	DWORD PTR [rcx+rax], edx
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, source[rip]
	mov	BYTE PTR [rax+rdx], 1
	nop
	leave
	ret
_Z2DPv:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], 1
	jmp	.L21
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, queue[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, G[rip]
	mov	rax, QWORD PTR [rdx+rax]
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -2100000000
	jne	.L23
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, weight[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, dp[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L23
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, weight[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	ecx, eax
	jle	.L24
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, weight[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	jne	.L25
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L26
	nop
	nop
	pop	rbp
	ret
0:
1:
2:
3:
4: