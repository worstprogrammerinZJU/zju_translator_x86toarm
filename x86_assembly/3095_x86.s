len:
str:
left:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 46
	jne	.L3
	mov	eax, 100
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 124
	je	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 92
	jne	.L6
	mov	eax, 0
	jmp	.L4
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jns	.L7
	mov	eax, 100
	pop	rbp
	ret
right:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L9
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 46
	jne	.L10
	mov	eax, 100
	jmp	.L11
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 124
	je	.L12
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 47
	jne	.L13
	mov	eax, 0
	jmp	.L11
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR len[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L14
	mov	eax, 100
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	lea	rax, str[rip]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	jmp	.L16
	lea	rax, str[rip]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR len[rip], eax
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	jmp	.L17
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 46
	jne	.L18
	add	DWORD PTR -20[rbp], 100
	jmp	.L19
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 47
	jne	.L20
	mov	eax, DWORD PTR -24[rbp]
	mov	edi, eax
	call	left
	add	DWORD PTR -20[rbp], eax
	jmp	.L19
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 92
	jne	.L21
	mov	eax, DWORD PTR -24[rbp]
	mov	edi, eax
	call	right
	add	DWORD PTR -20[rbp], eax
	jmp	.L19
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 124
	jne	.L19
	mov	eax, DWORD PTR -24[rbp]
	mov	edi, eax
	call	left
	mov	ebx, eax
	mov	eax, DWORD PTR -24[rbp]
	mov	edi, eax
	call	right
	add	eax, ebx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	add	DWORD PTR -20[rbp], eax
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR len[rip]
	cmp	DWORD PTR -24[rbp], eax
	jl	.L22
	mov	ecx, DWORD PTR len[rip]
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	ecx
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
	jne	.L23
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
0:
1:
2:
3:
4: