	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	DWORD PTR -20[rbp], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	ecx, DWORD PTR -20[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	r8d, ecx
	mov	rcx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rax, QWORD PTR strtol@GOTPCREL[rip]
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	eax, DWORD PTR -28[rbp]
	shr	eax, 31
	mov	BYTE PTR -1[rbp], al
	cmp	BYTE PTR -1[rbp], 0
	je	.L4
	mov	eax, DWORD PTR -28[rbp]
	neg	eax
	jmp	.L5
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, 10
	mov	edi, eax
	mov	DWORD PTR -12[rbp], eax
	lea	rax, -13[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	movzx	edx, BYTE PTR -1[rbp]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	mov	esi, eax
	lea	rdx, -13[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, rdx
	mov	edx, 45
	mov	rdi, rax
	lea	rax, -13[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	movzx	edx, BYTE PTR -1[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rcx, rax
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	mov	rdi, rcx
	nop
	mov	rax, QWORD PTR -24[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -36[rbp], edi
	mov	DWORD PTR -40[rbp], esi
	mov	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -40[rbp]
	imul	eax, eax
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	mov	edx, DWORD PTR -8[rbp]
	imul	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	imul	eax, DWORD PTR -12[rbp]
	mov	eax, eax
	mov	QWORD PTR -24[rbp], rax
	mov	eax, DWORD PTR -40[rbp]
	cmp	DWORD PTR -36[rbp], eax
	jnb	.L8
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L9
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jnb	.L10
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	jmp	.L9
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jnb	.L11
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 2
	jmp	.L9
	mov	eax, DWORD PTR -36[rbp]
	cmp	QWORD PTR -24[rbp], rax
	jbe	.L12
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 3
	jmp	.L9
	mov	eax, DWORD PTR -36[rbp]
	mov	edx, 0
	div	QWORD PTR -24[rbp]
	mov	DWORD PTR -36[rbp], eax
	add	DWORD PTR -4[rbp], 4
	jmp	.L13
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 344
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	mov	esi, 0
	lea	rax, _ZSt4cout[rip+8]
	mov	rdi, rax
	mov	DWORD PTR -20[rbp], 0
	lea	rax, -244[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -248[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	lea	rax, -288[rbp]
	mov	rdi, rax
	lea	rax, -320[rbp]
	mov	rdi, rax
	lea	rax, -352[rbp]
	mov	rdi, rax
	mov	edx, DWORD PTR -244[rbp]
	mov	eax, DWORD PTR -248[rbp]
	add	eax, edx
	mov	DWORD PTR -20[rbp], eax
	mov	edx, DWORD PTR -244[rbp]
	lea	rax, -240[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	_ZNSt7__cxx119to_stringEi
	lea	rdx, -240[rbp]
	lea	rax, -288[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -240[rbp]
	mov	rdi, rax
	mov	edx, DWORD PTR -248[rbp]
	lea	rax, -208[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	_ZNSt7__cxx119to_stringEi
	lea	rdx, -208[rbp]
	lea	rax, -320[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -208[rbp]
	mov	rdi, rax
	lea	rax, -176[rbp]
	mov	edx, DWORD PTR -20[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	_ZNSt7__cxx119to_stringEi
	lea	rdx, -176[rbp]
	lea	rax, -352[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -176[rbp]
	mov	rdi, rax
	lea	rax, -288[rbp]
	mov	rdi, rax
	mov	QWORD PTR -128[rbp], rax
	lea	rdx, -128[rbp]
	lea	rax, -136[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	BYTE PTR -97[rbp], 48
	lea	rax, -288[rbp]
	mov	rdi, rax
	mov	rbx, rax
	lea	rax, -288[rbp]
	mov	rdi, rax
	mov	rcx, rax
	lea	rax, -97[rbp]
	mov	rdx, rax
	mov	rsi, rbx
	mov	rdi, rcx
	mov	QWORD PTR -112[rbp], rax
	lea	rdx, -112[rbp]
	lea	rax, -120[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -136[rbp]
	mov	rcx, QWORD PTR -120[rbp]
	lea	rax, -288[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -320[rbp]
	mov	rdi, rax
	mov	QWORD PTR -88[rbp], rax
	lea	rdx, -88[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	BYTE PTR -57[rbp], 48
	lea	rax, -320[rbp]
	mov	rdi, rax
	mov	rbx, rax
	lea	rax, -320[rbp]
	mov	rdi, rax
	mov	rcx, rax
	lea	rax, -57[rbp]
	mov	rdx, rax
	mov	rsi, rbx
	mov	rdi, rcx
	mov	QWORD PTR -72[rbp], rax
	lea	rdx, -72[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -96[rbp]
	mov	rcx, QWORD PTR -80[rbp]
	lea	rax, -320[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -352[rbp]
	mov	rdi, rax
	mov	QWORD PTR -48[rbp], rax
	lea	rdx, -48[rbp]
	lea	rax, -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	BYTE PTR -21[rbp], 48
	lea	rax, -352[rbp]
	mov	rdi, rax
	mov	rbx, rax
	lea	rax, -352[rbp]
	mov	rdi, rax
	mov	rcx, rax
	lea	rax, -21[rbp]
	mov	rdx, rax
	mov	rsi, rbx
	mov	rdi, rcx
	mov	QWORD PTR -32[rbp], rax
	lea	rdx, -32[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR -40[rbp]
	lea	rax, -352[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -288[rbp]
	mov	edx, 10
	mov	esi, 0
	mov	rdi, rax
	mov	ebx, eax
	lea	rax, -320[rbp]
	mov	edx, 10
	mov	esi, 0
	mov	rdi, rax
	add	ebx, eax
	lea	rax, -352[rbp]
	mov	edx, 10
	mov	esi, 0
	mov	rdi, rax
	cmp	ebx, eax
	sete	al
	test	al, al
	je	.L15
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L16
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	lea	rax, -352[rbp]
	mov	rdi, rax
	lea	rax, -320[rbp]
	mov	rdi, rax
	lea	rax, -288[rbp]
	mov	rdi, rax
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	call	__errno_location@PLT
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
	call	__errno_location@PLT
	mov	DWORD PTR [rax], 0
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	call	__errno_location@PLT
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	jne	.L21
	call	__errno_location@PLT
	mov	rdx, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR [rdx]
	mov	DWORD PTR [rax], edx
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	movabs	rax, -2147483649
	cmp	QWORD PTR -8[rbp], rax
	jle	.L23
	mov	eax, 2147483648
	cmp	QWORD PTR -8[rbp], rax
	jl	.L24
	mov	eax, 1
	jmp	.L25
	mov	eax, 0
	pop	rbp
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
	mov	DWORD PTR -84[rbp], r8d
	lea	rax, -44[rbp]
	mov	rdi, rax
	mov	r8, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR -84[rbp]
	lea	rcx, -40[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	r8
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	cmp	QWORD PTR -72[rbp], rax
	jne	.L28
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	__errno_location@PLT
	mov	eax, DWORD PTR [rax]
	cmp	eax, 34
	je	.L29
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	test	al, al
	je	.L30
	mov	eax, 1
	jmp	.L31
	mov	eax, 0
	test	al, al
	je	.L32
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR -28[rbp], eax
	cmp	QWORD PTR -80[rbp], 0
	je	.L33
	mov	rax, QWORD PTR -40[rbp]
	sub	rax, QWORD PTR -72[rbp]
	mov	rdx, rax
	mov	rax, QWORD PTR -80[rbp]
	mov	QWORD PTR [rax], rdx
	mov	ebx, DWORD PTR -28[rbp]
	lea	rax, -44[rbp]
	mov	rdi, rax
	mov	eax, ebx
	mov	rbx, QWORD PTR -8[rbp]
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
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -32[rbp], edx
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L37
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, edx
	imul	rax, rax, 1374389535
	shr	rax, 32
	shr	eax, 5
	imul	ecx, eax, 100
	mov	eax, edx
	sub	eax, ecx
	add	eax, eax
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	mov	eax, eax
	imul	rax, rax, 1374389535
	shr	rax, 32
	shr	eax, 5
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	lea	ecx, 1[rax]
	mov	edx, DWORD PTR -4[rbp]
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	mov	ecx, ecx
	movzx	eax, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdx], al
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	mov	edx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -12[rbp]
	movzx	eax, BYTE PTR [rax+rcx]
	mov	BYTE PTR [rdx], al
	sub	DWORD PTR -4[rbp], 2
	cmp	DWORD PTR -32[rbp], 99
	ja	.L38
	cmp	DWORD PTR -32[rbp], 9
	jbe	.L39
	mov	eax, DWORD PTR -32[rbp]
	add	eax, eax
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	lea	ecx, 1[rax]
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 1[rax]
	mov	ecx, ecx
	movzx	eax, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdx], al
	mov	eax, DWORD PTR -8[rbp]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	rax, QWORD PTR -24[rbp]
	mov	BYTE PTR [rax], dl
	jmp	.L41
	mov	eax, DWORD PTR -32[rbp]
	add	eax, 48
	mov	edx, eax
	mov	rax, QWORD PTR -24[rbp]
	mov	BYTE PTR [rax], dl
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
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
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
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	leave
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
	push	rbx
	sub	rsp, 56
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	rdx, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	QWORD PTR -40[rbp], rax
	lea	rdx, -48[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L48
	mov	rax, QWORD PTR -40[rbp]
	jmp	.L53
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -24[rbp], rax
	lea	rax, -40[rbp]
	mov	rdi, rax
	jmp	.L50
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	xor	eax, 1
	test	al, al
	je	.L51
	lea	rax, -40[rbp]
	mov	rdi, rax
	mov	rdi, rax
	movzx	ebx, BYTE PTR [rax]
	lea	rax, -24[rbp]
	mov	rdi, rax
	mov	BYTE PTR [rax], bl
	lea	rax, -24[rbp]
	mov	rdi, rax
	lea	rax, -40[rbp]
	mov	rdi, rax
	lea	rdx, -48[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	jne	.L52
	mov	rax, QWORD PTR -24[rbp]
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
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	lea	rax, -8[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
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
	sete	al
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
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
	setne	al
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	lea	rax, -16[rbp]
	mov	rdi, rax
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	sete	al
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
	pop	rbp
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
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	lea	rdx, -24[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	sar	rax, 2
	mov	QWORD PTR -8[rbp], rax
	jmp	.L74
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L75
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L76
	lea	rax, -24[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L77
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L76
	lea	rax, -24[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L78
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L76
	lea	rax, -24[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L79
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L76
	lea	rax, -24[rbp]
	mov	rdi, rax
	sub	QWORD PTR -8[rbp], 1
	cmp	QWORD PTR -8[rbp], 0
	jg	.L80
	lea	rdx, -24[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	cmp	rax, 3
	je	.L81
	cmp	rax, 3
	jg	.L82
	cmp	rax, 1
	je	.L83
	cmp	rax, 2
	je	.L84
	jmp	.L82
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L85
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L76
	lea	rax, -24[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L86
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L76
	lea	rax, -24[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L87
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L76
	lea	rax, -24[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -32[rbp]
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
	jne	.L92
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L92
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