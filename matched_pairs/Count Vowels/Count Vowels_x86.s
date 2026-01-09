counter:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	mov	QWORD PTR -56[rbp], rdi
	mov	DWORD PTR -60[rbp], esi
	mov	eax, DWORD PTR -60[rbp]
	movsx	rbx, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	sub	rax, 1
	cmp	rbx, rax
	seta	al
	test	al, al
	je	.L2
	mov	eax, 0
	jmp	.L1
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 97
	je	.L4
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 101
	je	.L4
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 105
	je	.L4
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 111
	je	.L4
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 117
	je	.L4
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 65
	je	.L4
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 69
	je	.L4
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 73
	je	.L4
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 79
	je	.L4
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 85
	jne	.L5
	mov	eax, 1
	jmp	.L6
	mov	eax, 0
	test	al, al
	je	.L7
	mov	eax, DWORD PTR counter[rip]
	add	eax, 1
	mov	DWORD PTR counter[rip], eax
	add	DWORD PTR -60[rbp], 1
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	edx, DWORD PTR -60[rbp]
	lea	rax, -48[rbp]
	mov	esi, edx
	mov	rdi, rax
	lea	rax, -48[rbp]
	mov	rdi, rax
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	lea	rax, -64[rbp]
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	lea	rdx, -64[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -32[rbp]
	mov	esi, 0
	mov	rdi, rax
	lea	rax, -32[rbp]
	mov	rdi, rax
	mov	eax, DWORD PTR counter[rip]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	lea	rax, -64[rbp]
	mov	rdi, rax
	mov	eax, 0
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L12
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L12
	lea	rax, _ZStL8__ioinit[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, _ZStL8__ioinit[rip]
	mov	rsi, rax
	mov	rdi, rax
	call	__cxa_atexit@PLT
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	esi, 65535
	mov	edi, 1
	pop	rbp
	ret
0:
1:
2:
3:
4: