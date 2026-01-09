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
	mov	QWORD PTR -8[rbp], -1
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -56[rbp]
	imul	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	imul	rax, rdx
	mov	QWORD PTR -112[rbp], rax
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -56[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rdx
	mov	QWORD PTR -104[rbp], rax
	mov	rdx, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -64[rbp]
	imul	rdx, rax
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	QWORD PTR -96[rbp], rax
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -56[rbp]
	imul	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rdx
	mov	QWORD PTR -88[rbp], rax
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -56[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	imul	rax, rdx
	mov	QWORD PTR -80[rbp], rax
	mov	rdx, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -64[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -48[rbp]
	imul	rax, rdx
	mov	QWORD PTR -72[rbp], rax
	lea	rax, -112[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 48
	mov	QWORD PTR -32[rbp], rax
	jmp	.L2
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	cmp	rax, QWORD PTR -8[rbp]
	jle	.L3
	mov	rax, QWORD PTR -40[rbp]
	jmp	.L4
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -8[rbp], rax
	add	QWORD PTR -16[rbp], 8
	mov	rax, QWORD PTR -16[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	jne	.L5
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
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
	jne	.L9
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L9
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