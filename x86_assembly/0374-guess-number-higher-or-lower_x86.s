guess_bis:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	guess@PLT
	mov	DWORD PTR -12[rbp], eax
	cmp	DWORD PTR -12[rbp], 0
	jne	.L2
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L3
	cmp	DWORD PTR -12[rbp], 0
	jns	.L4
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	guess_bis
	jmp	.L3
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	guess_bis
	leave
	ret
guessNumber:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	mov	edi, 0
	call	guess_bis
	leave
	ret
0:
1:
2:
3:
4: