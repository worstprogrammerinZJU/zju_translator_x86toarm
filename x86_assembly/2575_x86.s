flag:
_Z3fabii:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L2
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, DWORD PTR -8[rbp]
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	jmp	.L5
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, 3000
	mov	esi, 0
	lea	rax, flag[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	BYTE PTR -5[rbp], 1
	mov	DWORD PTR -4[rbp], 1
	jmp	.L6
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3fabii
	mov	DWORD PTR -12[rbp], eax
	cmp	DWORD PTR -12[rbp], 0
	jle	.L7
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jge	.L7
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, flag[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	test	eax, eax
	jne	.L7
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, flag[rip]
	mov	BYTE PTR [rax+rdx], 1
	jmp	.L8
	mov	BYTE PTR -5[rbp], 0
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -20[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L9
	movzx	eax, BYTE PTR -5[rbp]
	cmp	eax, 1
	jne	.L10
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L5
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	setne	al
	test	al, al
	jne	.L11
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: