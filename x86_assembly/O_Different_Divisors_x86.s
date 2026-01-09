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
_Z7isPrimex:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	cmp	QWORD PTR -24[rbp], 1
	jg	.L3
	mov	eax, 0
	jmp	.L4
	cmp	QWORD PTR -24[rbp], 2
	je	.L5
	mov	rax, QWORD PTR -24[rbp]
	and	eax, 1
	test	rax, rax
	jne	.L5
	mov	eax, 0
	jmp	.L4
	mov	QWORD PTR -8[rbp], 3
	jmp	.L6
	mov	rax, QWORD PTR -24[rbp]
	cqo
	idiv	QWORD PTR -8[rbp]
	mov	rax, rdx
	test	rax, rax
	jne	.L7
	mov	eax, 0
	jmp	.L4
	add	QWORD PTR -8[rbp], 2
	mov	rax, QWORD PTR -8[rbp]
	imul	rax, rax
	cmp	QWORD PTR -24[rbp], rax
	jge	.L8
	mov	eax, 1
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
	jmp	.L10
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rax, QWORD PTR -32[rbp]
	add	rax, 1
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_Z7isPrimex
	test	al, al
	je	.L11
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -16[rbp], rax
	nop
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	jmp	.L16
	add	QWORD PTR -8[rbp], 1
	jmp	.L13
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_Z7isPrimex
	test	al, al
	je	.L14
	mov	rax, QWORD PTR -16[rbp]
	imul	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	jmp	.L10
	add	QWORD PTR -8[rbp], 1
	jmp	.L16
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -20[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L17
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
	jne	.L22
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L22
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