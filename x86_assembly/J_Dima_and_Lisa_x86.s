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
_Z7isPrimei:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	cmp	DWORD PTR -20[rbp], 1
	jg	.L3
	mov	eax, 0
	jmp	.L4
	cmp	DWORD PTR -20[rbp], 2
	je	.L5
	mov	eax, DWORD PTR -20[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L5
	mov	eax, 0
	jmp	.L4
	mov	QWORD PTR -8[rbp], 3
	jmp	.L6
	mov	eax, DWORD PTR -20[rbp]
	cdqe
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
	mov	rdx, rax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	cmp	rdx, rax
	jle	.L8
	mov	eax, 1
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	call	_Z5setupv
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rax, QWORD PTR -32[rbp]
	mov	edi, eax
	call	_Z7isPrimei
	test	al, al
	je	.L10
	mov	esi, 1
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	esi, 10
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSolsEx@PLT
	jmp	.L11
	mov	rax, QWORD PTR -32[rbp]
	sub	eax, 2
	mov	edi, eax
	call	_Z7isPrimei
	test	al, al
	je	.L12
	mov	esi, 2
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	esi, 10
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, .LC4[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, 2
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSolsEx@PLT
	jmp	.L11
	mov	esi, 3
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	esi, 10
	mov	rdi, rax
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, 3
	mov	QWORD PTR -8[rbp], rax
	jmp	.L13
	mov	rax, QWORD PTR -8[rbp]
	mov	edi, eax
	call	_Z7isPrimei
	test	al, al
	je	.L14
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	QWORD PTR -16[rbp], 2
	jmp	.L15
	mov	rax, QWORD PTR -16[rbp]
	mov	edi, eax
	call	_Z7isPrimei
	test	al, al
	je	.L16
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, eax
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	edi, eax
	call	_Z7isPrimei
	test	al, al
	je	.L16
	mov	eax, 1
	jmp	.L17
	mov	eax, 0
	test	al, al
	je	.L18
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	rdx, rax
	lea	rax, .LC5[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSolsEx@PLT
	mov	rdx, rax
	lea	rax, .LC5[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR -16[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	mov	eax, 0
	jmp	.L22
	add	QWORD PTR -16[rbp], 1
	mov	rax, QWORD PTR -16[rbp]
	cmp	rax, QWORD PTR -24[rbp]
	jle	.L20
	sub	QWORD PTR -8[rbp], 1
	cmp	QWORD PTR -8[rbp], 0
	jg	.L21
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
	jne	.L25
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L25
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