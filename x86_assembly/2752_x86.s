P:
Pi:
queue:
m:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	jmp	.L2
	lea	rax, P[rip]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR m[rip], eax
	mov	eax, DWORD PTR m[rip]
	mov	esi, eax
	lea	rax, P[rip]
	mov	rdi, rax
	call	Compute_PREFIX
	mov	DWORD PTR -8[rbp], 0
	mov	eax, DWORD PTR m[rip]
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Pi[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	add	ecx, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, queue[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Pi[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Pi[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jns	.L4
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, queue[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jns	.L6
	mov	eax, DWORD PTR m[rip]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, P[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L7
	mov	eax, 0
	leave
	ret
Compute_PREFIX:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -8[rbp], -1
	mov	DWORD PTR Pi[rip], -1
	mov	DWORD PTR -4[rbp], 1
	jmp	.L10
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Pi[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -8[rbp], eax
	cmp	DWORD PTR -8[rbp], 0
	js	.L12
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L13
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L14
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Pi[rip]
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L11
	nop
	nop
	pop	rbp
	ret
0:
1:
2:
3:
4: