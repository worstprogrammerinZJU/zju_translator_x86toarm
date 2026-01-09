n:
k:
digit:
_Z3cali:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 344
	mov	DWORD PTR -452[rbp], edi
	mov	QWORD PTR -48[rbp], 0
	mov	QWORD PTR -40[rbp], 0
	mov	QWORD PTR -32[rbp], 0
	mov	QWORD PTR -24[rbp], 0
	mov	QWORD PTR -16[rbp], 0
	lea	rdx, -448[rbp]
	mov	eax, 0
	mov	ecx, 50
	mov	rdi, rdx
	rep stosq
	mov	DWORD PTR -444[rbp], 1
	mov	DWORD PTR -4[rbp], 1
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	DWORD PTR -452[rbp]
	mov	ecx, eax
	movsx	rax, ecx
	mov	eax, DWORD PTR -48[rbp+rax*4]
	lea	edx, 1[rax]
	movsx	rax, ecx
	mov	DWORD PTR -48[rbp+rax*4], edx
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	DWORD PTR -452[rbp]
	mov	eax, edx
	test	eax, eax
	je	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	DWORD PTR -452[rbp]
	mov	eax, edx
	cdqe
	mov	eax, DWORD PTR -448[rbp+rax*4]
	cmp	eax, 1
	je	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	DWORD PTR -452[rbp]
	mov	eax, edx
	cdqe
	mov	DWORD PTR -448[rbp+rax*4], 1
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	DWORD PTR -452[rbp]
	mov	DWORD PTR -4[rbp], edx
	jmp	.L3
	mov	DWORD PTR -4[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -452[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, digit[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -48[rbp+rax*4]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -452[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, digit[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 9
	jle	.L5
	nop
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], 2
	jmp	.L7
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	_Z3cali
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 100
	jle	.L8
	jmp	.L9
	mov	eax, DWORD PTR n[rip]
	mov	edx, DWORD PTR k[rip]
	movsx	rcx, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, digit[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, k[rip]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	setne	al
	test	al, al
	jne	.L10
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: