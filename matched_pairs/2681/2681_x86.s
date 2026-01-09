t:
r:
s:
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
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	mov	edx, 104
	mov	esi, 0
	lea	rax, t[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	edx, 104
	mov	esi, 0
	lea	rax, r[rip]
	mov	rdi, rax
	call	memset@PLT
	lea	rax, s[rip]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	sub	eax, 97
	movsx	rdx, eax
	lea	rcx, 0[0+rdx*4]
	lea	rdx, t[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	lea	ecx, 1[rdx]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, t[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L4
	lea	rax, s[rip]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	sub	eax, 97
	movsx	rdx, eax
	lea	rcx, 0[0+rdx*4]
	lea	rdx, r[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	lea	ecx, 1[rdx]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, r[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L6
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, t[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, r[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jle	.L8
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, t[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, r[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	jmp	.L9
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, r[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, t[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	add	DWORD PTR -12[rbp], eax
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 25
	jle	.L10
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L11
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: