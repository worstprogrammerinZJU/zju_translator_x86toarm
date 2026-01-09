main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 112
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -56[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -64[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -72[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rdx, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -80[rbp]
	imul	rax, rdx
	mov	QWORD PTR -88[rbp], rax
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -80[rbp]
	imul	rdx, rax
	mov	rax, QWORD PTR -88[rbp]
	add	rax, rdx
	mov	QWORD PTR -96[rbp], rax
	mov	rdx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -80[rbp]
	imul	rdx, rax
	mov	rax, QWORD PTR -96[rbp]
	add	rax, rdx
	mov	QWORD PTR -104[rbp], rax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rdx, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -80[rbp]
	imul	rax, rdx
	mov	QWORD PTR -112[rbp], rax
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -80[rbp]
	imul	rax, rdx
	mov	QWORD PTR -16[rbp], rax
	mov	rdx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -80[rbp]
	imul	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	lea	rdx, -112[rbp]
	lea	rax, -88[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxIxERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -88[rbp], rax
	mov	rdx, QWORD PTR -88[rbp]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	mov	QWORD PTR -40[rbp], rax
	lea	rdx, -40[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxIxERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -96[rbp], rax
	mov	rdx, QWORD PTR -96[rbp]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	QWORD PTR -32[rbp], rax
	lea	rdx, -32[rbp]
	lea	rax, -104[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxIxERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -104[rbp], rax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -48[rbp]
	cmp	rdx, rax
	jl	.L3
	mov	rax, QWORD PTR -104[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	eax, 0
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
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L10
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L10
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