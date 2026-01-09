_ZL3INF:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	lea	rax, -52[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -72[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rax, QWORD PTR -64[rbp]
	sub	rax, 1
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	and	eax, 1
	test	rax, rax
	jne	.L3
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	imul	rax, rdx
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -8[rbp], rax
	jmp	.L4
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	rcx, rax
	shr	rcx, 63
	add	rax, rcx
	sar	rax
	add	rax, 1
	imul	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rcx, rax
	shr	rcx, 63
	add	rax, rcx
	sar	rax
	add	rax, 1
	imul	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	and	eax, 1
	test	rax, rax
	jne	.L5
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	rdx, rax
	mov	rax, QWORD PTR -72[rbp]
	imul	rax, rdx
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -16[rbp], rax
	jmp	.L6
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rcx, rax
	shr	rcx, 63
	add	rax, rcx
	sar	rax
	add	rax, 1
	imul	rax, rdx
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	rdx, rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rcx, rax
	shr	rcx, 63
	add	rax, rcx
	sar	rax
	add	rax, 1
	imul	rax, rdx
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	sub	rax, QWORD PTR -48[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	eax, DWORD PTR -52[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -52[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L7
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
	jne	.L11
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L11
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