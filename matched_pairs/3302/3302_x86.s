s:
t:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rax, t[rip]
	mov	rdx, rax
	lea	rax, s[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, t[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	jne	.L4
	add	DWORD PTR -12[rbp], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	je	.L5
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, t[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L6
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, t[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L7
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L8
	mov	DWORD PTR -12[rbp], 0
	sub	DWORD PTR -8[rbp], 1
	jmp	.L9
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, t[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	jne	.L10
	add	DWORD PTR -12[rbp], 1
	sub	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 0
	js	.L11
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, t[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L12
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, t[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L13
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L8
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L14
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: