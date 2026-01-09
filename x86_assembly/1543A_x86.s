_ZL3INF:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	lea	rax, -60[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
	lea	rax, -72[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -80[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rdx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -80[rbp]
	cmp	rdx, rax
	jl	.L3
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR -80[rbp]
	sub	rax, rdx
	jmp	.L4
	mov	rax, QWORD PTR -80[rbp]
	mov	rdx, QWORD PTR -72[rbp]
	sub	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	mov	rdx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -80[rbp]
	cmp	rdx, rax
	jle	.L5
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rbx, rax
	mov	rax, QWORD PTR -80[rbp]
	cqo
	idiv	QWORD PTR -24[rbp]
	mov	rax, rdx
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	cqo
	idiv	QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, rdx
	mov	QWORD PTR -48[rbp], rax
	lea	rdx, -56[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minIxERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	jmp	.L2
	mov	rdx, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR -72[rbp]
	cmp	rdx, rax
	jle	.L7
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rbx, rax
	mov	rax, QWORD PTR -72[rbp]
	cqo
	idiv	QWORD PTR -24[rbp]
	mov	rax, rdx
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -80[rbp]
	cqo
	idiv	QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, rdx
	mov	QWORD PTR -32[rbp], rax
	lea	rdx, -40[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minIxERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	jmp	.L2
	mov	esi, 0
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	esi, 0
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	esi, 10
	mov	rdi, rax
	mov	eax, DWORD PTR -60[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -60[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L8
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
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
	jge	.L11
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L12
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L15
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L15
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