main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 1824
	lea	rax, -10016[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	movzx	eax, BYTE PTR -10016[rbp+rax]
	movsx	eax, al
	sub	eax, 48
	add	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -10016[rbp+rax]
	test	al, al
	jne	.L4
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 954437177
	shr	rdx, 32
	sar	edx
	mov	esi, eax
	sar	esi, 31
	mov	ecx, edx
	sub	ecx, esi
	mov	edx, ecx
	sal	edx, 3
	add	edx, ecx
	sub	eax, edx
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -4[rbp], 0
	jne	.L5
	mov	DWORD PTR -4[rbp], 9
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -10016[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR -10016[rbp]
	cmp	al, 48
	jne	.L6
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: