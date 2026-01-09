numofword:
un:
po:
ne:
unsi:
posi:
neti:
id:
word:
str:
flag:
_Z6searchv:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, unsi[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, flag[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	eax, 1
	je	.L21
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR un[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L6
	jmp	.L5
	nop
	mov	eax, DWORD PTR un[rip]
	cmp	DWORD PTR -8[rbp], eax
	jne	.L7
	mov	eax, DWORD PTR un[rip]
	test	eax, eax
	jne	.L22
	mov	DWORD PTR -8[rbp], 0
	jmp	.L9
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, posi[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, flag[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	test	eax, eax
	je	.L23
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR po[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L12
	jmp	.L11
	nop
	mov	eax, DWORD PTR po[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L24
	mov	DWORD PTR -8[rbp], 0
	jmp	.L14
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, neti[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rcx]
	lea	rax, flag[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	eax, 1
	je	.L25
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR ne[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L17
	jmp	.L16
	nop
	mov	eax, DWORD PTR ne[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L26
	mov	eax, DWORD PTR id[rip]
	cmp	eax, -1
	je	.L19
	mov	eax, DWORD PTR id[rip]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	lea	rdx, word[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	add	rax, rcx
	lea	rcx, word[rip]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jns	.L8
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR id[rip], eax
	jmp	.L8
	nop
	jmp	.L8
	nop
	jmp	.L8
	nop
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR numofword[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L20
	nop
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, word[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L28
	mov	DWORD PTR numofword[rip], 0
	mov	edx, 2860
	mov	esi, 0
	lea	rax, flag[rip]
	mov	rdi, rax
	call	memset@PLT
	jmp	.L29
	mov	DWORD PTR -4[rbp], 0
	jmp	.L30
	mov	ecx, DWORD PTR numofword[rip]
	mov	eax, DWORD PTR numofword[rip]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rsi, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	lea	rdx, [rax+rsi]
	lea	rax, word[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 97
	movsx	rsi, eax
	movsx	rdx, ecx
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	lea	rdx, [rax+rsi]
	lea	rax, flag[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR numofword[rip]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rcx, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	lea	rdx, [rax+rcx]
	lea	rax, word[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L31
	mov	eax, DWORD PTR numofword[rip]
	add	eax, 1
	mov	DWORD PTR numofword[rip], eax
	mov	eax, DWORD PTR numofword[rip]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	lea	rdx, word[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR numofword[rip]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	lea	rdx, word[rip]
	add	rax, rdx
	lea	rdx, .LC1[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L32
	lea	rax, str[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L33
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR id[rip], -1
	jmp	.L34
	mov	DWORD PTR un[rip], 0
	mov	DWORD PTR po[rip], 0
	mov	DWORD PTR ne[rip], 0
	jmp	.L35
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 43
	jne	.L36
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	lea	ecx, -97[rax]
	mov	eax, DWORD PTR po[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR po[rip], edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, posi[rip]
	mov	DWORD PTR [rdx+rax], ecx
	jmp	.L37
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 45
	jne	.L38
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	lea	ecx, -97[rax]
	mov	eax, DWORD PTR ne[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR ne[rip], edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, neti[rip]
	mov	DWORD PTR [rdx+rax], ecx
	jmp	.L37
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	lea	ecx, -97[rax]
	mov	eax, DWORD PTR un[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR un[rip], edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, unsi[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	je	.L39
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 124
	jne	.L40
	call	_Z6searchv
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 124
	jne	.L34
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L41
	mov	eax, DWORD PTR id[rip]
	cmp	eax, -1
	jne	.L42
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L43
	mov	eax, DWORD PTR id[rip]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	lea	rdx, word[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, str[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, .LC4[rip]
	mov	rsi, rax
	lea	rax, str[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L44
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, word[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, .LC6[rip]
	mov	rsi, rax
	lea	rax, word[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L45
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: