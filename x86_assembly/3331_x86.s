muil:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 832
	mov	DWORD PTR -820[rbp], edi
	mov	DWORD PTR -824[rbp], esi
	mov	QWORD PTR -816[rbp], 49
	mov	QWORD PTR -808[rbp], 0
	lea	rdx, -800[rbp]
	mov	eax, 0
	mov	ecx, 98
	mov	rdi, rdx
	rep stosq
	mov	DWORD PTR -4[rbp], 2
	jmp	.L2
	lea	rax, -816[rbp]
	mov	rdi, rax
	call	strlen@PLT
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -816[rbp+rax]
	movsx	eax, al
	lea	edx, -48[rax]
	mov	eax, DWORD PTR -4[rbp]
	imul	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -16[rbp], eax
	mov	edx, DWORD PTR -12[rbp]
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
	mov	ecx, edx
	sub	ecx, eax
	mov	eax, ecx
	lea	ecx, 48[rax]
	mov	eax, DWORD PTR -16[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -16[rbp], edx
	mov	edx, ecx
	cdqe
	mov	BYTE PTR -816[rbp+rax], dl
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -12[rbp], eax
	jmp	.L4
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	movzx	eax, BYTE PTR -816[rbp+rax]
	test	al, al
	jne	.L5
	mov	edx, DWORD PTR -12[rbp]
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
	mov	ecx, edx
	sub	ecx, eax
	mov	eax, ecx
	add	eax, 48
	mov	edx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	BYTE PTR -816[rbp+rax], dl
	jmp	.L6
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	movzx	eax, BYTE PTR -816[rbp+rax]
	mov	edi, eax
	mov	edx, DWORD PTR -12[rbp]
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
	mov	ecx, edx
	sub	ecx, eax
	mov	eax, ecx
	add	eax, edi
	mov	edx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	BYTE PTR -816[rbp+rax], dl
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	movzx	eax, BYTE PTR -816[rbp+rax]
	cmp	al, 57
	jle	.L7
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	movzx	eax, BYTE PTR -816[rbp+rax]
	sub	eax, 10
	mov	edx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	BYTE PTR -816[rbp+rax], dl
	add	DWORD PTR -12[rbp], 1
	add	DWORD PTR -16[rbp], 1
	cmp	DWORD PTR -12[rbp], 0
	jne	.L8
	sub	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 0
	jns	.L9
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -820[rbp]
	jle	.L10
	lea	rax, -816[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -820[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L11
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -816[rbp+rax]
	movsx	eax, al
	sub	eax, 48
	cmp	DWORD PTR -824[rbp], eax
	jne	.L12
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -820[rbp]
	jl	.L13
	mov	eax, DWORD PTR -8[rbp]
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L16
	lea	rdx, -12[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, edx
	mov	edi, eax
	call	muil
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L17
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: