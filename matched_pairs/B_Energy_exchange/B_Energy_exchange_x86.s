	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
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
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	and	eax, DWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	or	eax, DWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	eax, DWORD PTR -4[rbp]
	not	eax
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_ZStorSt13_Ios_FmtflagsS_
	mov	rdx, QWORD PTR -8[rbp]
	mov	DWORD PTR [rdx], eax
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_ZStanSt13_Ios_FmtflagsS_
	mov	rdx, QWORD PTR -8[rbp]
	mov	DWORD PTR [rdx], eax
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -32[rbp], edx
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 24[rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	mov	edi, eax
	call	_ZStcoSt13_Ios_Fmtflags
	mov	edx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 24
	mov	esi, edx
	mov	rdi, rax
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_ZStanSt13_Ios_FmtflagsS_
	mov	edx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 24
	mov	esi, edx
	mov	rdi, rax
	mov	eax, DWORD PTR -4[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, 260
	mov	esi, 4
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
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jnb	.L20
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L21
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
_ZSt12setprecisioni:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	eax, DWORD PTR -4[rbp]
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
n:
k:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSaIdED2Ev
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
	nop
	leave
	ret
arr:
_Z3cand:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	movsd	QWORD PTR -40[rbp], xmm0
	pxor	xmm0, xmm0
	movsd	QWORD PTR -8[rbp], xmm0
	pxor	xmm0, xmm0
	movsd	QWORD PTR -16[rbp], xmm0
	mov	DWORD PTR -20[rbp], 0
	jmp	.L29
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
	call	_ZNSt6vectorIdSaIdEEixEm
	movsd	xmm0, QWORD PTR [rax]
	comisd	xmm0, QWORD PTR -40[rbp]
	seta	al
	test	al, al
	je	.L30
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
	call	_ZNSt6vectorIdSaIdEEixEm
	movsd	xmm0, QWORD PTR [rax]
	subsd	xmm0, QWORD PTR -40[rbp]
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	xmm1, QWORD PTR k[rip]
	movsd	xmm0, QWORD PTR .LC5[rip]
	subsd	xmm0, xmm1
	mulsd	xmm0, QWORD PTR -32[rbp]
	movsd	xmm1, QWORD PTR .LC5[rip]
	divsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -8[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	jmp	.L31
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
	call	_ZNSt6vectorIdSaIdEEixEm
	movsd	xmm1, QWORD PTR [rax]
	movsd	xmm0, QWORD PTR -40[rbp]
	subsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -16[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	add	DWORD PTR -20[rbp], 1
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, DWORD PTR -20[rbp]
	movsd	xmm0, QWORD PTR n[rip]
	comisd	xmm0, xmm1
	ja	.L32
	movsd	xmm0, QWORD PTR -8[rbp]
	comisd	xmm0, QWORD PTR -16[rbp]
	setnb	al
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	call	_Z5setupv
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERd@PLT
	mov	rdx, rax
	lea	rax, k[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERd@PLT
	movsd	xmm0, QWORD PTR n[rip]
	comisd	xmm0, QWORD PTR .LC6[rip]
	jnb	.L35
	cvttsd2si	rax, xmm0
	jmp	.L36
	movsd	xmm1, QWORD PTR .LC6[rip]
	subsd	xmm0, xmm1
	cvttsd2si	rax, xmm0
	movabs	rdx, -9223372036854775808
	xor	rax, rdx
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
	mov	DWORD PTR -20[rbp], 0
	jmp	.L37
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
	call	_ZNSt6vectorIdSaIdEEixEm
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERd@PLT
	add	DWORD PTR -20[rbp], 1
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, DWORD PTR -20[rbp]
	movsd	xmm0, QWORD PTR n[rip]
	comisd	xmm0, xmm1
	ja	.L38
	pxor	xmm0, xmm0
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC7[rip]
	movsd	QWORD PTR -40[rbp], xmm0
	pxor	xmm0, xmm0
	movsd	QWORD PTR -48[rbp], xmm0
	jmp	.L39
	movsd	xmm0, QWORD PTR -40[rbp]
	subsd	xmm0, QWORD PTR -32[rbp]
	movsd	xmm1, QWORD PTR .LC8[rip]
	divsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -32[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -56[rbp], xmm0
	mov	rax, QWORD PTR -56[rbp]
	movq	xmm0, rax
	call	_Z3cand
	test	al, al
	je	.L40
	movsd	xmm0, QWORD PTR -56[rbp]
	movsd	QWORD PTR -48[rbp], xmm0
	movsd	xmm0, QWORD PTR -56[rbp]
	movsd	QWORD PTR -32[rbp], xmm0
	jmp	.L39
	movsd	xmm0, QWORD PTR -56[rbp]
	movsd	QWORD PTR -40[rbp], xmm0
	movsd	xmm0, QWORD PTR -40[rbp]
	subsd	xmm0, QWORD PTR -32[rbp]
	comisd	xmm0, QWORD PTR .LC9[rip]
	ja	.L41
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rbx, rax
	mov	edi, 9
	call	_ZSt12setprecisioni
	mov	esi, eax
	mov	rdi, rbx
	mov	rdx, rax
	mov	rax, QWORD PTR -48[rbp]
	movq	xmm0, rax
	mov	rdi, rdx
	call	_ZNSolsEd@PLT
	mov	esi, 10
	mov	rdi, rax
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
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
	jnb	.L44
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L45
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSaIdEC2Ev
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	nop
	leave
	ret
_ZNSaIdED2Ev:
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 3
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
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 3
	add	rax, rdx
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	test	al, al
	je	.L52
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, rcx
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L54
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -16[rbp], rax
	setb	al
	test	al, al
	je	.L54
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 3
	add	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	nop
	leave
	ret
_ZNSaIdEC2Ev:
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
	mov	QWORD PTR -8[rbp], rdi
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
	cmp	QWORD PTR -16[rbp], 0
	je	.L60
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
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 3
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	cmp	QWORD PTR -48[rbp], 0
	je	.L70
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 3
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -8[rbp], rax
	ja	.L65
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	sub	rax, QWORD PTR -8[rbp]
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L66
	mov	eax, 1
	jmp	.L67
	mov	eax, 0
	test	al, al
	mov	rax, QWORD PTR -16[rbp]
	cmp	rax, QWORD PTR -48[rbp]
	jb	.L69
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rdx], rax
	jmp	.L70
	mov	rcx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	lea	rdx, .LC10[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rcx, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR 16[rdx]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rsi, QWORD PTR [rdx]
	sub	rcx, rsi
	mov	rdx, rcx
	sar	rdx, 3
	mov	rsi, rdx
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR [rdx]
	mov	rdx, rsi
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR 16[rax], rdx
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
	mov	rax, QWORD PTR 8[rax]
	sub	rax, QWORD PTR -32[rbp]
	sar	rax, 3
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L73
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	rdi, rax
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
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	sub	rbx, rax
	mov	rdx, rbx
	mov	rax, QWORD PTR -48[rbp]
	cmp	rdx, rax
	setb	al
	test	al, al
	je	.L83
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	QWORD PTR -32[rbp], rax
	lea	rdx, -48[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	add	rax, rbx
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -24[rbp], rax
	jb	.L84
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -24[rbp], rax
	jbe	.L85
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	jmp	.L86
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	cmp	QWORD PTR -16[rbp], 0
	je	.L89
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L91
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
	mov	QWORD PTR -32[rbp], rcx
	mov	rcx, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
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
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt8_DestroyIPdEvT_S1_
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
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZdlPvm@PLT
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	movabs	rax, 1152921504606846975
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
	mov	QWORD PTR -32[rbp], rcx
	mov	rcx, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, QWORD PTR -16[rbp]
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
	mov	rdi, rax
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
	je	.L113
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	add	QWORD PTR -24[rbp], 8
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
	mov	QWORD PTR -8[rbp], rdi
	movabs	rax, 1152921504606846975
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
	je	.L118
	movabs	rax, 2305843009213693951
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L119
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 3
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r12
	push	rbx
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	QWORD PTR -48[rbp], rcx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	r12, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rcx, rax
	mov	rdx, r12
	mov	rsi, rbx
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	rbp
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	mov	edi, 8
	call	_ZnwmPv
	pxor	xmm0, xmm0
	movsd	QWORD PTR [rax], xmm0
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
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	QWORD PTR -48[rbp], rcx
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, QWORD PTR -24[rbp]
	sar	rax, 3
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jle	.L132
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rcx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	memmove@PLT
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
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
	jne	.L137
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L138
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, [rdx+rax]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
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
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	movsd	xmm0, QWORD PTR [rax]
	movsd	QWORD PTR -8[rbp], xmm0
	jmp	.L141
	mov	rax, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR [rax], xmm0
	add	QWORD PTR -24[rbp], 8
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	jne	.L142
	nop
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L145
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L145
	lea	rax, _ZStL8__ioinit[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, _ZStL8__ioinit[rip]
	mov	rsi, rax
	mov	rdi, rax
	call	__cxa_atexit@PLT
	lea	rax, arr[rip]
	mov	rdi, rax
	call	_ZNSt6vectorIdSaIdEEC1Ev
	mov	rdx, rax
	lea	rax, arr[rip]
	mov	rsi, rax
	mov	rdi, rax
	call	__cxa_atexit@PLT
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
	mov	esi, 65535
	mov	edi, 1
	pop	rbp
	ret
0:
1:
2:
3:
4: