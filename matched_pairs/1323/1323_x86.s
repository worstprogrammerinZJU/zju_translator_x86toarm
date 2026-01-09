card:
n:
m:
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jge	.L2
	mov	eax, 1
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L4
	mov	eax, -1
	jmp	.L3
	mov	eax, 0
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4032
	mov	DWORD PTR -8[rbp], 1
	jmp	.L6
	mov	DWORD PTR -4[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, card[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L8
	mov	DWORD PTR -4[rbp], 1
	jmp	.L9
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	DWORD PTR -4032[rbp+rax*4], 0
	add	DWORD PTR -4[rbp], 1
	mov	edx, DWORD PTR n[rip]
	mov	eax, DWORD PTR m[rip]
	imul	eax, edx
	cmp	DWORD PTR -4[rbp], eax
	jle	.L10
	mov	eax, DWORD PTR n[rip]
	cdqe
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 4
	mov	rsi, rax
	lea	rax, card[rip]
	mov	rdi, rax
	call	qsort@PLT
	mov	edx, DWORD PTR n[rip]
	mov	eax, DWORD PTR m[rip]
	imul	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L11
	sub	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -4032[rbp+rax*4]
	cmp	eax, 1
	je	.L13
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, card[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -12[rbp], eax
	jne	.L14
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	DWORD PTR -4032[rbp+rax*4], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, card[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	mov	DWORD PTR -4032[rbp+rax*4], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L12
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	mov	edx, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, n[rip]
	mov	rdx, rax
	lea	rax, m[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR m[rip]
	test	eax, eax
	jne	.L16
	mov	eax, DWORD PTR n[rip]
	test	eax, eax
	je	.L17
	mov	eax, 1
	jmp	.L18
	mov	eax, 0
	test	eax, eax
	jne	.L19
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: