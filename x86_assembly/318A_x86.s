main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERy@PLT
	mov	rdx, rax
	lea	rax, -16[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERy@PLT
	mov	rax, QWORD PTR -8[rbp]
	and	eax, 1
	test	rax, rax
	je	.L2
	mov	rax, QWORD PTR -8[rbp]
	shr	rax
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -16[rbp]
	cmp	rdx, rax
	jb	.L3
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rax
	sub	rax, 1
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEy@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L4
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	shr	rdx
	sub	rax, rdx
	sub	rax, 1
	add	rax, rax
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEy@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	eax, 0
	jmp	.L8
	mov	rax, QWORD PTR -8[rbp]
	shr	rax
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	cmp	rdx, rax
	jb	.L6
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rax
	sub	rax, 1
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEy@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L7
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	shr	rdx
	sub	rax, rdx
	add	rax, rax
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEy@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
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
	jne	.L11
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L11
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