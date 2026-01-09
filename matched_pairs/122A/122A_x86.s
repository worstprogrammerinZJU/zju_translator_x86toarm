_ZL3INF:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 112
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	mov	DWORD PTR -96[rbp], 4
	mov	DWORD PTR -92[rbp], 7
	mov	DWORD PTR -88[rbp], 44
	mov	DWORD PTR -84[rbp], 47
	mov	DWORD PTR -80[rbp], 74
	mov	DWORD PTR -76[rbp], 77
	mov	DWORD PTR -72[rbp], 444
	mov	DWORD PTR -68[rbp], 447
	mov	DWORD PTR -64[rbp], 474
	mov	DWORD PTR -60[rbp], 477
	mov	DWORD PTR -56[rbp], 744
	mov	DWORD PTR -52[rbp], 747
	mov	DWORD PTR -48[rbp], 774
	mov	DWORD PTR -44[rbp], 777
	lea	rax, -100[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	lea	rax, -96[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	add	rax, 56
	mov	QWORD PTR -24[rbp], rax
	jmp	.L2
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -100[rbp]
	cdq
	idiv	DWORD PTR -28[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L3
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	esi, 10
	mov	rdi, rax
	mov	eax, 0
	jmp	.L4
	add	QWORD PTR -8[rbp], 4
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -24[rbp]
	jne	.L5
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	esi, 10
	mov	rdi, rax
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
	jne	.L8
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L8
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