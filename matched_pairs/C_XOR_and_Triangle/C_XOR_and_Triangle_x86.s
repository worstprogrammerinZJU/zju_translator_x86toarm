_Z5setupv:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	mov	esi, 0
	lea	rax, _ZSt4cout[rip+8]
	mov	rdi, rax
	mov	rax, QWORD PTR stdin[rip]
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	freopen@PLT
	mov	rax, QWORD PTR stdout[rip]
	mov	rdx, rax
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	freopen@PLT
	nop
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	call	_Z5setupv
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L3
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, 1
	sete	al
	movzx	edx, al
	mov	eax, DWORD PTR -24[rbp]
	and	eax, edx
	test	eax, eax
	jne	.L4
	mov	eax, DWORD PTR -24[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -24[rbp]
	test	eax, eax
	sete	al
	movzx	eax, al
	and	eax, edx
	test	eax, eax
	je	.L5
	mov	esi, -1
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	esi, 10
	mov	rdi, rax
	jmp	.L3
	mov	eax, DWORD PTR -24[rbp]
	neg	eax
	mov	edx, eax
	mov	eax, DWORD PTR -24[rbp]
	and	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -4[rbp], -1
	mov	DWORD PTR -8[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -24[rbp]
	and	eax, DWORD PTR -8[rbp]
	test	eax, eax
	jne	.L7
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jge	.L7
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L8
	sal	DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L9
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	esi, 10
	mov	rdi, rax
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -20[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L10
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
	jne	.L14
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L14
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