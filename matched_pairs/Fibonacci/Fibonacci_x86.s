main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 448
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	QWORD PTR -440[rbp], 0
	mov	QWORD PTR -432[rbp], 1
	mov	DWORD PTR -4[rbp], 3
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	cdqe
	mov	rdx, QWORD PTR -448[rbp+rax*8]
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 2
	cdqe
	mov	rax, QWORD PTR -448[rbp+rax*8]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	QWORD PTR -448[rbp+rax*8], rdx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	rax, QWORD PTR -448[rbp+rax*8]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
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
	jne	.L7
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L7
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