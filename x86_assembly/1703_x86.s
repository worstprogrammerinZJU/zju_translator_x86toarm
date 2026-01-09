num:
n:
N:
diff:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	edx, DWORD PTR n[rip]
	mov	eax, DWORD PTR -4[rbp]
	add	eax, edx
	mov	ecx, DWORD PTR N[rip]
	cdq
	idiv	ecx
	mov	eax, edx
	pop	rbp
	ret
root:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -4[rbp], eax
	jne	.L5
	jmp	.L6
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, num[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jne	.L7
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	lea	rax, -44[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L10
	lea	rax, -40[rbp]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	add	eax, eax
	mov	DWORD PTR N[rip], eax
	mov	DWORD PTR -20[rbp], 0
	jmp	.L11
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, num[rip]
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR N[rip]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L12
	mov	DWORD PTR -20[rbp], 0
	jmp	.L13
	call	getchar@PLT
	lea	rcx, -36[rbp]
	lea	rdx, -32[rbp]
	lea	rax, -45[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR -45[rbp]
	cmp	al, 65
	jne	.L14
	mov	eax, DWORD PTR -32[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -28[rbp], eax
	mov	ecx, DWORD PTR n[rip]
	mov	eax, DWORD PTR -24[rbp]
	cdq
	idiv	ecx
	mov	esi, edx
	mov	ecx, DWORD PTR n[rip]
	mov	eax, DWORD PTR -28[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	cmp	esi, eax
	je	.L15
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L16
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jne	.L17
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L16
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L16
	mov	eax, DWORD PTR -32[rbp]
	mov	edi, eax
	call	diff
	mov	edi, eax
	call	root
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, num[rip]
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -24[rbp]
	mov	edi, eax
	call	diff
	mov	ebx, eax
	mov	eax, DWORD PTR -28[rbp]
	mov	edi, eax
	call	diff
	movsx	rdx, ebx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, num[rip]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -40[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L18
	mov	eax, DWORD PTR -44[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -44[rbp], edx
	test	eax, eax
	jne	.L19
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
0:
1:
2:
3:
4: