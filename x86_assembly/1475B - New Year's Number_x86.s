main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	jmp	.L2
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rcx, QWORD PTR -16[rbp]
	movabs	rdx, -9095523315551838321
	mov	rax, rcx
	imul	rdx
	lea	rax, [rdx+rcx]
	sar	rax, 10
	mov	rdx, rcx
	sar	rdx, 63
	sub	rax, rdx
	imul	rdx, rax, 2020
	mov	rax, rcx
	sub	rax, rdx
	test	rax, rax
	jne	.L3
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L2
	mov	rcx, QWORD PTR -16[rbp]
	movabs	rdx, 2336648432889483035
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	sar	rax, 8
	mov	rdx, rcx
	sar	rdx, 63
	sub	rax, rdx
	imul	rdx, rax, 2021
	mov	rax, rcx
	sub	rax, rdx
	test	rax, rax
	jne	.L5
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L2
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, 2020
	mov	QWORD PTR -16[rbp], rax
	mov	rcx, QWORD PTR -16[rbp]
	movabs	rdx, 2336648432889483035
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	sar	rax, 8
	mov	rdx, rcx
	sar	rdx, 63
	sub	rax, rdx
	imul	rdx, rax, 2021
	mov	rax, rcx
	sub	rax, rdx
	test	rax, rax
	jne	.L6
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L2
	mov	rax, QWORD PTR -16[rbp]
	test	rax, rax
	jns	.L5
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L2
	mov	rax, QWORD PTR -16[rbp]
	test	rax, rax
	jg	.L7
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, -1[rax]
	mov	QWORD PTR -8[rbp], rdx
	test	rax, rax
	setne	al
	test	al, al
	jne	.L8
	mov	eax, 0
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L12
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L12
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