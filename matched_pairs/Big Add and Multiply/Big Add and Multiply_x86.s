	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	eax, 0
	test	al, al
	je	.L3
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	jmp	.L4
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	strlen@PLT
	nop
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
	je	.L6
	mov	eax, DWORD PTR -28[rbp]
	neg	eax
	jmp	.L7
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
	jnb	.L10
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L11
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jnb	.L12
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	jmp	.L11
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jnb	.L13
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 2
	jmp	.L11
	mov	eax, DWORD PTR -36[rbp]
	cmp	QWORD PTR -24[rbp], rax
	jbe	.L14
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 3
	jmp	.L11
	mov	eax, DWORD PTR -36[rbp]
	mov	edx, 0
	div	QWORD PTR -24[rbp]
	mov	DWORD PTR -36[rbp], eax
	add	DWORD PTR -4[rbp], 4
	jmp	.L15
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 144
	mov	QWORD PTR -120[rbp], rdi
	mov	QWORD PTR -128[rbp], rsi
	mov	QWORD PTR -136[rbp], rdx
	lea	rax, -97[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	lea	rdx, -97[rbp]
	mov	rax, QWORD PTR -120[rbp]
	lea	rcx, .LC0[rip]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -97[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	mov	DWORD PTR -4[rbp], 0
	mov	rax, QWORD PTR -128[rbp]
	mov	rdi, rax
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	sub	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L17
	cmp	DWORD PTR -8[rbp], 0
	js	.L18
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -128[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	jmp	.L19
	mov	eax, 0
	mov	DWORD PTR -16[rbp], eax
	cmp	DWORD PTR -12[rbp], 0
	js	.L20
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -136[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	jmp	.L21
	mov	eax, 0
	mov	DWORD PTR -20[rbp], eax
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -20[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, edx
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR -24[rbp]
	movsx	rax, edx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, edx
	sar	esi, 31
	sub	eax, esi
	mov	ecx, eax
	mov	eax, ecx
	sal	eax, 2
	add	eax, ecx
	add	eax, eax
	sub	edx, eax
	mov	DWORD PTR -24[rbp], edx
	lea	rax, -64[rbp]
	mov	edx, DWORD PTR -24[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	_ZNSt7__cxx119to_stringEi
	lea	rax, -96[rbp]
	mov	rdx, QWORD PTR -120[rbp]
	lea	rcx, -64[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rdx, -96[rbp]
	mov	rax, QWORD PTR -120[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -96[rbp]
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	rdi, rax
	sub	DWORD PTR -8[rbp], 1
	sub	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -8[rbp], 0
	jns	.L22
	cmp	DWORD PTR -12[rbp], 0
	jns	.L22
	cmp	DWORD PTR -4[rbp], 0
	jne	.L22
	nop
	mov	rax, QWORD PTR -120[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 192
	mov	QWORD PTR -168[rbp], rdi
	mov	QWORD PTR -176[rbp], rsi
	mov	DWORD PTR -180[rbp], edx
	lea	rax, -145[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	lea	rdx, -145[rbp]
	mov	rax, QWORD PTR -168[rbp]
	lea	rcx, .LC0[rip]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -145[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	mov	DWORD PTR -4[rbp], 0
	mov	rax, QWORD PTR -176[rbp]
	mov	rdi, rax
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L25
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -176[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	imul	eax, DWORD PTR -180[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR -12[rbp]
	movsx	rax, edx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, edx
	sar	esi, 31
	sub	eax, esi
	mov	ecx, eax
	mov	eax, ecx
	sal	eax, 2
	add	eax, ecx
	add	eax, eax
	sub	edx, eax
	mov	DWORD PTR -12[rbp], edx
	lea	rax, -112[rbp]
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	_ZNSt7__cxx119to_stringEi
	lea	rax, -144[rbp]
	mov	rdx, QWORD PTR -168[rbp]
	lea	rcx, -112[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rdx, -144[rbp]
	mov	rax, QWORD PTR -168[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -144[rbp]
	mov	rdi, rax
	lea	rax, -112[rbp]
	mov	rdi, rax
	sub	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 0
	jns	.L26
	jmp	.L27
	mov	ecx, DWORD PTR -4[rbp]
	movsx	rax, ecx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	lea	rax, -48[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	_ZNSt7__cxx119to_stringEi
	lea	rax, -80[rbp]
	mov	rdx, QWORD PTR -168[rbp]
	lea	rcx, -48[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rdx, -80[rbp]
	mov	rax, QWORD PTR -168[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rax, -48[rbp]
	mov	rdi, rax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -4[rbp], 0
	jg	.L28
	nop
	mov	rax, QWORD PTR -168[rbp]
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 144
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	lea	rax, -1[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	lea	rdx, -1[rbp]
	lea	rax, -48[rbp]
	lea	rcx, .LC1[rip]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -112[rbp]
	lea	rdx, -48[rbp]
	lea	rcx, -80[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -48[rbp]
	mov	rdi, rax
	lea	rax, -1[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	lea	rax, -144[rbp]
	lea	rcx, -80[rbp]
	mov	edx, 9999
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	lea	rax, -144[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	lea	rax, -144[rbp]
	mov	rdi, rax
	lea	rax, -112[rbp]
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rdi, rax
	mov	eax, 0
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	sete	al
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -8[rbp], 0
	jmp	.L35
	add	QWORD PTR -8[rbp], 1
	mov	BYTE PTR -9[rbp], 0
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	add	rdx, rax
	lea	rax, -9[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	xor	eax, 1
	test	al, al
	jne	.L36
	mov	rax, QWORD PTR -8[rbp]
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
	jmp	.L40
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
	ja	.L41
	cmp	DWORD PTR -32[rbp], 9
	jbe	.L42
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
	jmp	.L44
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
	push	rbx
	sub	rsp, 56
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	rbx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	cmp	QWORD PTR -48[rbp], 0
	je	.L46
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -48[rbp]
	add	rax, rdx
	jmp	.L47
	mov	eax, 1
	mov	QWORD PTR -24[rbp], rax
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	nop
	mov	rbx, QWORD PTR -8[rbp]
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
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
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
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	test	al, al
	je	.L55
	mov	rax, QWORD PTR -32[rbp]
	cmp	rax, QWORD PTR -40[rbp]
	je	.L55
	mov	eax, 1
	jmp	.L56
	mov	eax, 0
	test	al, al
	je	.L57
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, 15
	jbe	.L58
	lea	rcx, -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	cmp	QWORD PTR -8[rbp], 0
	sete	al
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
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L67
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L67
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