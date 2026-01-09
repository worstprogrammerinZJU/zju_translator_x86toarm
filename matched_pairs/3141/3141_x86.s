Yang:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	DWORD PTR -36[rbp], edi
	mov	DWORD PTR -40[rbp], esi
	mov	eax, DWORD PTR -36[rbp]
	cdq
	idiv	DWORD PTR -40[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	cdq
	idiv	DWORD PTR -40[rbp]
	mov	DWORD PTR -24[rbp], edx
	cmp	DWORD PTR -36[rbp], 0
	jne	.L2
	mov	eax, 1
	jmp	.L3
	mov	eax, DWORD PTR -24[rbp]
	lea	ebx, 1[rax]
	mov	edx, DWORD PTR -40[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, edx
	mov	edi, eax
	call	Yang
	imul	eax, ebx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -4[rbp], 1
	lea	rdx, -12[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L5
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, edx
	mov	edi, eax
	call	Yang
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1759218605
	shr	rdx, 32
	sar	edx, 12
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	imul	edx, edx, 10000
	sub	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 274877907
	shr	rdx, 32
	sar	edx, 6
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	add	eax, 48
	mov	BYTE PTR -21[rbp], al
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 274877907
	shr	rdx, 32
	sar	edx, 6
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	imul	edx, edx, 1000
	sub	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1374389535
	shr	rdx, 32
	sar	edx, 5
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	add	eax, 48
	mov	BYTE PTR -20[rbp], al
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1374389535
	shr	rdx, 32
	sar	edx, 5
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	imul	edx, edx, 100
	sub	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	add	eax, 48
	mov	BYTE PTR -19[rbp], al
	mov	edx, DWORD PTR -8[rbp]
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
	mov	DWORD PTR -8[rbp], edx
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 48
	mov	BYTE PTR -18[rbp], al
	mov	BYTE PTR -17[rbp], 0
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	lea	rdx, -21[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rdx, -12[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	jne	.L6
	mov	eax, DWORD PTR -12[rbp]
	test	eax, eax
	jne	.L6
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: