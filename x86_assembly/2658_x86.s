syllable:
rhyme:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	rax, syllable[rip+60]
	mov	rsi, rax
	lea	rax, syllable[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L2
	lea	rax, syllable[rip+120]
	mov	rsi, rax
	lea	rax, syllable[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L3
	lea	rax, syllable[rip+180]
	mov	rsi, rax
	lea	rax, syllable[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L3
	mov	eax, 0
	jmp	.L4
	lea	rax, syllable[rip+180]
	mov	rsi, rax
	lea	rax, syllable[rip+120]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L5
	mov	eax, 1
	jmp	.L4
	mov	eax, 4
	jmp	.L4
	lea	rax, syllable[rip+120]
	mov	rsi, rax
	lea	rax, syllable[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L6
	lea	rax, syllable[rip+180]
	mov	rsi, rax
	lea	rax, syllable[rip+60]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L7
	mov	eax, 2
	jmp	.L4
	mov	eax, 4
	jmp	.L4
	lea	rax, syllable[rip+180]
	mov	rsi, rax
	lea	rax, syllable[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L8
	lea	rax, syllable[rip+120]
	mov	rsi, rax
	lea	rax, syllable[rip+60]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L9
	mov	eax, 3
	jmp	.L4
	mov	eax, 4
	jmp	.L4
	mov	eax, 4
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 176
	movabs	rax, 32760384460055920
	mov	QWORD PTR -176[rbp], rax
	mov	QWORD PTR -168[rbp], 1852143205
	movabs	rax, 495857922659
	mov	QWORD PTR -160[rbp], rax
	movabs	rax, 465675053171
	mov	QWORD PTR -152[rbp], rax
	mov	QWORD PTR -144[rbp], 1701147238
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L11
	mov	DWORD PTR -8[rbp], 0
	jmp	.L12
	lea	rax, -128[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	jmp	.L13
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	cmp	al, 32
	jne	.L14
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	mov	DWORD PTR -16[rbp], eax
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	test	al, al
	jne	.L15
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L16
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	cmp	al, 64
	jle	.L17
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	cmp	al, 90
	jg	.L17
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	add	eax, 32
	mov	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	BYTE PTR -128[rbp+rax], dl
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	cmp	al, 97
	je	.L18
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	cmp	al, 101
	je	.L18
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	cmp	al, 105
	je	.L18
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	cmp	al, 111
	je	.L18
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	cmp	al, 117
	jne	.L19
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -16[rbp], eax
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	test	al, al
	jne	.L20
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -16[rbp], 0
	jmp	.L21
	mov	eax, DWORD PTR -16[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -16[rbp], edx
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	movzx	edx, BYTE PTR -128[rbp+rdx]
	movsx	rsi, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 4
	sub	rax, rcx
	sal	rax, 2
	lea	rcx, [rax+rsi]
	lea	rax, syllable[rip]
	add	rax, rcx
	mov	BYTE PTR [rax], dl
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	test	al, al
	jne	.L22
	mov	eax, DWORD PTR -16[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, syllable[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 3
	jle	.L23
	mov	eax, 0
	call	rhyme
	lea	rdx, -176[rbp]
	cdqe
	sal	rax, 3
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L24
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: