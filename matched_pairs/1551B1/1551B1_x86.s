_ZL3INF:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 224
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	lea	rax, -52[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	lea	rax, -96[rbp]
	mov	rdi, rax
	jmp	.L2
	lea	rax, -96[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	lea	rax, -208[rbp]
	mov	edx, 104
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	lea	rax, -96[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	QWORD PTR -216[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	QWORD PTR -224[rbp], rax
	jmp	.L3
	lea	rax, -216[rbp]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -45[rbp], al
	movsx	eax, BYTE PTR -45[rbp]
	sub	eax, 97
	movsx	rdx, eax
	mov	edx, DWORD PTR -208[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -208[rbp+rax*4], edx
	lea	rax, -216[rbp]
	mov	rdi, rax
	lea	rdx, -224[rbp]
	lea	rax, -216[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	jne	.L4
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	lea	rax, -208[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, 104
	mov	QWORD PTR -40[rbp], rax
	jmp	.L5
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -44[rbp], eax
	cmp	DWORD PTR -44[rbp], 1
	jne	.L6
	add	DWORD PTR -4[rbp], 1
	jmp	.L7
	cmp	DWORD PTR -44[rbp], 1
	jle	.L7
	add	DWORD PTR -8[rbp], 1
	add	QWORD PTR -16[rbp], 4
	mov	rax, QWORD PTR -16[rbp]
	cmp	rax, QWORD PTR -40[rbp]
	jne	.L8
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	esi, 10
	mov	rdi, rax
	mov	eax, DWORD PTR -52[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -52[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L9
	lea	rax, -96[rbp]
	mov	rdi, rax
	mov	eax, 0
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	cmp	rbx, rax
	setne	al
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
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
	mov	QWORD PTR -8[rbp], rdi
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
	jne	.L21
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L21
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