n:
s:
t:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	lea	rax, t[rip]
	mov	rdx, rax
	lea	rax, s[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -64[rbp+rax*4], 0
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 9
	jle	.L4
	mov	DWORD PTR -8[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	sub	eax, 48
	cdqe
	mov	DWORD PTR -64[rbp+rax*4], 1
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 3
	jle	.L6
	mov	DWORD PTR -8[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, t[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	sub	eax, 48
	cdqe
	mov	eax, DWORD PTR -64[rbp+rax*4]
	cmp	eax, 1
	jne	.L8
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, s[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, t[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	jne	.L9
	add	DWORD PTR -12[rbp], 1
	sub	DWORD PTR -16[rbp], 1
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 3
	jle	.L10
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L11
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: