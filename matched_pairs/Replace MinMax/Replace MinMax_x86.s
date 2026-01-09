main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4048
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rdx, -4048[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 1
	jmp	.L4
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	edx, DWORD PTR -4048[rbp+rax*4]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -4048[rbp+rax*4]
	cmp	edx, eax
	jge	.L5
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	edx, DWORD PTR -4048[rbp+rax*4]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -4048[rbp+rax*4]
	cmp	edx, eax
	jle	.L6
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L7
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -4048[rbp+rax*4]
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -4048[rbp+rax*4]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -4048[rbp+rax*4], edx
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -24[rbp]
	mov	DWORD PTR -4048[rbp+rax*4], edx
	mov	DWORD PTR -20[rbp], 0
	jmp	.L8
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	eax, DWORD PTR -4048[rbp+rax*4]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L9
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