	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jge	.L2
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L3
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L5
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -40[rbp]
	add	rax, 4
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -40[rbp]
	add	rax, 8
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	lea	rax, -40[rbp]
	lea	rdx, 8[rax]
	lea	rax, -40[rbp]
	add	rax, 4
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxIiERKT_S2_S2_
	mov	rdx, rax
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxIiERKT_S2_S2_
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -24[rbp], eax
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L6
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	ecx, DWORD PTR -40[rbp+rax*4]
	mov	eax, DWORD PTR -24[rbp]
	sub	eax, ecx
	mov	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	DWORD PTR -52[rbp+rax*4], edx
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -52[rbp+rax*4]
	test	eax, eax
	jne	.L7
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -12[rbp], 2
	jle	.L8
	cmp	DWORD PTR -8[rbp], 1
	jle	.L9
	mov	DWORD PTR -16[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	eax, DWORD PTR -52[rbp+rax*4]
	test	eax, eax
	jne	.L11
	mov	esi, 1
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	jmp	.L12
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	eax, DWORD PTR -52[rbp+rax*4]
	add	eax, 1
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	add	DWORD PTR -16[rbp], 1
	cmp	DWORD PTR -16[rbp], 2
	jle	.L13
	jmp	.L14
	mov	DWORD PTR -20[rbp], 0
	jmp	.L15
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	eax, DWORD PTR -52[rbp+rax*4]
	test	eax, eax
	je	.L16
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	eax, DWORD PTR -52[rbp+rax*4]
	add	eax, 1
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	jmp	.L17
	mov	esi, 0
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	add	DWORD PTR -20[rbp], 1
	cmp	DWORD PTR -20[rbp], 2
	jle	.L18
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L19
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
	jne	.L23
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L23
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