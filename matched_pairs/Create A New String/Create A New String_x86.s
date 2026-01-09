main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	lea	rax, -48[rbp]
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -80[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	lea	rax, -48[rbp]
	mov	rdi, rax
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEm@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rbx, rax
	lea	rax, -80[rbp]
	mov	rdi, rax
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNSolsEm@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	lea	rax, -80[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rax, -48[rbp]
	mov	rdi, rax
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L5
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L5
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