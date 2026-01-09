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
	sub	rsp, 64
	call	_Z5setupv
	lea	rax, -44[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L3
	mov	QWORD PTR -8[rbp], 0
	mov	QWORD PTR -16[rbp], 0
	mov	QWORD PTR -24[rbp], 0
	lea	rax, -56[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	BYTE PTR -25[rbp], 0
	mov	BYTE PTR -26[rbp], 0
	mov	QWORD PTR -40[rbp], 0
	jmp	.L4
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	ecx, edx
	sar	rax, cl
	and	eax, 1
	test	rax, rax
	je	.L5
	movzx	eax, BYTE PTR -25[rbp]
	xor	eax, 1
	test	al, al
	je	.L6
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, 1
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	cdqe
	or	QWORD PTR -8[rbp], rax
	mov	BYTE PTR -25[rbp], 1
	add	QWORD PTR -16[rbp], 1
	jmp	.L7
	movzx	eax, BYTE PTR -26[rbp]
	xor	eax, 1
	test	al, al
	je	.L7
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	BYTE PTR -26[rbp], 1
	add	QWORD PTR -40[rbp], 1
	cmp	QWORD PTR -40[rbp], 30
	jle	.L8
	cmp	QWORD PTR -16[rbp], 1
	jne	.L9
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, 1
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	cdqe
	or	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	mov	eax, DWORD PTR -44[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -44[rbp], edx
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