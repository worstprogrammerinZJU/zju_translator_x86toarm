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
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	cmp	QWORD PTR -8[rbp], 0
	js	.L3
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L4
	mov	rax, QWORD PTR -8[rbp]
	neg	rax
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -4[rbp], 64
	cmp	QWORD PTR -24[rbp], 0
	jne	.L6
	mov	eax, 64
	jmp	.L7
	mov	DWORD PTR -8[rbp], 64
	mov	DWORD PTR -12[rbp], 64
	mov	DWORD PTR -16[rbp], 32
	xor	eax, eax
	rep bsf	rax, QWORD PTR -24[rbp]
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	cmp	QWORD PTR -40[rbp], 0
	jne	.L9
	mov	rax, QWORD PTR -48[rbp]
	jmp	.L10
	cmp	QWORD PTR -48[rbp], 0
	jne	.L11
	mov	rax, QWORD PTR -40[rbp]
	jmp	.L10
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZSt13__countr_zeroIyEiT_
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	ecx, eax
	shr	QWORD PTR -40[rbp], cl
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	_ZSt13__countr_zeroIyEiT_
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	ecx, eax
	shr	QWORD PTR -48[rbp], cl
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jge	.L12
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L13
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	rax, QWORD PTR -40[rbp]
	cmp	rax, QWORD PTR -48[rbp]
	jbe	.L14
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	sub	QWORD PTR -48[rbp], rax
	cmp	QWORD PTR -48[rbp], 0
	jne	.L15
	mov	eax, DWORD PTR -12[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	ecx, eax
	sal	rdx, cl
	mov	rax, rdx
	jmp	.L10
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	_ZSt13__countr_zeroIyEiT_
	mov	ecx, eax
	shr	QWORD PTR -48[rbp], cl
	jmp	.L16
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	QWORD PTR -16[rbp], rax
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
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
	mov	rcx, rax
	mov	rax, QWORD PTR -8[rbp]
	cqo
	idiv	rcx
	imul	rax, QWORD PTR -16[rbp]
	leave
	ret
_Z3gcdxx:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	cmp	QWORD PTR -16[rbp], 0
	jne	.L22
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L23
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
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	call	_Z5setupv
	mov	QWORD PTR -8[rbp], 0
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L25
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -24[rbp], rax
	jmp	.L26
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -32[rbp], rax
	jmp	.L27
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_Z3gcdxx
	cmp	rax, 1
	jne	.L28
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_Z3gcdxx
	cmp	rax, 1
	jne	.L28
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_Z3gcdxx
	cmp	rax, 1
	jne	.L28
	mov	eax, 1
	jmp	.L29
	mov	eax, 0
	test	al, al
	je	.L30
	mov	rax, QWORD PTR -16[rbp]
	imul	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	imul	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	sub	QWORD PTR -32[rbp], 1
	mov	rax, QWORD PTR -16[rbp]
	imul	rax, QWORD PTR -24[rbp]
	imul	rax, QWORD PTR -32[rbp]
	cmp	QWORD PTR -8[rbp], rax
	jl	.L31
	sub	QWORD PTR -24[rbp], 1
	mov	rax, QWORD PTR -24[rbp]
	imul	rax, rax
	imul	rax, QWORD PTR -16[rbp]
	cmp	QWORD PTR -8[rbp], rax
	jl	.L32
	sub	QWORD PTR -16[rbp], 1
	mov	rax, QWORD PTR -16[rbp]
	imul	rax, rax
	imul	rax, QWORD PTR -16[rbp]
	cmp	QWORD PTR -8[rbp], rax
	jl	.L33
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
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
	jne	.L37
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L37
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