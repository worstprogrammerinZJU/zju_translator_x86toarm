main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -397312[rsp]
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 2752
	lea	rax, -400052[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rdx, -400048[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -400052[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	mov	DWORD PTR -8[rbp], 1
	mov	DWORD PTR -12[rbp], 0
	mov	eax, DWORD PTR -400052[rbp]
	sub	eax, 1
	mov	DWORD PTR -16[rbp], eax
	jmp	.L4
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -400048[rbp+rax*4]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	eax, DWORD PTR -400048[rbp+rax*4]
	cmp	edx, eax
	je	.L5
	mov	DWORD PTR -8[rbp], 0
	jmp	.L6
	add	DWORD PTR -12[rbp], 1
	sub	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jl	.L7
	cmp	DWORD PTR -8[rbp], 1
	jne	.L8
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L9
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
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
	jne	.L13
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L13
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