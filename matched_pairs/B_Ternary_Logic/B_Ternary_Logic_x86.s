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
	sub	rsp, 152
	call	_Z5setupv
	lea	rax, -52[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -56[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	lea	rax, -47[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	lea	rdx, -47[rbp]
	lea	rax, -96[rbp]
	lea	rcx, .LC4[rip]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -47[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	lea	rax, -46[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	lea	rdx, -46[rbp]
	lea	rax, -128[rbp]
	lea	rcx, .LC4[rip]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -46[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	lea	rax, -45[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	lea	rdx, -45[rbp]
	lea	rax, -160[rbp]
	lea	rcx, .LC4[rip]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -45[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	jmp	.L7
	mov	eax, DWORD PTR -52[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1431655766
	shr	rdx, 32
	mov	esi, eax
	sar	esi, 31
	mov	ecx, edx
	sub	ecx, esi
	mov	edx, ecx
	add	edx, edx
	add	edx, ecx
	sub	eax, edx
	mov	ecx, eax
	mov	eax, ecx
	add	eax, 48
	movsx	edx, al
	lea	rax, -96[rbp]
	mov	esi, edx
	mov	rdi, rax
	mov	eax, DWORD PTR -52[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1431655766
	shr	rdx, 32
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -52[rbp], eax
	mov	eax, DWORD PTR -52[rbp]
	test	eax, eax
	jne	.L8
	jmp	.L9
	mov	eax, DWORD PTR -56[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1431655766
	shr	rdx, 32
	mov	esi, eax
	sar	esi, 31
	mov	ecx, edx
	sub	ecx, esi
	mov	edx, ecx
	add	edx, edx
	add	edx, ecx
	sub	eax, edx
	mov	ecx, eax
	mov	eax, ecx
	add	eax, 48
	movsx	edx, al
	lea	rax, -128[rbp]
	mov	esi, edx
	mov	rdi, rax
	mov	eax, DWORD PTR -56[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1431655766
	shr	rdx, 32
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -56[rbp], eax
	mov	eax, DWORD PTR -56[rbp]
	test	eax, eax
	jne	.L10
	jmp	.L11
	lea	rax, -128[rbp]
	lea	rdx, .LC5[rip]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -96[rbp]
	mov	rdi, rax
	mov	rbx, rax
	lea	rax, -128[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	seta	al
	test	al, al
	jne	.L12
	jmp	.L13
	lea	rax, -96[rbp]
	lea	rdx, .LC5[rip]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -96[rbp]
	mov	rdi, rax
	mov	rbx, rax
	lea	rax, -128[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L14
	mov	DWORD PTR -20[rbp], 0
	jmp	.L15
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	lea	rax, -128[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	ebx, al
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	edx, al
	mov	eax, ebx
	sub	eax, edx
	add	eax, 3
	movsx	rdx, eax
	imul	rdx, rdx, 1431655766
	shr	rdx, 32
	mov	esi, eax
	sar	esi, 31
	mov	ecx, edx
	sub	ecx, esi
	mov	edx, ecx
	add	edx, edx
	add	edx, ecx
	sub	eax, edx
	mov	ecx, eax
	mov	eax, ecx
	add	eax, 48
	movsx	edx, al
	lea	rax, -160[rbp]
	mov	esi, edx
	mov	rdi, rax
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	movsx	rbx, eax
	lea	rax, -96[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L16
	mov	QWORD PTR -32[rbp], 1
	mov	QWORD PTR -40[rbp], 0
	mov	DWORD PTR -44[rbp], 0
	jmp	.L17
	mov	eax, DWORD PTR -44[rbp]
	movsx	rdx, eax
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	cdqe
	imul	rax, QWORD PTR -32[rbp]
	add	QWORD PTR -40[rbp], rax
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	mov	QWORD PTR -32[rbp], rax
	add	DWORD PTR -44[rbp], 1
	mov	eax, DWORD PTR -44[rbp]
	movsx	rbx, eax
	lea	rax, -160[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L18
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	ebx, 0
	lea	rax, -160[rbp]
	mov	rdi, rax
	lea	rax, -128[rbp]
	mov	rdi, rax
	lea	rax, -96[rbp]
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
	jmp	.L23
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
	jne	.L24
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
	je	.L27
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -48[rbp]
	add	rax, rdx
	jmp	.L28
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
	je	.L32
	mov	rax, QWORD PTR -32[rbp]
	cmp	rax, QWORD PTR -40[rbp]
	je	.L32
	mov	eax, 1
	jmp	.L33
	mov	eax, 0
	test	al, al
	je	.L34
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, 15
	jbe	.L35
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
	jne	.L44
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L44
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