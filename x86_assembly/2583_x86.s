main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	jmp	.L2
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	edx, DWORD PTR -16[rbp]
	sub	eax, edx
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -24[rbp]
	sub	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	ecx, eax
	mov	eax, DWORD PTR -16[rbp]
	lea	edx, [rax+rax]
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR -20[rbp], eax
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, edx
	sal	eax, 3
	lea	ecx, [rax+rdx]
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	lea	edx, [rcx+rax]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, edx
	sal	eax, 3
	sub	eax, edx
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, [rcx+rax]
	mov	eax, DWORD PTR -20[rbp]
	add	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, edx
	sal	eax, 3
	add	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	ecx, DWORD PTR -12[rbp]
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rcx, -20[rbp]
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L3
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: