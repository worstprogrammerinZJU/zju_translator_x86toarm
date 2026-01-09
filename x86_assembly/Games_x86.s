main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 320
	mov	DWORD PTR -4[rbp], 0
	lea	rax, -308[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L2
	lea	rdx, -160[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rcx, -304[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 2
	add	rax, rcx
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -308[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L3
	mov	DWORD PTR -12[rbp], 0
	jmp	.L4
	mov	DWORD PTR -16[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	je	.L6
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -160[rbp+rax*4]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	eax, DWORD PTR -304[rbp+rax*4]
	cmp	edx, eax
	jne	.L6
	add	DWORD PTR -4[rbp], 1
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -308[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L7
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -308[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L8
	mov	eax, DWORD PTR -4[rbp]
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