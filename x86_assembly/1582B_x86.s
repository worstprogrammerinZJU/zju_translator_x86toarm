_ZL3INF:
_Z4powdxx:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	cmp	QWORD PTR -32[rbp], 0
	jne	.L2
	mov	eax, 1
	jmp	.L3
	mov	QWORD PTR -8[rbp], 1
	jmp	.L4
	sal	QWORD PTR -24[rbp]
	add	QWORD PTR -8[rbp], 1
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	jl	.L5
	mov	rax, QWORD PTR -24[rbp]
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L7
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	QWORD PTR -8[rbp], 0
	mov	QWORD PTR -16[rbp], 0
	mov	QWORD PTR -24[rbp], 0
	jmp	.L8
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rax, QWORD PTR -48[rbp]
	cmp	rax, 1
	jne	.L9
	add	QWORD PTR -8[rbp], 1
	jmp	.L10
	mov	rax, QWORD PTR -48[rbp]
	test	rax, rax
	jne	.L10
	add	QWORD PTR -16[rbp], 1
	nop
	add	QWORD PTR -24[rbp], 1
	mov	rax, QWORD PTR -40[rbp]
	cmp	QWORD PTR -24[rbp], rax
	jl	.L11
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rax
	mov	edi, 2
	call	_Z4powdxx
	imul	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	mov	eax, DWORD PTR -28[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -28[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L12
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
	jne	.L16
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L16
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