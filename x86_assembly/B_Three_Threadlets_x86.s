	endbr64
	push	rbp
	mov	rbp, rsp
	nop
	pop	rbp
	ret
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
	push	r13
	push	r12
	push	rbx
	sub	rsp, 56
	call	_Z5setupv
	lea	rax, -68[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L5
	lea	rax, -72[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -76[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -80[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -72[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -76[rbp]
	mov	DWORD PTR -60[rbp], eax
	mov	eax, DWORD PTR -80[rbp]
	mov	DWORD PTR -56[rbp], eax
	lea	rax, -64[rbp]
	mov	r12, rax
	mov	r13d, 3
	mov	rcx, r12
	mov	rbx, r13
	mov	rax, r12
	mov	rdx, r13
	mov	rax, rdx
	mov	rdi, rcx
	mov	rsi, rax
	mov	DWORD PTR -52[rbp], eax
	mov	BYTE PTR -33[rbp], 1
	mov	QWORD PTR -48[rbp], 0
	mov	eax, DWORD PTR -72[rbp]
	cdq
	idiv	DWORD PTR -52[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L6
	mov	eax, DWORD PTR -76[rbp]
	cdq
	idiv	DWORD PTR -52[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L6
	mov	eax, DWORD PTR -80[rbp]
	cdq
	idiv	DWORD PTR -52[rbp]
	mov	eax, edx
	test	eax, eax
	je	.L8
	mov	BYTE PTR -33[rbp], 0
	jmp	.L8
	mov	eax, DWORD PTR -72[rbp]
	cdq
	idiv	DWORD PTR -52[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L9
	cmp	QWORD PTR -48[rbp], 3
	jle	.L10
	mov	BYTE PTR -33[rbp], 0
	jmp	.L11
	mov	eax, DWORD PTR -72[rbp]
	sub	eax, DWORD PTR -52[rbp]
	mov	DWORD PTR -72[rbp], eax
	add	QWORD PTR -48[rbp], 1
	mov	eax, DWORD PTR -72[rbp]
	cmp	DWORD PTR -52[rbp], eax
	jne	.L12
	jmp	.L13
	mov	eax, DWORD PTR -76[rbp]
	cdq
	idiv	DWORD PTR -52[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L14
	cmp	QWORD PTR -48[rbp], 3
	jle	.L15
	mov	BYTE PTR -33[rbp], 0
	jmp	.L16
	mov	eax, DWORD PTR -76[rbp]
	sub	eax, DWORD PTR -52[rbp]
	mov	DWORD PTR -76[rbp], eax
	add	QWORD PTR -48[rbp], 1
	mov	eax, DWORD PTR -76[rbp]
	cmp	DWORD PTR -52[rbp], eax
	jne	.L17
	jmp	.L18
	mov	eax, DWORD PTR -80[rbp]
	cdq
	idiv	DWORD PTR -52[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L19
	cmp	QWORD PTR -48[rbp], 3
	jle	.L20
	mov	BYTE PTR -33[rbp], 0
	jmp	.L21
	mov	eax, DWORD PTR -80[rbp]
	sub	eax, DWORD PTR -52[rbp]
	mov	DWORD PTR -80[rbp], eax
	add	QWORD PTR -48[rbp], 1
	mov	eax, DWORD PTR -80[rbp]
	cmp	DWORD PTR -52[rbp], eax
	jne	.L22
	cmp	QWORD PTR -48[rbp], 3
	jle	.L23
	mov	BYTE PTR -33[rbp], 0
	cmp	BYTE PTR -33[rbp], 0
	je	.L24
	lea	rax, .LC4[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	esi, 10
	mov	rdi, rax
	jmp	.L5
	lea	rax, .LC5[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	esi, 10
	mov	rdi, rax
	mov	eax, DWORD PTR -68[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -68[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L26
	mov	eax, 0
	add	rsp, 56
	pop	rbx
	pop	r12
	pop	r13
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	rax, rdi
	mov	rcx, rsi
	mov	rdx, rcx
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	lea	rax, -32[rbp]
	mov	rdi, rax
	mov	rbx, rax
	lea	rax, -32[rbp]
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	sal	rax, 2
	add	rax, rbx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
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
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	setl	al
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	jne	.L41
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L42
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L43
	mov	rdx, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR -24[rbp]
	lea	rax, -33[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L43
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	add	QWORD PTR -24[rbp], 4
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	setne	al
	test	al, al
	jne	.L44
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L47
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L47
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