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
n:
x:
y:
_Z4goodx:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	lea	rax, y[rip]
	mov	rsi, rax
	lea	rax, x[rip]
	mov	rdi, rax
	call	_ZSt3minIxERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	cmp	QWORD PTR -24[rbp], rax
	setl	al
	test	al, al
	je	.L3
	mov	eax, 0
	jmp	.L4
	mov	DWORD PTR -4[rbp], 1
	lea	rax, y[rip]
	mov	rsi, rax
	lea	rax, x[rip]
	mov	rdi, rax
	call	_ZSt3minIxERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	sub	QWORD PTR -24[rbp], rax
	mov	rcx, QWORD PTR x[rip]
	mov	rax, QWORD PTR -24[rbp]
	cqo
	idiv	rcx
	mov	esi, eax
	mov	rcx, QWORD PTR y[rip]
	mov	rax, QWORD PTR -24[rbp]
	cqo
	idiv	rcx
	lea	edx, [rsi+rax]
	mov	eax, DWORD PTR -4[rbp]
	add	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR n[rip]
	cmp	rdx, rax
	setge	al
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
	jge	.L6
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L7
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	call	_Z5setupv
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, x[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, y[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	QWORD PTR -8[rbp], 0
	lea	rax, y[rip]
	mov	rsi, rax
	lea	rax, x[rip]
	mov	rdi, rax
	call	_ZSt3maxIxERKT_S2_S2_
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR n[rip]
	imul	rax, rdx
	mov	QWORD PTR -16[rbp], rax
	jmp	.L9
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	rdi, rax
	call	_Z4goodx
	test	al, al
	je	.L10
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	QWORD PTR -16[rbp], rax
	jmp	.L9
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 1
	cmp	QWORD PTR -16[rbp], rax
	jg	.L11
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	eax, 0
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
	jge	.L14
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L15
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
	jne	.L18
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L18
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