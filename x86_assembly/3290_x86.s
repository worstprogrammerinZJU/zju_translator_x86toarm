str:
pqrst:
KACE:
len:
Len:
N:
Middle:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	eax, DWORD PTR N[rip]
	test	eax, eax
	jle	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 96
	jle	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 122
	jg	.L2
	jmp	.L3
	mov	edi, 78
	call	putchar@PLT
	mov	eax, DWORD PTR N[rip]
	sub	eax, 1
	mov	DWORD PTR N[rip], eax
	mov	eax, DWORD PTR N[rip]
	test	eax, eax
	jg	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	mov	eax, DWORD PTR -4[rbp]
	add	eax, eax
	lea	edx, 1[rax]
	mov	eax, DWORD PTR len[rip]
	cmp	edx, eax
	jge	.L5
	mov	eax, DWORD PTR -4[rbp]
	add	eax, eax
	add	eax, 1
	mov	edi, eax
	call	Middle
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	lea	edx, [rax+rax]
	mov	eax, DWORD PTR len[rip]
	cmp	edx, eax
	jge	.L7
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	add	eax, eax
	mov	edi, eax
	call	Middle
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	jmp	.L9
	mov	DWORD PTR len[rip], 0
	mov	DWORD PTR Len[rip], 0
	mov	DWORD PTR N[rip], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 112
	je	.L11
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 113
	je	.L11
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 114
	je	.L11
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 115
	je	.L11
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 116
	jne	.L12
	mov	eax, DWORD PTR len[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR len[rip], edx
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, str[rip]
	movzx	edx, BYTE PTR [rdx+rcx]
	cdqe
	lea	rcx, pqrst[rip]
	mov	BYTE PTR [rax+rcx], dl
	jmp	.L13
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 78
	jne	.L14
	mov	eax, DWORD PTR N[rip]
	add	eax, 1
	mov	DWORD PTR N[rip], eax
	jmp	.L13
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 75
	je	.L15
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 65
	je	.L15
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 67
	je	.L15
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 69
	jne	.L13
	mov	eax, DWORD PTR Len[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR Len[rip], edx
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, str[rip]
	movzx	edx, BYTE PTR [rdx+rcx]
	cdqe
	lea	rcx, KACE[rip]
	mov	BYTE PTR [rax+rcx], dl
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L16
	mov	eax, DWORD PTR len[rip]
	test	eax, eax
	jne	.L17
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L9
	mov	edx, DWORD PTR len[rip]
	mov	eax, DWORD PTR Len[rip]
	cmp	edx, eax
	jle	.L18
	mov	eax, DWORD PTR Len[rip]
	add	eax, 1
	mov	DWORD PTR len[rip], eax
	jmp	.L19
	mov	eax, DWORD PTR len[rip]
	sub	eax, 1
	mov	DWORD PTR Len[rip], eax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L20
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, KACE[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, str[rip]
	mov	BYTE PTR [rax+rcx], dl
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR Len[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L21
	mov	DWORD PTR -8[rbp], 0
	jmp	.L22
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, pqrst[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, str[rip]
	mov	BYTE PTR [rax+rcx], dl
	add	DWORD PTR -4[rbp], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR len[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L23
	mov	edx, DWORD PTR len[rip]
	mov	eax, DWORD PTR Len[rip]
	add	eax, edx
	mov	DWORD PTR len[rip], eax
	mov	eax, DWORD PTR len[rip]
	cdqe
	lea	rdx, str[rip]
	mov	BYTE PTR [rax+rdx], 0
	mov	edi, 0
	call	Middle
	mov	edi, 10
	call	putchar@PLT
	lea	rax, str[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, str[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L24
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: