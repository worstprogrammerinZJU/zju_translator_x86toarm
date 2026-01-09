s:
t:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -12[rbp], 0
	lea	rax, t[rip]
	mov	rdx, rax
	lea	rax, s[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	lea	ecx, -48[rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, t[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	sub	eax, 48
	imul	eax, ecx
	add	DWORD PTR -12[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, t[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L4
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L5
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
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