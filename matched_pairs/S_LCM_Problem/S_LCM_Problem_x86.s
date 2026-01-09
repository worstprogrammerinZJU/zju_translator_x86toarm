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
_Z3gcdxx:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	cmp	QWORD PTR -16[rbp], 0
	jne	.L3
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L4
	mov	rax, QWORD PTR -8[rbp]
	cqo
	idiv	QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_Z3gcdxx
	nop
	leave
	ret
_Z3lcmxx:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_Z3gcdxx
	mov	rcx, rax
	mov	rax, QWORD PTR -8[rbp]
	cqo
	idiv	rcx
	imul	rax, QWORD PTR -16[rbp]
	leave
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
	jmp	.L8
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -12[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, [rax+rax]
	mov	eax, DWORD PTR -12[rbp]
	cmp	edx, eax
	jg	.L9
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC4[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	mov	eax, DWORD PTR -8[rbp]
	add	eax, eax
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	mov	esi, 10
	mov	rdi, rax
	jmp	.L8
	mov	esi, -1
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC4[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	esi, -1
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	esi, 10
	mov	rdi, rax
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -4[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L11
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