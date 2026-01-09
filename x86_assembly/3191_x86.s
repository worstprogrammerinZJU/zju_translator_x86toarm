i:
str:
mod:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	cmp	DWORD PTR -4[rbp], 0
	jns	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	cmp	eax, -1
	jne	.L2
	mov	eax, DWORD PTR i[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR i[rip], edx
	cdqe
	lea	rdx, str[rip]
	mov	BYTE PTR [rax+rdx], 49
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	neg	eax
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L4
	mov	eax, DWORD PTR i[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR i[rip], edx
	cdqe
	lea	rdx, str[rip]
	mov	BYTE PTR [rax+rdx], 48
	jmp	.L5
	mov	eax, DWORD PTR i[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR i[rip], edx
	cdqe
	lea	rdx, str[rip]
	mov	BYTE PTR [rax+rdx], 49
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	neg	eax
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR i[rip], 0
	lea	rax, -4[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	mod
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	test	eax, eax
	jne	.L7
	jmp	.L8
	mov	eax, DWORD PTR i[rip]
	sub	eax, 1
	mov	DWORD PTR i[rip], eax
	mov	eax, DWORD PTR i[rip]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	mov	eax, DWORD PTR i[rip]
	test	eax, eax
	jns	.L9
	mov	edi, 10
	call	putchar@PLT
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: