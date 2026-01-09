link:
m:
n:
salary:
word:
_Z7ELFhashPc:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -8[rbp], 0
	jmp	.L2
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 4
	mov	rcx, rax
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -24[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	movsx	rax, al
	add	rax, rcx
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	and	eax, 4026531840
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L3
	mov	rax, QWORD PTR -16[rbp]
	shr	rax, 24
	xor	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	not	rax
	and	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L4
	mov	rcx, QWORD PTR -8[rbp]
	movabs	rdx, 4736576211504157687
	mov	rax, rcx
	mul	rdx
	mov	rax, rdx
	shr	rax, 8
	imul	rdx, rax, 997
	mov	rax, rcx
	sub	rax, rdx
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	add	rsp, -128
	lea	rax, n[rip]
	mov	rdx, rax
	lea	rax, m[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, salary[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	sal	rax, 2
	lea	rcx, word[rip]
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	lea	rdx, word[rip]
	add	rax, rdx
	mov	rdi, rax
	call	_Z7ELFhashPc
	mov	DWORD PTR -20[rbp], eax
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR -4[rbp]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, link[rip]
	mov	rdx, QWORD PTR [rdx+rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	lea	rdx, link[rip]
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR [rcx+rdx], rax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L8
	mov	DWORD PTR -4[rbp], 0
	jmp	.L9
	mov	DWORD PTR -8[rbp], 0
	jmp	.L10
	lea	rax, -128[rbp]
	mov	rdi, rax
	call	_Z7ELFhashPc
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, link[rip]
	mov	rax, QWORD PTR [rdx+rax]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L11
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	lea	rdx, word[rip]
	add	rdx, rax
	lea	rax, -128[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	je	.L18
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	jne	.L14
	jmp	.L13
	nop
	cmp	QWORD PTR -16[rbp], 0
	je	.L10
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, salary[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	DWORD PTR -8[rbp], eax
	lea	rax, -128[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -128[rbp]
	lea	rdx, .LC3[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	setne	al
	test	al, al
	jne	.L15
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L16
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: