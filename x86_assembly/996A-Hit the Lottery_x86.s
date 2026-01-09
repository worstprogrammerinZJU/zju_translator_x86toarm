main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1374389535
	shr	rdx, 32
	sar	edx, 5
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR -24[rbp]
	movsx	rax, edx
	imul	rax, rax, 1374389535
	shr	rax, 32
	sar	eax, 5
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 100
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 3
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -8[rbp], eax
	mov	ecx, DWORD PTR -24[rbp]
	movsx	rax, ecx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 3
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	sal	eax, 2
	sub	ecx, eax
	mov	edx, ecx
	mov	DWORD PTR -24[rbp], edx
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -12[rbp], eax
	mov	ecx, DWORD PTR -24[rbp]
	movsx	rax, ecx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	mov	DWORD PTR -24[rbp], edx
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -16[rbp], eax
	mov	edx, DWORD PTR -24[rbp]
	movsx	rax, edx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	mov	ecx, eax
	sal	ecx, 2
	add	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -16[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, edx
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
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
	jne	.L5
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L5
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