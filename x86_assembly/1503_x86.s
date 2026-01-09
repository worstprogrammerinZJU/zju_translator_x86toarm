main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 560
	lea	rdx, -448[rbp]
	mov	eax, 0
	mov	ecx, 52
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	DWORD PTR [rdx], eax
	add	rdx, 4
	lea	rax, -560[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	lea	rax, -560[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -16[rbp], eax
	mov	DWORD PTR -8[rbp], 0
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -448[rbp+rax*4]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -560[rbp+rax]
	movsx	eax, al
	sub	eax, 48
	add	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -448[rbp+rax*4], edx
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L4
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -12[rbp], edx
	movsx	rdx, eax
	mov	edx, DWORD PTR -448[rbp+rdx*4]
	sub	edx, 10
	cdqe
	mov	DWORD PTR -448[rbp+rax*4], edx
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -448[rbp+rax*4]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	DWORD PTR -448[rbp+rax*4], edx
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -448[rbp+rax*4]
	cmp	eax, 9
	jg	.L5
	add	DWORD PTR -8[rbp], 1
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jns	.L6
	lea	rax, -560[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR -560[rbp]
	cmp	al, 48
	jne	.L7
	movzx	eax, BYTE PTR -559[rbp]
	test	al, al
	jne	.L7
	mov	DWORD PTR -4[rbp], 104
	jmp	.L8
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jle	.L11
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -448[rbp+rax*4]
	test	eax, eax
	je	.L10
	jmp	.L11
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	mov	eax, DWORD PTR -448[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	cmp	DWORD PTR -4[rbp], 0
	jns	.L12
	lea	rax, .LC2[rip]
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