_ZSt3absl:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, rax
	neg	rdx
	cmovns	rax, rdx
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	nop
	pop	rbp
	ret
_ZL3INF:
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
	jne	.L10
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L11
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L12
	mov	rdx, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR -24[rbp]
	lea	rax, -33[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L12
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	add	QWORD PTR -24[rbp], 4
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	setne	al
	test	al, al
	jne	.L13
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 96
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	lea	rax, -68[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L15
	mov	rax, rsp
	mov	r12, rax
	lea	rax, -72[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -72[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -48[rbp], rdx
	movsx	rdx, eax
	mov	r14, rdx
	mov	r15d, 0
	movsx	rdx, eax
	mov	QWORD PTR -128[rbp], rdx
	mov	QWORD PTR -120[rbp], 0
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	ebx, 16
	mov	edx, 0
	div	rbx
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
	cmp	rsp, rdx
	je	.L17
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L16
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L18
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -56[rbp], rax
	mov	DWORD PTR -36[rbp], 0
	jmp	.L19
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	add	DWORD PTR -36[rbp], 1
	mov	eax, DWORD PTR -72[rbp]
	cmp	DWORD PTR -36[rbp], eax
	jl	.L20
	mov	eax, DWORD PTR -72[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	add	eax, 1
	mov	DWORD PTR -76[rbp], eax
	mov	eax, DWORD PTR -72[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	add	eax, 1
	mov	DWORD PTR -80[rbp], eax
	mov	eax, DWORD PTR -72[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, rax
	mov	eax, DWORD PTR -72[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdi, rax
	call	_ZSt3absl
	mov	DWORD PTR -84[rbp], eax
	mov	eax, DWORD PTR -72[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, rax
	mov	eax, DWORD PTR -72[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdi, rax
	call	_ZSt3absl
	mov	DWORD PTR -88[rbp], eax
	mov	eax, DWORD PTR -76[rbp]
	mov	DWORD PTR -112[rbp], eax
	mov	eax, DWORD PTR -80[rbp]
	mov	DWORD PTR -108[rbp], eax
	mov	eax, DWORD PTR -84[rbp]
	mov	DWORD PTR -104[rbp], eax
	mov	eax, DWORD PTR -88[rbp]
	mov	DWORD PTR -100[rbp], eax
	mov	DWORD PTR -40[rbp], 0
	lea	rax, -112[rbp]
	add	rax, 16
	lea	rdx, -112[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	mov	eax, DWORD PTR [rax]
	add	DWORD PTR -40[rbp], eax
	lea	rax, -112[rbp]
	add	rax, 16
	lea	rdx, -112[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -76[rbp]
	cmp	edx, eax
	je	.L21
	lea	rax, -112[rbp]
	add	rax, 16
	lea	rdx, -112[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -84[rbp]
	cmp	edx, eax
	jne	.L22
	mov	eax, 1
	jmp	.L23
	mov	eax, 0
	test	al, al
	je	.L24
	lea	rdx, -88[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minIiERKT_S2_S2_
	mov	rbx, rax
	mov	eax, DWORD PTR -80[rbp]
	mov	edx, DWORD PTR -76[rbp]
	sub	eax, edx
	mov	edi, eax
	call	abs@PLT
	mov	DWORD PTR -64[rbp], eax
	lea	rdx, -88[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minIiERKT_S2_S2_
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt3minIiERKT_S2_S2_
	mov	eax, DWORD PTR [rax]
	add	DWORD PTR -40[rbp], eax
	jmp	.L25
	lea	rdx, -84[rbp]
	lea	rax, -76[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minIiERKT_S2_S2_
	mov	rbx, rax
	mov	eax, DWORD PTR -76[rbp]
	mov	edx, DWORD PTR -80[rbp]
	sub	eax, edx
	mov	edi, eax
	call	abs@PLT
	mov	DWORD PTR -60[rbp], eax
	lea	rdx, -84[rbp]
	lea	rax, -60[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minIiERKT_S2_S2_
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSt3minIiERKT_S2_S2_
	mov	eax, DWORD PTR [rax]
	add	DWORD PTR -40[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	esi, 10
	mov	rdi, rax
	mov	rsp, r12
	mov	eax, DWORD PTR -68[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -68[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L26
	mov	eax, 0
	lea	rsp, -32[rbp]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
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
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	lea	rax, -8[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jge	.L33
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L34
	mov	rax, QWORD PTR -8[rbp]
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
	jne	.L36
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L37
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L38
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -8[rbp]
	lea	rax, -33[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L38
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	add	QWORD PTR -24[rbp], 4
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	setne	al
	test	al, al
	jne	.L39
	mov	rax, QWORD PTR -8[rbp]
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
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, QWORD PTR -8[rbp]
	sar	rax, 2
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L46
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L46
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