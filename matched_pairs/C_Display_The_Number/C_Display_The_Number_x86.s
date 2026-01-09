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
	sub	rsp, 144
	call	_Z5setupv
	lea	rax, -132[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L3
	lea	rax, -136[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -136[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L4
	lea	rax, -81[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	mov	eax, DWORD PTR -136[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	movsx	rsi, eax
	lea	rdx, -81[rbp]
	lea	rax, -128[rbp]
	mov	rcx, rdx
	mov	edx, 49
	mov	rdi, rax
	lea	rax, -128[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	esi, 10
	mov	rdi, rax
	lea	rax, -128[rbp]
	mov	rdi, rax
	lea	rax, -81[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	jmp	.L3
	lea	rax, -1[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	mov	eax, DWORD PTR -136[rbp]
	sub	eax, 3
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	movsx	rsi, eax
	lea	rdx, -1[rbp]
	lea	rax, -48[rbp]
	mov	rcx, rdx
	mov	edx, 49
	mov	rdi, rax
	lea	rax, -80[rbp]
	lea	rdx, -48[rbp]
	mov	esi, 55
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	esi, 10
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rax, -48[rbp]
	mov	rdi, rax
	lea	rax, -1[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	mov	eax, DWORD PTR -132[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -132[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L6
	mov	eax, 0
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	eax, edx
	mov	QWORD PTR -48[rbp], rcx
	mov	BYTE PTR -36[rbp], al
	mov	rbx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	movsx	edx, BYTE PTR -36[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	eax, esi
	mov	QWORD PTR -24[rbp], rdx
	mov	BYTE PTR -12[rbp], al
	movsx	edx, BYTE PTR -12[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	ecx, edx
	mov	edx, 1
	mov	esi, 0
	mov	rdi, rax
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
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