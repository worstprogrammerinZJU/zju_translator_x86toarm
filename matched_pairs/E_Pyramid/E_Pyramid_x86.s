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
n:
i:
_Z5spacex:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	cmp	QWORD PTR -8[rbp], 0
	jle	.L4
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, 1
	mov	rdi, rax
	call	_Z5spacex
	lea	rax, .LC4[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	nop
	leave
	ret
_Z4starx:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	cmp	QWORD PTR -8[rbp], 0
	jle	.L7
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, 1
	mov	rdi, rax
	call	_Z4starx
	lea	rax, .LC5[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	nop
	leave
	ret
_Z3solx:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR n[rip]
	cmp	QWORD PTR -8[rbp], rax
	jg	.L10
	mov	rax, QWORD PTR n[rip]
	sub	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_Z5spacex
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rax
	sub	rax, 1
	mov	rdi, rax
	call	_Z4starx
	mov	esi, 10
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 1
	mov	rdi, rax
	call	_Z3solx
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	call	_Z5setupv
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	edi, 1
	call	_Z3solx
	mov	eax, 0
	pop	rbp
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