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
	sub	rsp, 16
	call	_Z5setupv
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
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 1
	jne	.L3
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, 2
	je	.L4
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 2
	jne	.L5
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, 1
	jne	.L5
	mov	esi, 3
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	jmp	.L6
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 3
	jne	.L7
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, 2
	je	.L8
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, 3
	jne	.L9
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 2
	jne	.L9
	mov	esi, 1
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	jmp	.L6
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 3
	jne	.L10
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, 1
	je	.L11
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, 3
	jne	.L6
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 1
	jne	.L6
	mov	esi, 2
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
	jne	.L15
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L15
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