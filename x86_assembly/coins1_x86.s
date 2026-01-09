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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], 0
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
	mov	QWORD PTR 8[rax], 0
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 24[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 32[rax], 0
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
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 144
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	mov	esi, 0
	lea	rax, _ZSt4cout[rip+8]
	mov	rdi, rax
	lea	rax, -112[rbp]
	mov	rdi, rax
	mov	DWORD PTR -52[rbp], 0
	mov	BYTE PTR -45[rbp], 65
	lea	rdx, -52[rbp]
	lea	rcx, -45[rbp]
	lea	rax, -60[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rdx, -60[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	DWORD PTR -36[rbp], 0
	mov	BYTE PTR -29[rbp], 66
	lea	rdx, -36[rbp]
	lea	rcx, -29[rbp]
	lea	rax, -44[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rdx, -44[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	DWORD PTR -20[rbp], 0
	mov	BYTE PTR -13[rbp], 67
	lea	rdx, -20[rbp]
	lea	rcx, -13[rbp]
	lea	rax, -28[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rdx, -28[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -144[rbp]
	mov	rdi, rax
	lea	rax, -144[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	lea	rax, -144[rbp]
	mov	esi, 1
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 62
	sete	al
	test	al, al
	je	.L12
	lea	rax, -144[rbp]
	mov	esi, 0
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	edx, DWORD PTR [rax]
	add	edx, 1
	mov	DWORD PTR [rax], edx
	jmp	.L13
	lea	rax, -144[rbp]
	mov	esi, 2
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	edx, DWORD PTR [rax]
	add	edx, 1
	mov	DWORD PTR [rax], edx
	lea	rax, -144[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	lea	rax, -144[rbp]
	mov	esi, 1
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 62
	sete	al
	test	al, al
	je	.L14
	lea	rax, -144[rbp]
	mov	esi, 0
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	edx, DWORD PTR [rax]
	add	edx, 1
	mov	DWORD PTR [rax], edx
	jmp	.L15
	lea	rax, -144[rbp]
	mov	esi, 2
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	edx, DWORD PTR [rax]
	add	edx, 1
	mov	DWORD PTR [rax], edx
	lea	rax, -144[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	lea	rax, -144[rbp]
	mov	esi, 1
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 62
	sete	al
	test	al, al
	je	.L16
	lea	rax, -144[rbp]
	mov	esi, 0
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	edx, DWORD PTR [rax]
	add	edx, 1
	mov	DWORD PTR [rax], edx
	jmp	.L17
	lea	rax, -144[rbp]
	mov	esi, 2
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	edx, DWORD PTR [rax]
	add	edx, 1
	mov	DWORD PTR [rax], edx
	mov	BYTE PTR -12[rbp], 65
	lea	rdx, -12[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	cmp	eax, 1
	jne	.L18
	mov	BYTE PTR -11[rbp], 66
	lea	rdx, -11[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	cmp	eax, 1
	jne	.L18
	mov	BYTE PTR -10[rbp], 67
	lea	rdx, -10[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	cmp	eax, 1
	jne	.L18
	mov	eax, 1
	jmp	.L19
	mov	eax, 0
	test	al, al
	je	.L20
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L21
	mov	BYTE PTR -9[rbp], 65
	lea	rdx, -9[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	sete	al
	test	al, al
	je	.L22
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L23
	mov	BYTE PTR -8[rbp], 66
	lea	rdx, -8[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	sete	al
	test	al, al
	je	.L24
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L23
	mov	BYTE PTR -7[rbp], 67
	lea	rdx, -7[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	sete	al
	test	al, al
	je	.L23
	lea	rax, .LC3[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	BYTE PTR -6[rbp], 65
	lea	rdx, -6[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	cmp	eax, 1
	sete	al
	test	al, al
	je	.L25
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L26
	mov	BYTE PTR -5[rbp], 66
	lea	rdx, -5[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	cmp	eax, 1
	sete	al
	test	al, al
	je	.L27
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L26
	mov	BYTE PTR -4[rbp], 67
	lea	rdx, -4[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	cmp	eax, 1
	sete	al
	test	al, al
	je	.L26
	lea	rax, .LC3[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	BYTE PTR -3[rbp], 65
	lea	rdx, -3[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	cmp	eax, 2
	sete	al
	test	al, al
	je	.L28
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L21
	mov	BYTE PTR -2[rbp], 66
	lea	rdx, -2[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	cmp	eax, 2
	sete	al
	test	al, al
	je	.L29
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L21
	mov	BYTE PTR -1[rbp], 67
	lea	rdx, -1[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	cmp	eax, 2
	sete	al
	test	al, al
	je	.L21
	lea	rax, .LC3[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	lea	rax, -144[rbp]
	mov	rdi, rax
	lea	rax, -112[rbp]
	mov	rdi, rax
	mov	eax, 0
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 8
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
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
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
	mov	rdi, rax
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 4[rax], edx
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rbx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rsi, rax
	mov	rdi, rbx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	rdx, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	mov	QWORD PTR -48[rbp], rax
	lea	rdx, -48[rbp]
	lea	rax, -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	jne	.L40
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	lea	rax, -56[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rcx, QWORD PTR -80[rbp]
	lea	rax, -34[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt4lessIcEclERKcS2_
	test	al, al
	je	.L41
	mov	eax, 1
	jmp	.L42
	mov	eax, 0
	test	al, al
	je	.L43
	mov	rbx, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR -80[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -56[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rcx, -33[rbp]
	lea	rdx, -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	r8, rcx
	mov	rcx, rdx
	mov	rsi, rax
	mov	rdi, rbx
	mov	QWORD PTR -56[rbp], rax
	lea	rax, -56[rbp]
	mov	rdi, rax
	add	rax, 4
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	rdx, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	mov	QWORD PTR -48[rbp], rax
	lea	rdx, -48[rbp]
	lea	rax, -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	jne	.L46
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	lea	rax, -56[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rcx, QWORD PTR -80[rbp]
	lea	rax, -34[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt4lessIcEclERKcS2_
	test	al, al
	je	.L47
	mov	eax, 1
	jmp	.L48
	mov	eax, 0
	test	al, al
	je	.L49
	mov	rbx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -56[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rcx, -33[rbp]
	lea	rdx, -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	r8, rcx
	mov	rcx, rdx
	mov	rsi, rax
	mov	rdi, rbx
	mov	QWORD PTR -56[rbp], rax
	lea	rax, -56[rbp]
	mov	rdi, rax
	add	rax, 4
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
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	jmp	.L57
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	QWORD PTR -8[rbp], rax
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -32[rbp], rax
	cmp	QWORD PTR -32[rbp], 0
	jne	.L58
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
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 112
	mov	QWORD PTR -104[rbp], rdi
	mov	QWORD PTR -112[rbp], rsi
	mov	rax, QWORD PTR -112[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -104[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -104[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -96[rbp], rax
	mov	QWORD PTR -88[rbp], rdx
	mov	rax, QWORD PTR -88[rbp]
	test	rax, rax
	je	.L64
	mov	BYTE PTR -57[rbp], 1
	mov	rdx, QWORD PTR -88[rbp]
	mov	rsi, QWORD PTR -96[rbp]
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	mov	QWORD PTR -56[rbp], rax
	lea	rdx, -57[rbp]
	lea	rcx, -56[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -80[rbp]
	mov	rdx, QWORD PTR -72[rbp]
	jmp	.L66
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -104[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	BYTE PTR -17[rbp], 0
	mov	rdx, QWORD PTR -96[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -17[rbp]
	lea	rcx, -16[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	sete	al
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
	nop
	mov	eax, ebx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
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
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	setl	al
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
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
	push	r12
	push	rbx
	sub	rsp, 80
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	QWORD PTR -72[rbp], rdx
	mov	QWORD PTR -80[rbp], rcx
	mov	QWORD PTR -88[rbp], r8
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	mov	r12, rax
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	mov	rsi, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, r12
	mov	rdx, rbx
	mov	rdi, rax
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rcx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	test	rax, rax
	je	.L82
	mov	rdx, QWORD PTR -40[rbp]
	mov	rsi, QWORD PTR -48[rbp]
	mov	rcx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	jmp	.L84
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -32[rbp]
	add	rsp, 80
	pop	rbx
	pop	r12
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
	push	r12
	push	rbx
	sub	rsp, 80
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	QWORD PTR -72[rbp], rdx
	mov	QWORD PTR -80[rbp], rcx
	mov	QWORD PTR -88[rbp], r8
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	mov	r12, rax
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	mov	rsi, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, r12
	mov	rdx, rbx
	mov	rdi, rax
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rcx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	test	rax, rax
	je	.L90
	mov	rdx, QWORD PTR -40[rbp]
	mov	rsi, QWORD PTR -48[rbp]
	mov	rcx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	jmp	.L92
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -32[rbp]
	add	rsp, 80
	pop	rbx
	pop	r12
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
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
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
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 120
	mov	QWORD PTR -120[rbp], rdi
	mov	QWORD PTR -128[rbp], rsi
	mov	rax, QWORD PTR -120[rbp]
	mov	rdi, rax
	mov	QWORD PTR -96[rbp], rax
	mov	rax, QWORD PTR -120[rbp]
	mov	rdi, rax
	mov	QWORD PTR -104[rbp], rax
	mov	BYTE PTR -17[rbp], 1
	jmp	.L104
	mov	rax, QWORD PTR -96[rbp]
	mov	QWORD PTR -104[rbp], rax
	mov	rbx, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR -96[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -128[rbp]
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNKSt4lessIcEclERKcS2_
	mov	BYTE PTR -17[rbp], al
	cmp	BYTE PTR -17[rbp], 0
	je	.L105
	mov	rax, QWORD PTR -96[rbp]
	mov	rdi, rax
	jmp	.L106
	mov	rax, QWORD PTR -96[rbp]
	mov	rdi, rax
	mov	QWORD PTR -96[rbp], rax
	mov	rax, QWORD PTR -96[rbp]
	test	rax, rax
	jne	.L107
	mov	rdx, QWORD PTR -104[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	cmp	BYTE PTR -17[rbp], 0
	je	.L108
	mov	rax, QWORD PTR -120[rbp]
	mov	rdi, rax
	mov	QWORD PTR -88[rbp], rax
	lea	rdx, -88[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L109
	lea	rdx, -104[rbp]
	lea	rcx, -96[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -80[rbp]
	mov	rdx, QWORD PTR -72[rbp]
	jmp	.L112
	lea	rax, -112[rbp]
	mov	rdi, rax
	mov	rbx, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR -112[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -128[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	call	_ZNKSt4lessIcEclERKcS2_
	test	al, al
	je	.L111
	lea	rdx, -104[rbp]
	lea	rcx, -96[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	jmp	.L112
	mov	QWORD PTR -32[rbp], 0
	lea	rdx, -32[rbp]
	lea	rcx, -112[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -1[rbp]
	mov	rsi, rdx
	mov	rdi, rax
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
	cmp	QWORD PTR -48[rbp], 0
	jne	.L116
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -56[rbp], rax
	je	.L116
	mov	rbx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	r12, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	rdx, r12
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNKSt4lessIcEclERKcS2_
	test	al, al
	je	.L117
	mov	eax, 1
	jmp	.L118
	mov	eax, 0
	mov	BYTE PTR -17[rbp], al
	mov	rax, QWORD PTR -40[rbp]
	lea	rcx, 8[rax]
	movzx	eax, BYTE PTR -17[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rsi, QWORD PTR -64[rbp]
	mov	edi, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 40[rax]
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR 40[rax], rdx
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -32[rbp]
	add	rsp, 48
	pop	rbx
	pop	r12
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
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR 8[rax], dl
	nop
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
	push	rbx
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rsi, rax
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, rdx
	mov	rdx, rbx
	mov	rdi, rax
	mov	rbx, QWORD PTR -8[rbp]
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
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 32
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
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
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
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
	push	r12
	push	rbx
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -64[rbp], rcx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	r12, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rsi, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	r8, r12
	mov	rcx, rbx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	add	rsp, 48
	pop	rbx
	pop	r12
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 280
	mov	QWORD PTR -264[rbp], rdi
	mov	QWORD PTR -272[rbp], rsi
	mov	QWORD PTR -280[rbp], rdx
	lea	rax, -272[rbp]
	mov	rdi, rax
	mov	QWORD PTR -232[rbp], rax
	mov	rbx, QWORD PTR -232[rbp]
	mov	rax, QWORD PTR -264[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	sete	al
	test	al, al
	je	.L140
	mov	rax, QWORD PTR -264[rbp]
	mov	rdi, rax
	test	rax, rax
	je	.L141
	mov	rbx, QWORD PTR -264[rbp]
	mov	rax, QWORD PTR -264[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -280[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	call	_ZNKSt4lessIcEclERKcS2_
	test	al, al
	je	.L141
	mov	eax, 1
	jmp	.L142
	mov	eax, 0
	test	al, al
	je	.L143
	mov	rax, QWORD PTR -264[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	QWORD PTR -200[rbp], 0
	lea	rcx, -200[rbp]
	lea	rax, -224[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -224[rbp]
	mov	rdx, QWORD PTR -216[rbp]
	jmp	.L155
	mov	rdx, QWORD PTR -280[rbp]
	mov	rax, QWORD PTR -264[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L155
	mov	rbx, QWORD PTR -264[rbp]
	mov	rax, QWORD PTR -232[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -280[rbp]
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNKSt4lessIcEclERKcS2_
	test	al, al
	je	.L145
	mov	rax, QWORD PTR -232[rbp]
	mov	QWORD PTR -240[rbp], rax
	mov	rbx, QWORD PTR -232[rbp]
	mov	rax, QWORD PTR -264[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	cmp	rbx, rax
	sete	al
	test	al, al
	je	.L146
	mov	rax, QWORD PTR -264[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -264[rbp]
	mov	rdi, rax
	mov	rcx, rax
	lea	rax, -192[rbp]
	mov	rdx, rbx
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -192[rbp]
	mov	rdx, QWORD PTR -184[rbp]
	jmp	.L155
	mov	rbx, QWORD PTR -264[rbp]
	lea	rax, -240[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -280[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	call	_ZNKSt4lessIcEclERKcS2_
	test	al, al
	je	.L148
	mov	rax, QWORD PTR -240[rbp]
	mov	rdi, rax
	test	rax, rax
	sete	al
	test	al, al
	je	.L149
	mov	QWORD PTR -152[rbp], 0
	lea	rdx, -240[rbp]
	lea	rcx, -152[rbp]
	lea	rax, -176[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -176[rbp]
	mov	rdx, QWORD PTR -168[rbp]
	jmp	.L155
	lea	rdx, -232[rbp]
	lea	rcx, -232[rbp]
	lea	rax, -144[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -144[rbp]
	mov	rdx, QWORD PTR -136[rbp]
	jmp	.L155
	mov	rdx, QWORD PTR -280[rbp]
	mov	rax, QWORD PTR -264[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L155
	mov	rbx, QWORD PTR -264[rbp]
	mov	rax, QWORD PTR -232[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -280[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	call	_ZNKSt4lessIcEclERKcS2_
	test	al, al
	je	.L150
	mov	rax, QWORD PTR -232[rbp]
	mov	QWORD PTR -248[rbp], rax
	mov	rbx, QWORD PTR -232[rbp]
	mov	rax, QWORD PTR -264[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	cmp	rbx, rax
	sete	al
	test	al, al
	je	.L151
	mov	rax, QWORD PTR -264[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	QWORD PTR -104[rbp], 0
	lea	rcx, -104[rbp]
	lea	rax, -128[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -128[rbp]
	mov	rdx, QWORD PTR -120[rbp]
	jmp	.L155
	mov	rbx, QWORD PTR -264[rbp]
	lea	rax, -248[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -280[rbp]
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNKSt4lessIcEclERKcS2_
	test	al, al
	je	.L153
	mov	rax, QWORD PTR -232[rbp]
	mov	rdi, rax
	test	rax, rax
	sete	al
	test	al, al
	je	.L154
	mov	QWORD PTR -72[rbp], 0
	lea	rdx, -232[rbp]
	lea	rcx, -72[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -96[rbp]
	mov	rdx, QWORD PTR -88[rbp]
	jmp	.L155
	lea	rdx, -248[rbp]
	lea	rcx, -248[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	jmp	.L155
	mov	rdx, QWORD PTR -280[rbp]
	mov	rax, QWORD PTR -264[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L155
	mov	QWORD PTR -24[rbp], 0
	lea	rdx, -24[rbp]
	lea	rcx, -232[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
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
	mov	rbx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rsi, rax
	mov	rdi, rbx
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
	push	r12
	push	rbx
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -64[rbp], rcx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	r12, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rsi, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	r8, r12
	mov	rcx, rbx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	add	rsp, 48
	pop	rbx
	pop	r12
	pop	rbp
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, 1
	mov	rsi, rax
	mov	rdi, rcx
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
	mov	esi, 1
	mov	rdi, rax
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
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	edi, 40
	call	_ZnwmPv
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	r12, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdx, r12
	mov	rsi, rbx
	mov	rdi, rax
	nop
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 8
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 24[rax]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
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
	mov	rdi, rax
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR -8[rbp]
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
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 32
	mov	rdi, rax
	leave
	ret
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
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
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
	jmp	.L183
	mov	rbx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	call	_ZNKSt4lessIcEclERKcS2_
	xor	eax, 1
	test	al, al
	je	.L184
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	mov	QWORD PTR -48[rbp], rax
	jmp	.L183
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	mov	QWORD PTR -48[rbp], rax
	cmp	QWORD PTR -48[rbp], 0
	jne	.L185
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
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
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -72[rbp], r8
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, rax
	mov	edi, 40
	call	_ZnwmPv
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	mov	r14, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	r13, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	r12, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	r8, r14
	mov	rcx, r13
	mov	rdx, r12
	mov	rsi, rbx
	mov	rdi, rax
	nop
	add	rsp, 48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR [rax]
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 40[rax]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 32
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
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 24
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
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rbx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rsi, rax
	mov	rdi, rbx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -72[rbp], r8
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, rax
	mov	edi, 40
	call	_ZnwmPv
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	mov	r14, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	r13, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	r12, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	r8, r14
	mov	rcx, r13
	mov	rdx, r12
	mov	rsi, rbx
	mov	rdi, rax
	nop
	add	rsp, 48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
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
	mov	rdi, rax
	mov	rdx, rax
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
	mov	QWORD PTR -8[rbp], rdi
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
	push	r12
	push	rbx
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	QWORD PTR -48[rbp], rcx
	mov	QWORD PTR -56[rbp], r8
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	r12, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rsi, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	r8, r12
	mov	rcx, rbx
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rdx], rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r12
	push	rbx
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	QWORD PTR -48[rbp], rcx
	mov	QWORD PTR -56[rbp], r8
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	r12, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rsi, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	r8, r12
	mov	rcx, rbx
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
	mov	QWORD PTR -16[rbp], rsi
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
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
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
	movabs	rax, 230584300921369395
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
	je	.L229
	movabs	rax, 461168601842738790
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L230
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	mov	rdi, rax
	call	_Znwm@PLT
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
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	edi, 8
	call	_ZnwmPv
	mov	rsi, rbx
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 88
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	QWORD PTR -72[rbp], rdx
	mov	QWORD PTR -80[rbp], rcx
	mov	QWORD PTR -88[rbp], r8
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5tupleIJRKcEEC1EOS2_
	lea	rbx, -32[rbp]
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rsi, rax
	mov	edi, 8
	call	_ZnwmPv
	mov	rsi, rbx
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
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 88
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	QWORD PTR -72[rbp], rdx
	mov	QWORD PTR -80[rbp], rcx
	mov	QWORD PTR -88[rbp], r8
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5tupleIJOcEEC1EOS1_
	lea	rbx, -32[rbp]
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rsi, rax
	mov	edi, 8
	call	_ZnwmPv
	mov	rsi, rbx
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
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR -16[rbp]
	add	rax, 4
	mov	rdi, rax
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 4[rax], edx
	nop
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
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	lea	rdx, -17[rbp]
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
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	lea	rdx, -17[rbp]
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
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	mov	rdi, rax
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 4[rax], 0
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
	mov	rdi, rax
	mov	rdi, rax
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 4[rax], 0
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
	mov	rdi, rax
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
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
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L268
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L268
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