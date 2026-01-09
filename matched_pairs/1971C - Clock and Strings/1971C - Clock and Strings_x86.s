_Z11doIntersectiiii:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	DWORD PTR -12[rbp], edx
	mov	DWORD PTR -16[rbp], ecx
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cmp	edx, eax
	jle	.L2
	lea	rdx, -8[rbp]
	lea	rax, -4[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -16[rbp]
	cmp	edx, eax
	jle	.L3
	lea	rdx, -16[rbp]
	lea	rax, -12[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cmp	edx, eax
	jge	.L4
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cmp	edx, eax
	jge	.L4
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -16[rbp]
	cmp	edx, eax
	jl	.L5
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cmp	edx, eax
	jge	.L6
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -16[rbp]
	cmp	edx, eax
	jge	.L6
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cmp	edx, eax
	jge	.L6
	mov	eax, 1
	jmp	.L7
	mov	eax, 0
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -4[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L10
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -12[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -16[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -20[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	ecx, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -16[rbp]
	mov	esi, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	edi, eax
	call	_Z11doIntersectiiii
	test	al, al
	je	.L11
	lea	rax, .LC0[rip]
	jmp	.L12
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -4[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L13
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
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR [rax], edx
	lea	rax, -4[rbp]
	mov	rdi, rax
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR [rax], edx
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
	jne	.L20
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L20
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