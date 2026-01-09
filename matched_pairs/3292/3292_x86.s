Hprime:
q:
HSprime:
_Z6hprimev:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -196608[rsp]
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 3424
	lea	rax, -200032[rbp]
	mov	edx, 200016
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -4[rbp], 5
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -200032[rbp+rax]
	movzx	eax, al
	cmp	eax, 1
	je	.L11
	mov	eax, DWORD PTR -4[rbp]
	sal	eax, 2
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	imul	eax, eax
	mov	DWORD PTR -8[rbp], eax
	jmp	.L5
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	BYTE PTR -200032[rbp+rax], 1
	mov	eax, DWORD PTR -12[rbp]
	add	DWORD PTR -8[rbp], eax
	cmp	DWORD PTR -8[rbp], 200015
	jle	.L6
	jmp	.L4
	nop
	add	DWORD PTR -4[rbp], 4
	cmp	DWORD PTR -4[rbp], 449
	jle	.L7
	mov	DWORD PTR -4[rbp], 5
	jmp	.L8
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -200032[rbp+rax]
	movzx	eax, al
	test	eax, eax
	jne	.L9
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR q[rip]
	lea	ecx, 1[rax]
	mov	DWORD PTR q[rip], ecx
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, Hprime[rip]
	mov	DWORD PTR [rcx+rax], edx
	add	DWORD PTR -4[rbp], 4
	cmp	DWORD PTR -4[rbp], 200015
	jle	.L10
	nop
	nop
	leave
	ret
_Z7hsprimev:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -249856[rsp]
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL1
	sub	rsp, 160
	lea	rax, -250016[rbp]
	mov	edx, 250002
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L13
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Hprime[rip]
	mov	esi, DWORD PTR [rdx+rax]
	mov	eax, 1000001
	cdq
	idiv	esi
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L14
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Hprime[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, Hprime[rip]
	mov	eax, DWORD PTR [rcx+rax]
	imul	eax, edx
	sub	eax, 1
	sar	eax, 2
	cdqe
	mov	BYTE PTR -250016[rbp+rax], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Hprime[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -12[rbp], eax
	jge	.L15
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 151
	jle	.L16
	mov	DWORD PTR -4[rbp], 6
	mov	DWORD PTR q[rip], 0
	jmp	.L17
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -250016[rbp+rax]
	movzx	eax, al
	cmp	eax, 1
	jne	.L18
	mov	eax, DWORD PTR -4[rbp]
	sal	eax, 2
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR q[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR q[rip], edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Hprime[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 250001
	jle	.L19
	nop
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	call	_Z6hprimev
	call	_Z7hsprimev
	jmp	.L21
	mov	DWORD PTR -4[rbp], 0
	jmp	.L22
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Hprime[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cmp	edx, eax
	jg	.L28
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR q[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L25
	jmp	.L24
	nop
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -8[rbp]
	test	eax, eax
	setne	al
	test	al, al
	jne	.L26
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: