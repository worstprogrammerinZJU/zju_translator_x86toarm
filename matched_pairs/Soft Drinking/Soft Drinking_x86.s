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
	sub	rsp, 48
	lea	rax, -4[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -8[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -12[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -16[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -20[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -24[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -28[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -32[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -12[rbp]
	imul	eax, edx
	mov	ecx, DWORD PTR -28[rbp]
	cdq
	idiv	ecx
	mov	DWORD PTR -36[rbp], eax
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -20[rbp]
	imul	eax, edx
	mov	DWORD PTR -40[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	mov	ecx, DWORD PTR -32[rbp]
	cdq
	idiv	ecx
	mov	DWORD PTR -44[rbp], eax
	lea	rdx, -40[rbp]
	lea	rax, -36[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minIiERKT_S2_S2_
	mov	rdx, rax
	lea	rax, -44[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZSt3minIiERKT_S2_S2_
	mov	eax, DWORD PTR [rax]
	mov	ecx, DWORD PTR -4[rbp]
	cdq
	idiv	ecx
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
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
	jne	.L8
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L8
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