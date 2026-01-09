str:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, str[rip]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	jmp	.L2
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 64
	jle	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 90
	jg	.L4
	mov	eax, DWORD PTR -4[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	sub	eax, 64
	imul	eax, ecx
	add	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L5
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, str[rip]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, str[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L6
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: