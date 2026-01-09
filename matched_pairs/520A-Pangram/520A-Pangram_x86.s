main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r12
	push	rbx
	sub	rsp, 192
	mov	BYTE PTR -25[rbp], 0
	lea	rax, -176[rbp]
	add	rax, 123
	lea	rdx, -25[rbp]
	lea	rcx, -176[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	call	_ZSt4fillIPbbEvT_S1_RKT0_
	lea	rax, -208[rbp]
	mov	rdi, rax
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -208[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	mov	DWORD PTR -20[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	lea	rax, -208[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	tolower@PLT
	mov	ebx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	lea	rax, -208[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	BYTE PTR [rax], bl
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	lea	rax, -208[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	cdqe
	mov	BYTE PTR -176[rbp+rax], 1
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	movsx	rbx, eax
	lea	rax, -208[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L3
	mov	DWORD PTR -24[rbp], 97
	jmp	.L4
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	movzx	eax, BYTE PTR -176[rbp+rax]
	movzx	eax, al
	test	eax, eax
	jne	.L5
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	r12d, 0
	mov	ebx, 0
	jmp	.L6
	add	DWORD PTR -24[rbp], 1
	cmp	DWORD PTR -24[rbp], 122
	jle	.L7
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	ebx, 1
	lea	rax, -208[rbp]
	mov	rdi, rax
	cmp	ebx, 1
	jne	.L9
	mov	r12d, 0
	mov	eax, r12d
	add	rsp, 192
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
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -1[rbp], al
	jmp	.L13
	mov	rax, QWORD PTR -24[rbp]
	movzx	edx, BYTE PTR -1[rbp]
	mov	BYTE PTR [rax], dl
	add	QWORD PTR -24[rbp], 1
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	jne	.L14
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
	jne	.L17
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L17
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