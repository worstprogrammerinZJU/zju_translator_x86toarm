n:
balance:
Node:
_Z3calii:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -36[rbp], edi
	mov	DWORD PTR -40[rbp], esi
	mov	DWORD PTR -4[rbp], 0
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, Node[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, Node[rip+8]
	mov	rax, QWORD PTR [rdx+rax]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L2
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -36[rbp], eax
	je	.L3
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -40[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3calii
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jle	.L4
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	add	DWORD PTR -8[rbp], eax
	jmp	.L5
	sub	DWORD PTR -8[rbp], 1
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	jne	.L6
	mov	eax, DWORD PTR n[rip]
	sub	eax, 1
	sub	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -20[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jle	.L7
	mov	eax, DWORD PTR -20[rbp]
	jmp	.L8
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, DWORD PTR -40[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, balance[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -8[rbp]
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L11
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 1
	jmp	.L12
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, Node[rip]
	mov	DWORD PTR [rdx+rax], 0
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, Node[rip+8]
	mov	QWORD PTR [rdx+rax], 0
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L13
	mov	eax, DWORD PTR n[rip]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L14
	lea	rdx, -44[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	edx, DWORD PTR -44[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, Node[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jne	.L15
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	sal	rax, 4
	mov	rcx, rax
	lea	rdx, Node[rip+8]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR [rcx+rdx], rax
	jmp	.L16
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, Node[rip+8]
	mov	rax, QWORD PTR [rdx+rax]
	mov	QWORD PTR -32[rbp], rax
	jmp	.L17
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR 8[rax]
	test	rax, rax
	jne	.L18
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	eax, DWORD PTR -40[rbp]
	movsx	rdx, eax
	mov	rcx, rdx
	sal	rcx, 4
	lea	rdx, Node[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	lea	ecx, 1[rdx]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, Node[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	edx, DWORD PTR -40[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, Node[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jne	.L19
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	sal	rax, 4
	mov	rcx, rax
	lea	rdx, Node[rip+8]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR [rcx+rdx], rax
	jmp	.L20
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, Node[rip+8]
	mov	rax, QWORD PTR [rdx+rax]
	mov	QWORD PTR -32[rbp], rax
	jmp	.L21
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR 8[rax]
	test	rax, rax
	jne	.L22
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	eax, DWORD PTR -44[rbp]
	movsx	rdx, eax
	mov	rcx, rdx
	sal	rcx, 4
	lea	rdx, Node[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	lea	ecx, 1[rdx]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, Node[rip]
	mov	DWORD PTR [rdx+rax], ecx
	sub	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 0
	jg	.L23
	mov	esi, 1
	mov	edi, 0
	call	_Z3calii
	mov	rax, QWORD PTR Node[rip+24]
	mov	QWORD PTR -24[rbp], rax
	jmp	.L24
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	free@PLT
	cmp	QWORD PTR -24[rbp], 0
	jne	.L25
	mov	DWORD PTR -8[rbp], 2
	mov	DWORD PTR -12[rbp], 1
	jmp	.L26
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, balance[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, balance[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jge	.L27
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, Node[rip+8]
	mov	rax, QWORD PTR [rdx+rax]
	mov	QWORD PTR -24[rbp], rax
	jmp	.L28
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	free@PLT
	cmp	QWORD PTR -24[rbp], 0
	jne	.L29
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L30
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, balance[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L31
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: