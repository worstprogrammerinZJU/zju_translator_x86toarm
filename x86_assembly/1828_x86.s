point:
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -16[rbp]
	cmp	edx, eax
	jge	.L2
	mov	eax, 1
	jmp	.L7
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -16[rbp]
	cmp	edx, eax
	jle	.L4
	mov	eax, -1
	jmp	.L7
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cmp	edx, eax
	jge	.L5
	mov	eax, 1
	jmp	.L7
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cmp	edx, eax
	jle	.L6
	mov	eax, -1
	jmp	.L7
	mov	eax, 0
	pop	rbp
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
	jmp	.L9
	mov	DWORD PTR -4[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, point[rip]
	add	rax, rdx
	lea	rdx, 4[rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	lea	rax, point[rip]
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L11
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 8
	mov	rsi, rax
	lea	rax, point[rip]
	mov	rdi, rax
	call	qsort@PLT
	mov	eax, DWORD PTR point[rip+4]
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -4[rbp], 1
	mov	DWORD PTR -12[rbp], 1
	jmp	.L12
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, point[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -8[rbp], eax
	jge	.L13
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, point[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -12[rbp], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L14
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
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
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	jne	.L15
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: