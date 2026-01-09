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
_Z3gcdii:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -8[rbp], 0
	jne	.L3
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L4
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
	jmp	.L6
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -24[rbp], rax
	jmp	.L7
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -32[rbp], rax
	jmp	.L8
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	cmp	rax, 1
	jne	.L9
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	cmp	rax, 1
	jne	.L9
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	cmp	rax, 1
	jne	.L9
	mov	eax, 1
	jmp	.L10
	mov	eax, 0
	test	al, al
	je	.L11
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
	jl	.L12
	sub	QWORD PTR -24[rbp], 1
	mov	rax, QWORD PTR -24[rbp]
	imul	rax, rax
	imul	rax, QWORD PTR -16[rbp]
	cmp	QWORD PTR -8[rbp], rax
	jl	.L13
	sub	QWORD PTR -16[rbp], 1
	mov	rax, QWORD PTR -16[rbp]
	imul	rax, rax
	imul	rax, QWORD PTR -16[rbp]
	cmp	QWORD PTR -8[rbp], rax
	jl	.L14
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
	mov	QWORD PTR -8[rbp], rdi
	cmp	QWORD PTR -8[rbp], 0
	js	.L17
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L18
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
	jne	.L20
	mov	eax, 64
	jmp	.L21
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
	jne	.L23
	mov	rax, QWORD PTR -48[rbp]
	jmp	.L24
	cmp	QWORD PTR -48[rbp], 0
	jne	.L25
	mov	rax, QWORD PTR -40[rbp]
	jmp	.L24
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
	jge	.L26
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L27
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	rax, QWORD PTR -40[rbp]
	cmp	rax, QWORD PTR -48[rbp]
	jbe	.L28
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	sub	QWORD PTR -48[rbp], rax
	cmp	QWORD PTR -48[rbp], 0
	jne	.L29
	mov	eax, DWORD PTR -12[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	ecx, eax
	sal	rdx, cl
	mov	rax, rdx
	jmp	.L24
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	_ZSt13__countr_zeroIyEiT_
	mov	ecx, eax
	shr	QWORD PTR -48[rbp], cl
	jmp	.L30
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
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L35
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L35
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