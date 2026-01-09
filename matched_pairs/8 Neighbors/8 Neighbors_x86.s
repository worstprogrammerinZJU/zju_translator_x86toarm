main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 2880
	mov	DWORD PTR -4[rbp], 1
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -28[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L2
	mov	DWORD PTR -12[rbp], 0
	jmp	.L3
	lea	rcx, -11072[rbp]
	mov	eax, DWORD PTR -12[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rdx
	add	rax, rsi
	add	rax, rcx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L4
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L5
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -36[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 2
	mov	DWORD PTR -16[rbp], eax
	jmp	.L6
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, 2
	mov	DWORD PTR -20[rbp], eax
	jmp	.L7
	cmp	DWORD PTR -16[rbp], 0
	js	.L8
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jge	.L8
	cmp	DWORD PTR -20[rbp], 0
	js	.L8
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jge	.L8
	mov	eax, DWORD PTR -20[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rdx
	add	rax, rbp
	add	rax, rcx
	sub	rax, 11072
	movzx	eax, BYTE PTR [rax]
	cmp	al, 120
	je	.L8
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 1
	cmp	DWORD PTR -16[rbp], eax
	jne	.L9
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, 1
	cmp	DWORD PTR -20[rbp], eax
	je	.L8
	mov	DWORD PTR -4[rbp], 0
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L10
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jle	.L11
	cmp	DWORD PTR -4[rbp], 1
	jne	.L12
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L13
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
	jne	.L17
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L17
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