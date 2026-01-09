str:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, str[rip]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	jmp	.L2
	lea	rax, str[rip]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -16[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, str[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	jne	.L5
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L6
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	ecx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -20[rbp]
	add	eax, ecx
	cdqe
	lea	rcx, str[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	je	.L19
	add	DWORD PTR -12[rbp], 1
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -20[rbp]
	add	eax, edx
	cmp	DWORD PTR -16[rbp], eax
	jg	.L9
	jmp	.L8
	nop
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -20[rbp]
	add	eax, edx
	cmp	DWORD PTR -16[rbp], eax
	jg	.L20
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jl	.L11
	jmp	.L10
	nop
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jl	.L21
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jl	.L14
	jmp	.L13
	nop
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jge	.L15
	lea	rax, str[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L16
	lea	rax, str[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, str[rip]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, str[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L17
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: