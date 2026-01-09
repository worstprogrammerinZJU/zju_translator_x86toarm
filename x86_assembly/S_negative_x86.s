_ZnwmPv:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
_ZSt4__lgl:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	bsr	rax, rax
	xor	rax, 63
	mov	edx, eax
	mov	eax, 63
	sub	eax, edx
	cdqe
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jnb	.L13
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L14
	mov	rax, QWORD PTR -8[rbp]
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
	push	rbx
	sub	rsp, 72
	call	_Z5setupv
	lea	rax, -41[rbp]
	mov	rdi, rax
	call	_ZNSaIiEC1Ev
	lea	rdx, -41[rbp]
	lea	rax, -80[rbp]
	mov	esi, 3
	mov	rdi, rax
	lea	rax, -41[rbp]
	mov	rdi, rax
	call	_ZNSaIiED1Ev
	mov	DWORD PTR -20[rbp], 0
	jmp	.L17
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIiSaIiEEixEm
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	add	DWORD PTR -20[rbp], 1
	cmp	DWORD PTR -20[rbp], 2
	jle	.L18
	lea	rax, -40[rbp]
	lea	rdx, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -32[rbp]
	lea	rdx, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -40[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	DWORD PTR -24[rbp], 0
	jmp	.L19
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIiSaIiEEixEm
	mov	eax, DWORD PTR [rax]
	shr	eax, 31
	test	al, al
	je	.L20
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIiSaIiEEixEm
	mov	eax, DWORD PTR [rax]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	ebx, 0
	jmp	.L21
	add	DWORD PTR -24[rbp], 1
	cmp	DWORD PTR -24[rbp], 2
	jle	.L22
	mov	ebx, 0
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIiSaIiEED1Ev
	mov	eax, ebx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
_ZNSaIiEC2Ev:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	nop
	leave
	ret
_ZNSaIiED2Ev:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rbx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	nop
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
	sal	rax, 2
	add	rax, rdx
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
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
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
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
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rdx, QWORD PTR -32[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -16[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -17[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaIiEC1ERKS_
	lea	rax, -17[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -40[rbp], rax
	seta	bl
	lea	rax, -17[rbp]
	mov	rdi, rax
	call	_ZNSaIiED1Ev
	test	bl, bl
	je	.L38
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSaIiED2Ev
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 2
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rdx], rax
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
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt8_DestroyIPiEvT_S1_
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 8[rax]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rdx]
	mov	QWORD PTR [rax], rdx
	nop
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
	xor	eax, 1
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -16[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
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
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -16[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L61
	mov	rdx, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdi, rax
	call	_ZSt4__lgl
	lea	rbx, [rax+rax]
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rcx, -48[rbp]
	lea	rax, -40[rbp]
	mov	rdx, rbx
	mov	rsi, rcx
	mov	rdi, rax
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -32[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	movabs	rax, 2305843009213693951
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	QWORD PTR -16[rbp], rax
	lea	rdx, -16[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	leave
	ret
_ZNSaIiEC2ERKS_:
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaIiEC2ERKS_
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	nop
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
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 2
	add	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	cmp	QWORD PTR -16[rbp], 0
	je	.L69
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
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
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
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
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	cmp	rbx, rax
	sete	al
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR [rax]
	mov	rax, rbx
	sub	rax, rdx
	sar	rax, 2
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 96
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	QWORD PTR -88[rbp], rdx
	jmp	.L81
	cmp	QWORD PTR -88[rbp], 0
	jne	.L82
	mov	rdx, QWORD PTR -80[rbp]
	lea	rax, -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -80[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -72[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -56[rbp]
	lea	rcx, -48[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	jmp	.L80
	sub	QWORD PTR -88[rbp], 1
	mov	rdx, QWORD PTR -80[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -72[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -64[rbp]
	lea	rdx, -32[rbp]
	lea	rcx, -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rdx, QWORD PTR -80[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -64[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -88[rbp]
	lea	rcx, -16[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -80[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rdx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	cmp	rax, 16
	setg	al
	test	al, al
	jne	.L84
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	rdx, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	cmp	rax, 16
	setg	al
	test	al, al
	je	.L86
	lea	rax, -48[rbp]
	mov	rcx, QWORD PTR -56[rbp]
	mov	edx, 16
	mov	rsi, rcx
	mov	rdi, rax
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -48[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -24[rbp]
	mov	rcx, QWORD PTR -56[rbp]
	mov	edx, 16
	mov	rsi, rcx
	mov	rdi, rax
	lea	rdx, -32[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L88
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -16[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], 0
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	cmp	QWORD PTR -16[rbp], 0
	je	.L94
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L96
	mov	eax, 0
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	nop
	pop	rbp
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
	sub	rsp, 80
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	QWORD PTR -72[rbp], rdx
	mov	rdx, QWORD PTR -72[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -40[rbp]
	lea	rcx, -32[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -73[rbp]
	lea	rcx, -16[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rdx
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
	sub	rsp, 96
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	QWORD PTR -88[rbp], rdx
	mov	rdx, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR -88[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	rdx, rax
	lea	rax, -64[rbp]
	mov	rcx, QWORD PTR -80[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -56[rbp]
	mov	rcx, QWORD PTR -88[rbp]
	mov	edx, 1
	mov	rsi, rcx
	mov	rdi, rax
	lea	rdx, -64[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -40[rbp]
	mov	rcx, QWORD PTR -80[rbp]
	mov	edx, 1
	mov	rsi, rcx
	mov	rdi, rax
	mov	rdx, QWORD PTR -80[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rcx, -56[rbp]
	lea	rdx, -48[rbp]
	lea	rsi, -40[rbp]
	lea	rax, -32[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -80[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -88[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -8[rbp]
	mov	rcx, QWORD PTR -80[rbp]
	mov	edx, 1
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -72[rbp]
	lea	rcx, -24[rbp]
	lea	rdx, -16[rbp]
	lea	rsi, -8[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -72[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	lea	rax, -8[rbp]
	mov	rdi, rax
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	ebx, DWORD PTR [rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	cmp	ebx, eax
	setl	al
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
	push	rbx
	sub	rsp, 120
	mov	QWORD PTR -104[rbp], rdi
	mov	QWORD PTR -112[rbp], rsi
	mov	rdx, QWORD PTR -112[rbp]
	mov	rax, QWORD PTR -104[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	jne	.L123
	lea	rax, -80[rbp]
	mov	rcx, QWORD PTR -104[rbp]
	mov	edx, 1
	mov	rsi, rcx
	mov	rdi, rax
	jmp	.L119
	mov	rdx, QWORD PTR -104[rbp]
	lea	rax, -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -80[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -72[rbp]
	lea	rcx, -64[rbp]
	lea	rax, -113[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L120
	lea	rax, -80[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -84[rbp], eax
	lea	rax, -48[rbp]
	lea	rcx, -80[rbp]
	mov	edx, 1
	mov	rsi, rcx
	mov	rdi, rax
	lea	rdx, -80[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -104[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -56[rbp]
	lea	rcx, -48[rbp]
	lea	rdx, -40[rbp]
	lea	rsi, -32[rbp]
	mov	rdi, rax
	lea	rax, -84[rbp]
	mov	rdi, rax
	mov	ebx, DWORD PTR [rax]
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	mov	DWORD PTR [rax], ebx
	jmp	.L121
	lea	rdx, -80[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -24[rbp]
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -112[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	jne	.L122
	jmp	.L116
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L125
	lea	rdx, -16[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -8[rbp]
	mov	rdi, rax
	lea	rax, -16[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -32[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	jne	.L126
	nop
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZdlPvm@PLT
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
	cmp	QWORD PTR -32[rbp], 0
	je	.L136
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	add	QWORD PTR -24[rbp], 4
	mov	rax, QWORD PTR -32[rbp]
	lea	rcx, -1[rax]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 96
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	QWORD PTR -88[rbp], rdx
	mov	rdx, QWORD PTR -80[rbp]
	lea	rax, -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -72[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -89[rbp]
	lea	rcx, -56[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rdx, QWORD PTR -80[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L139
	mov	rdx, QWORD PTR -72[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -64[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -40[rbp]
	lea	rcx, -32[rbp]
	lea	rax, -89[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L140
	lea	rdx, -64[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -80[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -72[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rcx, -89[rbp]
	lea	rdx, -24[rbp]
	lea	rsi, -16[rbp]
	lea	rax, -8[rbp]
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -88[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	jne	.L141
	nop
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	jmp	.L145
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rcx, QWORD PTR -56[rbp]
	lea	rdx, -24[rbp]
	lea	rsi, -16[rbp]
	lea	rax, -8[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	cmp	rax, 1
	setg	al
	test	al, al
	jne	.L146
	nop
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	sal	rax, 2
	neg	rax
	add	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -8[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -16[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rdx
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
	sub	rsp, 224
	mov	QWORD PTR -184[rbp], rdi
	mov	QWORD PTR -192[rbp], rsi
	mov	QWORD PTR -200[rbp], rdx
	mov	QWORD PTR -208[rbp], rcx
	mov	rdx, QWORD PTR -200[rbp]
	lea	rax, -176[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -192[rbp]
	lea	rax, -168[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -176[rbp]
	lea	rcx, -168[rbp]
	lea	rax, -209[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L152
	mov	rdx, QWORD PTR -208[rbp]
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -200[rbp]
	lea	rax, -152[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -160[rbp]
	lea	rcx, -152[rbp]
	lea	rax, -209[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L153
	mov	rdx, QWORD PTR -200[rbp]
	lea	rax, -144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -184[rbp]
	lea	rax, -136[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -144[rbp]
	lea	rax, -136[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L158
	mov	rdx, QWORD PTR -208[rbp]
	lea	rax, -128[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -192[rbp]
	lea	rax, -120[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -128[rbp]
	lea	rcx, -120[rbp]
	lea	rax, -209[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L155
	mov	rdx, QWORD PTR -208[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -184[rbp]
	lea	rax, -104[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -112[rbp]
	lea	rax, -104[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L158
	mov	rdx, QWORD PTR -192[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -184[rbp]
	lea	rax, -88[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -96[rbp]
	lea	rax, -88[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L158
	mov	rdx, QWORD PTR -208[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -192[rbp]
	lea	rax, -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -80[rbp]
	lea	rcx, -72[rbp]
	lea	rax, -209[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L156
	mov	rdx, QWORD PTR -192[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -184[rbp]
	lea	rax, -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -64[rbp]
	lea	rax, -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L158
	mov	rdx, QWORD PTR -208[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -200[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -48[rbp]
	lea	rcx, -40[rbp]
	lea	rax, -209[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L157
	mov	rdx, QWORD PTR -208[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -184[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -32[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L158
	mov	rdx, QWORD PTR -200[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -184[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -16[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	nop
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
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -16[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 96
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	QWORD PTR -72[rbp], rdx
	mov	QWORD PTR -80[rbp], rcx
	jmp	.L162
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -80[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -48[rbp]
	lea	rcx, -40[rbp]
	lea	rax, -81[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	jne	.L163
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	jmp	.L164
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -72[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -80[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -32[rbp]
	lea	rcx, -24[rbp]
	lea	rax, -81[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	jne	.L165
	mov	rdx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	xor	eax, 1
	test	al, al
	je	.L166
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L169
	mov	rdx, QWORD PTR -72[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -16[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	jmp	.L162
	mov	rax, QWORD PTR -56[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, -4[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
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
	sub	rsp, 80
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	QWORD PTR -72[rbp], rdx
	mov	QWORD PTR -80[rbp], rcx
	mov	rdx, QWORD PTR -80[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -72[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -32[rbp]
	lea	rdx, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -16[rbp]
	lea	rdx, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -56[rbp]
	lea	rcx, -40[rbp]
	lea	rdx, -32[rbp]
	lea	rsi, -16[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -56[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	mov	QWORD PTR -56[rbp], rdi
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -28[rbp], eax
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -40[rbp]
	mov	rdi, rax
	jmp	.L177
	lea	rax, -40[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	ebx, DWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	DWORD PTR [rax], ebx
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR [rax], rdx
	lea	rax, -40[rbp]
	mov	rdi, rax
	lea	rdx, -40[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -24[rbp]
	lea	rcx, -28[rbp]
	lea	rax, -57[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	jne	.L178
	lea	rax, -28[rbp]
	mov	rdi, rax
	mov	ebx, DWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	DWORD PTR [rax], ebx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	movabs	rax, 2305843009213693951
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L182
	movabs	rax, 4611686018427387903
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L183
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 2
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	mov	edi, 4
	call	_ZnwmPv
	mov	DWORD PTR [rax], 0
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	lea	rax, -8[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 88
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	QWORD PTR -88[rbp], rdx
	mov	rdx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	cmp	rax, 1
	setle	al
	test	al, al
	jne	.L193
	mov	rdx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, 2
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -24[rbp], rax
	lea	rax, -48[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -72[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -48[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -52[rbp], eax
	lea	rax, -52[rbp]
	mov	rdi, rax
	mov	ebx, DWORD PTR [rax]
	mov	rdx, QWORD PTR -72[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -32[rbp]
	mov	rsi, QWORD PTR -24[rbp]
	lea	rax, -40[rbp]
	mov	ecx, ebx
	mov	rdi, rax
	cmp	QWORD PTR -24[rbp], 0
	je	.L194
	sub	QWORD PTR -24[rbp], 1
	jmp	.L192
	nop
	jmp	.L188
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r12
	push	rbx
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -64[rbp], rcx
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -28[rbp], eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	ebx, DWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	DWORD PTR [rax], ebx
	lea	rax, -28[rbp]
	mov	rdi, rax
	mov	ebx, DWORD PTR [rax]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	r12, rax
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -24[rbp]
	mov	ecx, ebx
	mov	rdx, r12
	mov	esi, 0
	mov	rdi, rax
	nop
	add	rsp, 48
	pop	rbx
	pop	r12
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, 4[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
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
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	sal	rax, 2
	add	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -8[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -16[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdi, rax
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	cmp	rbx, rax
	setb	al
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
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
	sub	rsp, 96
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	QWORD PTR -88[rbp], rdx
	mov	QWORD PTR -96[rbp], rcx
	mov	rdx, QWORD PTR -96[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -56[rbp]
	lea	rdx, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -88[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -40[rbp]
	lea	rdx, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -80[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -24[rbp]
	lea	rdx, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -64[rbp]
	lea	rcx, -56[rbp]
	lea	rdx, -40[rbp]
	lea	rsi, -24[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -96[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -72[rbp]
	lea	rdx, -64[rbp]
	lea	rcx, -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -72[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	ebx, DWORD PTR [rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	cmp	ebx, eax
	setl	al
	mov	rbx, QWORD PTR -8[rbp]
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
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	cmp	QWORD PTR -16[rbp], 0
	jne	.L212
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L213
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, [rdx+rax]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 120
	mov	QWORD PTR -104[rbp], rdi
	mov	QWORD PTR -112[rbp], rsi
	mov	QWORD PTR -120[rbp], rdx
	mov	DWORD PTR -124[rbp], ecx
	mov	rax, QWORD PTR -112[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -112[rbp]
	mov	QWORD PTR -24[rbp], rax
	jmp	.L215
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 1
	add	rax, rax
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, -1[rax]
	lea	rax, -88[rbp]
	mov	rcx, QWORD PTR -104[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -104[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rdx, -88[rbp]
	lea	rcx, -80[rbp]
	lea	rax, -125[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L216
	sub	QWORD PTR -24[rbp], 1
	lea	rax, -72[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -104[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -72[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	ebx, DWORD PTR [rax]
	lea	rax, -64[rbp]
	mov	rdx, QWORD PTR -112[rbp]
	mov	rcx, QWORD PTR -104[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	rdi, rax
	mov	DWORD PTR [rax], ebx
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -112[rbp], rax
	mov	rax, QWORD PTR -120[rbp]
	sub	rax, 1
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	cmp	QWORD PTR -24[rbp], rax
	jl	.L217
	mov	rax, QWORD PTR -120[rbp]
	and	eax, 1
	test	rax, rax
	jne	.L218
	mov	rax, QWORD PTR -120[rbp]
	sub	rax, 2
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	cmp	QWORD PTR -24[rbp], rax
	jne	.L218
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 1
	add	rax, rax
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, -1[rax]
	lea	rax, -56[rbp]
	mov	rcx, QWORD PTR -104[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -56[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	ebx, DWORD PTR [rax]
	lea	rax, -48[rbp]
	mov	rdx, QWORD PTR -112[rbp]
	mov	rcx, QWORD PTR -104[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -48[rbp]
	mov	rdi, rax
	mov	DWORD PTR [rax], ebx
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, 1
	mov	QWORD PTR -112[rbp], rax
	lea	rax, -125[rbp]
	mov	rdi, rax
	lea	rax, -89[rbp]
	mov	rdi, rax
	lea	rax, -124[rbp]
	mov	rdi, rax
	mov	ebx, DWORD PTR [rax]
	mov	rdx, QWORD PTR -104[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rcx, -89[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rsi, QWORD PTR -112[rbp]
	lea	rax, -40[rbp]
	mov	r8, rcx
	mov	ecx, ebx
	mov	rdi, rax
	nop
	mov	rbx, QWORD PTR -8[rbp]
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
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
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
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
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
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -64[rbp], rcx
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -40[rbp]
	lea	rcx, -24[rbp]
	lea	rdx, -16[rbp]
	lea	rsi, -8[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -40[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rdx, QWORD PTR -32[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -16[rbp]
	lea	rdx, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -16[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
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
	push	rbx
	sub	rsp, 104
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	QWORD PTR -88[rbp], rdx
	mov	DWORD PTR -92[rbp], ecx
	mov	QWORD PTR -104[rbp], r8
	mov	rax, QWORD PTR -80[rbp]
	sub	rax, 1
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -24[rbp], rax
	jmp	.L234
	lea	rax, -56[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -72[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -56[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	ebx, DWORD PTR [rax]
	lea	rax, -48[rbp]
	mov	rdx, QWORD PTR -80[rbp]
	mov	rcx, QWORD PTR -72[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -48[rbp]
	mov	rdi, rax
	mov	DWORD PTR [rax], ebx
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -80[rbp], rax
	mov	rax, QWORD PTR -80[rbp]
	sub	rax, 1
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -80[rbp]
	cmp	rax, QWORD PTR -88[rbp]
	jle	.L235
	lea	rax, -40[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -72[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rdx, -92[rbp]
	lea	rcx, -40[rbp]
	mov	rax, QWORD PTR -104[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L235
	mov	eax, 1
	jmp	.L236
	mov	eax, 0
	test	al, al
	jne	.L237
	lea	rax, -92[rbp]
	mov	rdi, rax
	mov	ebx, DWORD PTR [rax]
	lea	rax, -32[rbp]
	mov	rdx, QWORD PTR -80[rbp]
	mov	rcx, QWORD PTR -72[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -32[rbp]
	mov	rdi, rax
	mov	DWORD PTR [rax], ebx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	lea	rax, -8[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
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
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -64[rbp], rcx
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -40[rbp]
	lea	rcx, -24[rbp]
	lea	rdx, -16[rbp]
	lea	rsi, -8[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -40[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, rbx
	sub	rax, rdx
	sar	rax, 2
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L248
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, DWORD PTR -4[rbp]
	mov	DWORD PTR [rax], edx
	add	QWORD PTR -24[rbp], 4
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	jne	.L249
	nop
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	setl	al
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
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
	sub	rsp, 56
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -64[rbp], rcx
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -24[rbp], rax
	jmp	.L256
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	rdi, rax
	mov	ebx, DWORD PTR [rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	DWORD PTR [rax], ebx
	sub	QWORD PTR -24[rbp], 1
	cmp	QWORD PTR -24[rbp], 0
	jg	.L257
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, 4[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	sub	QWORD PTR -8[rbp], 4
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L265
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L265
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