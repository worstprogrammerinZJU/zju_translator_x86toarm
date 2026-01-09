main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 416
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 1
	mov	DWORD PTR -16[rbp], eax
	lea	rdx, -416[rbp]
	mov	eax, 0
	mov	ecx, 50
	mov	rdi, rdx
	rep stosq
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	BYTE PTR -5[rbp], 1
	jmp	.L2
	mov	edx, DWORD PTR -4[rbp]
	movsx	rax, edx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, edx
	sar	esi, 31
	sub	eax, esi
	mov	ecx, eax
	mov	eax, ecx
	sal	eax, 2
	add	eax, ecx
	add	eax, eax
	sub	edx, eax
	mov	DWORD PTR -12[rbp], edx
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -416[rbp+rax*4]
	test	eax, eax
	jle	.L3
	mov	BYTE PTR -5[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -416[rbp+rax*4]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	DWORD PTR -416[rbp+rax*4], edx
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -4[rbp], 0
	jg	.L5
	cmp	BYTE PTR -5[rbp], 0
	je	.L8
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
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
	jne	.L12
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L12
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