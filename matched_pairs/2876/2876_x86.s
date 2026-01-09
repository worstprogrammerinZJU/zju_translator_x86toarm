base:
print:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	cmp	DWORD PTR -20[rbp], 0
	jne	.L2
	mov	edi, 45
	call	putchar@PLT
	jmp	.L6
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	mov	edi, eax
	call	print
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, base[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L4
	mov	edi, 32
	call	putchar@PLT
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jg	.L5
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	mov	edi, eax
	call	print
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	jmp	.L8
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	print
	mov	edi, 10
	call	putchar@PLT
	lea	rax, -4[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L9
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: