main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -49152[rsp]
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 880
	lea	rax, -40016[rbp]
	mov	edx, 40000
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	lea	rax, -50016[rbp]
	mov	edx, 10000
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	BYTE PTR -50016[rbp], 1
	mov	BYTE PTR -50015[rbp], 1
	mov	DWORD PTR -4[rbp], 2
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	cdqe
	mov	edx, DWORD PTR -40016[rbp+rax*4]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	DWORD PTR -40016[rbp+rax*4], edx
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -50016[rbp+rax]
	movzx	eax, al
	cmp	eax, 1
	je	.L12
	mov	eax, DWORD PTR -4[rbp]
	add	eax, eax
	mov	DWORD PTR -8[rbp], eax
	jmp	.L5
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	BYTE PTR -50016[rbp+rax], 1
	mov	eax, DWORD PTR -4[rbp]
	add	DWORD PTR -8[rbp], eax
	cmp	DWORD PTR -8[rbp], 9999
	jle	.L6
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -40016[rbp+rax*4]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	DWORD PTR -40016[rbp+rax*4], edx
	jmp	.L4
	nop
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 9999
	jle	.L7
	lea	rax, -50020[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -50024[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	jmp	.L8
	mov	eax, DWORD PTR -50020[rbp]
	test	eax, eax
	jg	.L9
	mov	DWORD PTR -50020[rbp], 1
	mov	eax, DWORD PTR -50024[rbp]
	cdqe
	mov	edx, DWORD PTR -40016[rbp+rax*4]
	mov	eax, DWORD PTR -50020[rbp]
	sub	eax, 1
	cdqe
	mov	ecx, DWORD PTR -40016[rbp+rax*4]
	mov	eax, edx
	sub	eax, ecx
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	lea	rax, -50020[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -50024[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -50020[rbp]
	cmp	eax, -1
	jne	.L10
	mov	eax, DWORD PTR -50024[rbp]
	cmp	eax, -1
	jne	.L10
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