n:
str:
change:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	DWORD PTR -8[rbp], 0
	mov	eax, DWORD PTR n[rip]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	movsx	rdx, eax
	mov	rax, QWORD PTR -32[rbp]
	add	rdx, rax
	movzx	eax, BYTE PTR [rcx]
	mov	BYTE PTR [rdx], al
	mov	edx, DWORD PTR n[rip]
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, edx
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	movsx	rdx, eax
	mov	rax, QWORD PTR -32[rbp]
	add	rdx, rax
	movzx	eax, BYTE PTR [rcx]
	mov	BYTE PTR [rdx], al
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	add	eax, eax
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	mov	eax, DWORD PTR n[rip]
	add	eax, eax
	movsx	rdx, eax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	nop
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 784
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 1
	jmp	.L5
	mov	DWORD PTR -4[rbp], 0
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -272[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	cdqe
	lea	rdx, -272[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -784[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -272[rbp]
	mov	rsi, rax
	lea	rax, str[rip]
	mov	rdi, rax
	call	strcpy@PLT
	jmp	.L6
	lea	rdx, -528[rbp]
	lea	rax, -272[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	change
	lea	rdx, -528[rbp]
	lea	rax, -272[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcpy@PLT
	lea	rax, -272[rbp]
	lea	rdx, str[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L7
	mov	DWORD PTR -4[rbp], -1
	jmp	.L8
	add	DWORD PTR -4[rbp], 1
	lea	rdx, -272[rbp]
	lea	rax, -784[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L9
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L10
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: