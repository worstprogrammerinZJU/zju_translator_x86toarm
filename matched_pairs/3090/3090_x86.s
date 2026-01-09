eulerphi:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L2
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	and	eax, 1
	test	eax, eax
	je	.L3
	mov	DWORD PTR -8[rbp], 3
	jmp	.L4
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -8[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	DWORD PTR -8[rbp]
	sub	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -8[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -8[rbp]
	mov	eax, edx
	test	eax, eax
	je	.L6
	add	DWORD PTR -8[rbp], 2
	cmp	DWORD PTR -20[rbp], 1
	jg	.L7
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 4024
	lea	rdx, -4032[rbp]
	mov	eax, 0
	mov	ecx, 500
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	DWORD PTR [rdx], eax
	add	rdx, 4
	mov	DWORD PTR -20[rbp], 1
	jmp	.L10
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	ebx, DWORD PTR -4032[rbp+rax*4]
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	mov	edi, eax
	call	eulerphi
	mov	edx, eax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	add	edx, ebx
	cdqe
	mov	DWORD PTR -4032[rbp+rax*4], edx
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	edx, DWORD PTR -4032[rbp+rax*4]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	eax, DWORD PTR -4032[rbp+rax*4]
	add	eax, 3
	add	edx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	DWORD PTR -4032[rbp+rax*4], edx
	add	DWORD PTR -20[rbp], 1
	cmp	DWORD PTR -20[rbp], 999
	jle	.L11
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -32[rbp]
	add	eax, 3
	add	eax, edx
	mov	DWORD PTR -32[rbp], eax
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -20[rbp], 1
	jmp	.L12
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	mov	ecx, DWORD PTR -4032[rbp+rax*4]
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L13
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
0:
1:
2:
3:
4: