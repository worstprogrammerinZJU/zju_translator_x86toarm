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
	sub	rsp, 200
	call	_Z5setupv
	lea	rax, -176[rbp]
	mov	rdi, rax
	lea	rax, -176[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	lea	rax, -176[rbp]
	mov	rdi, rax
	mov	DWORD PTR -32[rbp], eax
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -176[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 60
	sete	al
	test	al, al
	je	.L4
	lea	rax, -208[rbp]
	mov	rdi, rax
	mov	BYTE PTR -25[rbp], 0
	mov	BYTE PTR -26[rbp], 0
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	movsx	rdx, eax
	lea	rax, -176[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 47
	sete	al
	test	al, al
	je	.L5
	mov	BYTE PTR -26[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -144[rbp]
	lea	rsi, -176[rbp]
	mov	ecx, 4
	mov	rdi, rax
	lea	rdx, -144[rbp]
	lea	rax, -208[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -144[rbp]
	mov	rdi, rax
	jmp	.L6
	mov	BYTE PTR -25[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -112[rbp]
	lea	rsi, -176[rbp]
	mov	ecx, 3
	mov	rdi, rax
	lea	rdx, -112[rbp]
	lea	rax, -208[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -112[rbp]
	mov	rdi, rax
	cmp	BYTE PTR -26[rbp], 0
	je	.L7
	mov	eax, 1
	jmp	.L8
	mov	eax, 0
	sub	DWORD PTR -20[rbp], eax
	lea	rax, -33[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	mov	eax, DWORD PTR -20[rbp]
	add	eax, eax
	movsx	rsi, eax
	lea	rdx, -33[rbp]
	lea	rax, -80[rbp]
	mov	rcx, rdx
	mov	edx, 32
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -208[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	mov	esi, 10
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rax, -33[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	cmp	BYTE PTR -25[rbp], 0
	je	.L9
	mov	eax, 1
	jmp	.L10
	mov	eax, 0
	add	DWORD PTR -20[rbp], eax
	lea	rax, -208[rbp]
	mov	rdi, rax
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 2
	cmp	DWORD PTR -24[rbp], eax
	jl	.L11
	mov	ebx, 0
	lea	rax, -176[rbp]
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
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L16
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L16
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