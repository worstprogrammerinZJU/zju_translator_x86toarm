	endbr64
	push	rbp
	mov	rbp, rsp
	nop
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 56
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	mov	esi, 0
	lea	rax, _ZSt4cout[rip+8]
	mov	rdi, rax
	mov	DWORD PTR -36[rbp], 0
	lea	rax, -68[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -72[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -76[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	edx, DWORD PTR -68[rbp]
	mov	eax, DWORD PTR -72[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -76[rbp]
	add	eax, edx
	mov	DWORD PTR -64[rbp], eax
	mov	edx, DWORD PTR -72[rbp]
	mov	eax, DWORD PTR -68[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -68[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -72[rbp]
	add	eax, edx
	mov	DWORD PTR -60[rbp], eax
	mov	edx, DWORD PTR -76[rbp]
	mov	eax, DWORD PTR -72[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -72[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -76[rbp]
	add	eax, edx
	mov	DWORD PTR -56[rbp], eax
	mov	eax, DWORD PTR -68[rbp]
	lea	edx, [rax+rax]
	mov	eax, DWORD PTR -76[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -76[rbp]
	add	eax, edx
	mov	DWORD PTR -52[rbp], eax
	lea	rax, -64[rbp]
	mov	r12, rax
	mov	r13d, 4
	mov	rcx, r12
	mov	rbx, r13
	mov	rax, r12
	mov	rdx, r13
	mov	rax, rdx
	mov	rdi, rcx
	mov	rsi, rax
	add	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	eax, 0
	add	rsp, 56
	pop	rbx
	pop	r12
	pop	r13
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	rax, rdi
	mov	rcx, rsi
	mov	rdx, rcx
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	lea	rax, -32[rbp]
	mov	rdi, rax
	mov	rbx, rax
	lea	rax, -32[rbp]
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	sal	rax, 2
	add	rax, rbx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	setl	al
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	jne	.L18
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L19
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L20
	mov	rdx, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR -24[rbp]
	lea	rax, -33[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L20
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	add	QWORD PTR -24[rbp], 4
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	setne	al
	test	al, al
	jne	.L21
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L24
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L24
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