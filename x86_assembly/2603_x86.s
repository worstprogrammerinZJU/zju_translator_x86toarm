prime:
q:
num:
add:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, prime[rip]
	mov	esi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	esi
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, prime[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	je	.L4
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -20[rbp], 1
	jg	.L3
	nop
	nop
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], 5
	jmp	.L7
	mov	DWORD PTR -8[rbp], 1
	jmp	.L8
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, prime[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	je	.L19
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	mov	DWORD PTR -8[rbp], eax
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR q[rip]
	cmp	edx, eax
	jl	.L11
	jmp	.L10
	nop
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR q[rip]
	cmp	edx, eax
	jne	.L12
	mov	eax, DWORD PTR q[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR q[rip], edx
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, prime[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -4[rbp], 2
	cmp	DWORD PTR -4[rbp], 9999
	jle	.L13
	mov	DWORD PTR -4[rbp], 0
	jmp	.L14
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -8[rbp]
	mov	edi, eax
	call	add
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 9
	jle	.L15
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 1
	jmp	.L16
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	imul	eax, edx
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 1228
	jle	.L17
	mov	ecx, DWORD PTR -8[rbp]
	movsx	rax, ecx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	mov	esi, edx
	lea	rax, .LC1[rip]
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