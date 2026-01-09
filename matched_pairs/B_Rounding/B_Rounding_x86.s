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
	sub	rsp, 136
	call	_Z5setupv
	lea	rax, -112[rbp]
	mov	rdi, rax
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	lea	rax, -112[rbp]
	mov	rdi, rax
	lea	rdx, -1[rax]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 53
	setle	al
	test	al, al
	je	.L7
	lea	rax, -112[rbp]
	mov	rdi, rax
	lea	rdx, -1[rax]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	BYTE PTR [rax], 48
	jmp	.L8
	lea	rax, -112[rbp]
	mov	rdi, rax
	cmp	rax, 1
	sete	al
	test	al, al
	je	.L9
	lea	rax, -112[rbp]
	lea	rdx, .LC4[rip]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L8
	lea	rax, -112[rbp]
	mov	rdi, rax
	lea	rdx, -2[rax]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 57
	setne	al
	test	al, al
	je	.L10
	lea	rax, -112[rbp]
	mov	rdi, rax
	lea	rdx, -2[rax]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	add	eax, 1
	mov	ebx, eax
	lea	rax, -112[rbp]
	mov	rdi, rax
	lea	rdx, -2[rax]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	BYTE PTR [rax], bl
	lea	rax, -112[rbp]
	mov	rdi, rax
	lea	rdx, -1[rax]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	BYTE PTR [rax], 48
	jmp	.L8
	lea	rax, -65[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	lea	rdx, -65[rbp]
	lea	rax, -144[rbp]
	lea	rcx, .LC5[rip]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -65[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	mov	BYTE PTR -17[rbp], 0
	lea	rax, -112[rbp]
	mov	rdi, rax
	sub	eax, 2
	mov	DWORD PTR -24[rbp], eax
	jmp	.L11
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 57
	jne	.L12
	movzx	eax, BYTE PTR -17[rbp]
	xor	eax, 1
	test	al, al
	je	.L12
	mov	eax, 1
	jmp	.L13
	mov	eax, 0
	test	al, al
	je	.L14
	lea	rax, -144[rbp]
	lea	rdx, .LC5[rip]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L15
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 57
	je	.L16
	movzx	eax, BYTE PTR -17[rbp]
	xor	eax, 1
	test	al, al
	je	.L16
	mov	eax, 1
	jmp	.L17
	mov	eax, 0
	test	al, al
	je	.L18
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	add	eax, 1
	movsx	edx, al
	lea	rax, -144[rbp]
	mov	esi, edx
	mov	rdi, rax
	mov	BYTE PTR -17[rbp], 1
	jmp	.L15
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	edx, al
	lea	rax, -144[rbp]
	mov	esi, edx
	mov	rdi, rax
	sub	DWORD PTR -24[rbp], 1
	cmp	DWORD PTR -24[rbp], 0
	jns	.L19
	lea	rax, -144[rbp]
	mov	rdi, rax
	mov	rbx, rax
	lea	rax, -144[rbp]
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdi, rax
	lea	rax, -144[rbp]
	mov	esi, 0
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 48
	sete	al
	test	al, al
	je	.L20
	lea	rax, -64[rbp]
	lea	rdx, -144[rbp]
	lea	rcx, .LC6[rip]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rdx, -64[rbp]
	lea	rax, -144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	rdi, rax
	lea	rdx, -144[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -144[rbp]
	mov	rdi, rax
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	esi, 10
	mov	rdi, rax
	mov	ebx, 0
	lea	rax, -112[rbp]
	mov	rdi, rax
	mov	eax, ebx
	mov	rbx, QWORD PTR -8[rbp]
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
	jmp	.L25
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
	jne	.L26
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
	mov	rbx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	cmp	QWORD PTR -48[rbp], 0
	je	.L29
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -48[rbp]
	add	rax, rdx
	jmp	.L30
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	lea	rax, -8[rbp]
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
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	QWORD PTR -8[rbp], rax
	lea	rax, -9[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -10[rbp]
	lea	rdx, -9[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -10[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -10[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	lea	rax, -9[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -8[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	nop
	mov	rax, QWORD PTR -24[rbp]
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
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	test	al, al
	je	.L37
	mov	rax, QWORD PTR -32[rbp]
	cmp	rax, QWORD PTR -40[rbp]
	je	.L37
	mov	eax, 1
	jmp	.L38
	mov	eax, 0
	test	al, al
	je	.L39
	lea	rax, .LC7[rip]
	mov	rdi, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, 15
	jbe	.L40
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	lea	rdx, -16[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	jne	.L50
	lea	rax, -16[rbp]
	mov	rdi, rax
	jmp	.L48
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -8[rbp]
	mov	rdi, rax
	lea	rax, -16[rbp]
	mov	rdi, rax
	lea	rdx, -16[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	jne	.L49
	jmp	.L45
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
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaIcEC1ERKS_@PLT
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
	lea	rdx, -1[rax]
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
	setb	al
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
	lea	rax, -32[rbp]
	mov	rdi, rax
	mov	rbx, rax
	lea	rax, -24[rbp]
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
	mov	QWORD PTR -8[rbp], rdi
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
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -1[rbp], al
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	BYTE PTR [rax], dl
	lea	rax, -1[rbp]
	mov	rdi, rax
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	BYTE PTR [rax], dl
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
	jne	.L77
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L77
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