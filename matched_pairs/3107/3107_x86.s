n:
balance:
num:
Node:
insert:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -24[rbp]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, Node[rip]
	mov	rdx, QWORD PTR [rdx+rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	lea	rdx, Node[rip]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rcx+rdx], rax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	DWORD PTR [rdx+rax], ecx
	nop
	leave
	ret
cal:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -36[rbp], edi
	mov	DWORD PTR -40[rbp], esi
	mov	DWORD PTR -4[rbp], 0
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, Node[rip]
	mov	rax, QWORD PTR [rdx+rax]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L3
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -36[rbp], eax
	je	.L4
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -40[rbp]
	mov	esi, edx
	mov	edi, eax
	call	cal
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jle	.L5
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	add	DWORD PTR -8[rbp], eax
	jmp	.L6
	sub	DWORD PTR -8[rbp], 1
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	jne	.L7
	mov	eax, DWORD PTR n[rip]
	sub	eax, 1
	sub	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -20[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	cmovge	eax, edx
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
	sub	rsp, 16
	mov	DWORD PTR -8[rbp], 50000
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L10
	lea	rdx, -16[rbp]
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, edx
	mov	edi, eax
	call	insert
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, edx
	mov	edi, eax
	call	insert
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jg	.L11
	mov	esi, 1
	mov	edi, 0
	call	cal
	mov	DWORD PTR -4[rbp], 1
	jmp	.L12
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, balance[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L13
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, balance[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L14
	mov	DWORD PTR -4[rbp], 1
	jmp	.L15
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, balance[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -8[rbp], eax
	jne	.L16
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L17
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: