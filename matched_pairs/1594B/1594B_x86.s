MOD:
_ZL3INF:
_Z5mypowyy:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -8[rbp], 1
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L2
	mov	rax, QWORD PTR MOD[rip]
	mov	rcx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, 0
	div	rcx
	mov	rax, rdx
	imul	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR MOD[rip]
	mov	rcx, rdx
	mov	edx, 0
	div	rcx
	mov	QWORD PTR -8[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	lea	rdx, -1[rax]
	mov	QWORD PTR -32[rbp], rdx
	test	rax, rax
	setne	al
	test	al, al
	jne	.L3
	mov	rax, QWORD PTR MOD[rip]
	mov	rcx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, 0
	div	rcx
	mov	rax, rdx
	pop	rbp
	ret
_Z6binaryPyy:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -8[rbp], 0
	jmp	.L6
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR -32[rbp]
	and	edx, 1
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	shr	rax
	mov	QWORD PTR -32[rbp], rax
	add	QWORD PTR -8[rbp], 1
	cmp	QWORD PTR -32[rbp], 0
	jne	.L7
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 304
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L10
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERy@PLT
	mov	rdx, rax
	lea	rax, -48[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERy@PLT
	mov	QWORD PTR -8[rbp], 0
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -304[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_Z6binaryPyy
	mov	QWORD PTR -24[rbp], rax
	mov	QWORD PTR -16[rbp], 0
	jmp	.L11
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -304[rbp+rax*8]
	cmp	rax, 1
	jne	.L12
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_Z5mypowyy
	mov	rdx, QWORD PTR MOD[rip]
	mov	rcx, rdx
	mov	edx, 0
	div	rcx
	mov	rax, rdx
	add	QWORD PTR -8[rbp], rax
	add	QWORD PTR -16[rbp], 1
	mov	rax, QWORD PTR -16[rbp]
	cmp	rax, QWORD PTR -24[rbp]
	jb	.L13
	mov	rax, QWORD PTR MOD[rip]
	mov	rcx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, 0
	div	rcx
	mov	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEy@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	eax, DWORD PTR -28[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -28[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L14
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