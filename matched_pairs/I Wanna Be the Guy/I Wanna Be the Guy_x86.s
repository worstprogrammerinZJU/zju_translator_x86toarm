main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 464
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	lea	rdx, -448[rbp]
	mov	eax, 0
	mov	ecx, 52
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	DWORD PTR [rdx], eax
	add	rdx, 4
	lea	rax, -452[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rax, -456[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -456[rbp]
	cdqe
	mov	DWORD PTR -448[rbp+rax*4], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -452[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	lea	rax, -452[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L4
	lea	rax, -460[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -460[rbp]
	cdqe
	mov	DWORD PTR -448[rbp+rax*4], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -452[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L5
	mov	DWORD PTR -12[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -448[rbp+rax*4]
	cmp	eax, 1
	je	.L7
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	eax, 0
	jmp	.L8
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L9
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
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