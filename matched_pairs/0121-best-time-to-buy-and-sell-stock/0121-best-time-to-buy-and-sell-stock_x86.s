min:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L2
	mov	eax, DWORD PTR -8[rbp]
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
max:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L5
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L6
	mov	eax, DWORD PTR -8[rbp]
	pop	rbp
	ret
maxProfit:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L8
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	min
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	sub	eax, DWORD PTR -4[rbp]
	mov	edx, DWORD PTR -8[rbp]
	mov	esi, edx
	mov	edi, eax
	call	max
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L9
	mov	eax, DWORD PTR -8[rbp]
	leave
	ret
0:
1:
2:
3:
4: