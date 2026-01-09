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
_Z3askii:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	lea	rax, .LC4[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rdx, rax
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC5[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	mov	esi, 10
	mov	rdi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSo5flushEv@PLT
	lea	rax, -4[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -4[rbp]
	leave
	ret
_Z3gcdii:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -8[rbp], 0
	jne	.L7
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L8
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3gcdii
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	call	_Z5setupv
	mov	esi, 2
	mov	edi, 1
	call	_Z3askii
	mov	DWORD PTR -12[rbp], eax
	mov	esi, 3
	mov	edi, 1
	call	_Z3askii
	mov	DWORD PTR -16[rbp], eax
	mov	esi, 4
	mov	edi, 1
	call	_Z3askii
	mov	DWORD PTR -20[rbp], eax
	mov	esi, 5
	mov	edi, 1
	call	_Z3askii
	mov	DWORD PTR -24[rbp], eax
	mov	DWORD PTR -80[rbp], 4
	mov	DWORD PTR -76[rbp], 8
	mov	DWORD PTR -72[rbp], 15
	mov	DWORD PTR -68[rbp], 16
	mov	DWORD PTR -64[rbp], 23
	mov	DWORD PTR -60[rbp], 42
	mov	edx, DWORD PTR -80[rbp]
	mov	eax, DWORD PTR -76[rbp]
	imul	eax, edx
	cmp	DWORD PTR -12[rbp], eax
	jne	.L10
	mov	edx, DWORD PTR -80[rbp]
	mov	eax, DWORD PTR -72[rbp]
	imul	eax, edx
	cmp	DWORD PTR -16[rbp], eax
	jne	.L10
	mov	edx, DWORD PTR -80[rbp]
	mov	eax, DWORD PTR -68[rbp]
	imul	eax, edx
	cmp	DWORD PTR -20[rbp], eax
	jne	.L10
	mov	edx, DWORD PTR -80[rbp]
	mov	eax, DWORD PTR -64[rbp]
	imul	eax, edx
	cmp	DWORD PTR -24[rbp], eax
	jne	.L10
	lea	rax, .LC6[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, 24
	mov	QWORD PTR -40[rbp], rax
	jmp	.L11
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	eax, DWORD PTR [rax]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	esi, 32
	mov	rdi, rax
	add	QWORD PTR -8[rbp], 4
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -40[rbp]
	jne	.L12
	jmp	.L13
	lea	rax, -80[rbp]
	add	rax, 24
	lea	rdx, -80[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	test	al, al
	jne	.L14
	mov	eax, 0
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
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR -40[rbp]
	cmp	QWORD PTR -48[rbp], rax
	jne	.L19
	mov	eax, 0
	jmp	.L20
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -8[rbp], rax
	add	QWORD PTR -8[rbp], 4
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -48[rbp]
	jne	.L21
	mov	eax, 0
	jmp	.L20
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -8[rbp], rax
	sub	QWORD PTR -8[rbp], 4
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -24[rbp], rax
	sub	QWORD PTR -8[rbp], 4
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -8[rbp]
	lea	rax, -49[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L22
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -16[rbp], rax
	nop
	sub	QWORD PTR -16[rbp], 4
	mov	rdx, QWORD PTR -16[rbp]
	mov	rcx, QWORD PTR -8[rbp]
	lea	rax, -49[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	xor	eax, 1
	test	al, al
	jne	.L23
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -40[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, 1
	jmp	.L20
	mov	rax, QWORD PTR -40[rbp]
	cmp	QWORD PTR -8[rbp], rax
	jne	.L25
	lea	rax, -40[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, 0
	leave
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -16[rbp]
	je	.L36
	sub	QWORD PTR -16[rbp], 4
	jmp	.L34
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	add	QWORD PTR -8[rbp], 4
	sub	QWORD PTR -16[rbp], 4
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -16[rbp]
	jb	.L35
	jmp	.L31
	nop
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
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR [rax], edx
	lea	rax, -4[rbp]
	mov	rdi, rax
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR [rax], edx
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L42
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L42
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