min:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cmp	edx, eax
	cmovle	eax, edx
	pop	rbp
	ret
maxNumberOfBalloons:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 40
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 98
	jne	.L5
	add	DWORD PTR -4[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 97
	jne	.L7
	add	DWORD PTR -8[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 108
	jne	.L8
	add	DWORD PTR -12[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 111
	jne	.L9
	add	DWORD PTR -16[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 110
	jne	.L6
	add	DWORD PTR -20[rbp], 1
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L10
	mov	eax, DWORD PTR -12[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -16[rbp], eax
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, edx
	mov	edi, eax
	call	min
	mov	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, edx
	mov	edi, eax
	call	min
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, edx
	mov	edi, eax
	call	min
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	min
	leave
	ret
0:
1:
2:
3:
4: