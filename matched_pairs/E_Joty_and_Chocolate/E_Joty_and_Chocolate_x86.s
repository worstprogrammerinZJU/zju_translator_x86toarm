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
_Z3lcmii:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3gcdii
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	ecx
	imul	eax, DWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jge	.L8
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L9
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 88
	call	_Z5setupv
	lea	rax, -56[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -64[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -72[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -80[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -88[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rax, QWORD PTR -56[rbp]
	mov	rbx, QWORD PTR -64[rbp]
	cqo
	idiv	rbx
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR -72[rbp]
	cqo
	idiv	rcx
	mov	QWORD PTR -32[rbp], rax
	mov	rbx, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, rbx
	cqo
	idiv	rcx
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rax, QWORD PTR -80[rbp]
	mov	rcx, rdx
	imul	rcx, rax
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rax, QWORD PTR -88[rbp]
	imul	rax, rdx
	lea	rbx, [rcx+rax]
	lea	rdx, -88[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxIxERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	imul	rax, QWORD PTR -40[rbp]
	add	rax, rbx
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	cmp	QWORD PTR -8[rbp], 0
	js	.L13
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L14
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
	jne	.L16
	mov	eax, 64
	jmp	.L17
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
	jne	.L19
	mov	rax, QWORD PTR -48[rbp]
	jmp	.L20
	cmp	QWORD PTR -48[rbp], 0
	jne	.L21
	mov	rax, QWORD PTR -40[rbp]
	jmp	.L20
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
	jge	.L22
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L23
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	rax, QWORD PTR -40[rbp]
	cmp	rax, QWORD PTR -48[rbp]
	jbe	.L24
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	sub	QWORD PTR -48[rbp], rax
	cmp	QWORD PTR -48[rbp], 0
	jne	.L25
	mov	eax, DWORD PTR -12[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	ecx, eax
	sal	rdx, cl
	mov	rax, rdx
	jmp	.L20
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	_ZSt13__countr_zeroIyEiT_
	mov	ecx, eax
	shr	QWORD PTR -48[rbp], cl
	jmp	.L26
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	QWORD PTR -32[rbp], rax
	cmp	QWORD PTR -24[rbp], 0
	je	.L28
	cmp	QWORD PTR -32[rbp], 0
	jne	.L29
	mov	eax, 0
	jmp	.L33
	mov	rbx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, rbx
	mov	edx, 0
	div	rcx
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	edx, 0
	imul	rax, QWORD PTR -32[rbp]
	jno	.L31
	mov	edx, 1
	mov	QWORD PTR -48[rbp], rax
	mov	rax, rdx
	mov	BYTE PTR -33[rbp], al
	and	BYTE PTR -33[rbp], 1
	mov	rax, QWORD PTR -48[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L36
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L36
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