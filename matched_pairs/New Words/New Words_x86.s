main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 184
	lea	rax, -64[rbp]
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	lea	rdx, -176[rbp]
	mov	eax, 0
	mov	ecx, 13
	mov	rdi, rdx
	rep stosq
	mov	DWORD PTR -20[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	tolower@PLT
	mov	ebx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	BYTE PTR [rax], bl
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 97
	movsx	rdx, eax
	mov	edx, DWORD PTR -176[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -176[rbp+rax*4], edx
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	movsx	rbx, eax
	lea	rax, -64[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L3
	mov	DWORD PTR -180[rbp], 2147483647
	mov	DWORD PTR -24[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -24[rbp]
	cmp	al, 4
	je	.L5
	mov	eax, DWORD PTR -24[rbp]
	cmp	al, 6
	je	.L5
	mov	eax, DWORD PTR -24[rbp]
	cmp	al, 24
	je	.L5
	mov	eax, DWORD PTR -24[rbp]
	cmp	al, 15
	je	.L5
	mov	eax, DWORD PTR -24[rbp]
	cmp	al, 19
	jne	.L6
	lea	rdx, -176[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	sal	rax, 2
	add	rdx, rax
	lea	rax, -180[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minIiERKT_S2_S2_
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -180[rbp], eax
	add	DWORD PTR -24[rbp], 1
	cmp	DWORD PTR -24[rbp], 25
	jle	.L7
	mov	eax, DWORD PTR -180[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	lea	rax, -64[rbp]
	mov	rdi, rax
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jge	.L10
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L11
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L14
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L14
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