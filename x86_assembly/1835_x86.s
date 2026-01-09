Head:
Nova:
x:
y:
z:
Direct:
Left:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	add	rsp, -128
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	DWORD PTR Nova[rip], 0
	mov	DWORD PTR Head[rip], 2
	mov	DWORD PTR x[rip], 0
	mov	DWORD PTR y[rip], 0
	mov	DWORD PTR z[rip], 0
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	lea	rax, -128[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -128[rbp]
	lea	rdx, .LC2[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L4
	mov	eax, DWORD PTR -20[rbp]
	mov	edi, eax
	call	forward
	jmp	.L5
	lea	rax, -128[rbp]
	lea	rdx, .LC3[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L6
	mov	eax, DWORD PTR -20[rbp]
	mov	edi, eax
	call	back
	jmp	.L5
	lea	rax, -128[rbp]
	lea	rdx, .LC4[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L7
	mov	eax, DWORD PTR -20[rbp]
	mov	edi, eax
	call	left
	jmp	.L5
	lea	rax, -128[rbp]
	lea	rdx, .LC5[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -20[rbp]
	mov	edi, eax
	call	right
	jmp	.L5
	lea	rax, -128[rbp]
	lea	rdx, .LC6[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L9
	mov	eax, DWORD PTR -20[rbp]
	mov	edi, eax
	call	up
	jmp	.L5
	lea	rax, -128[rbp]
	lea	rdx, .LC7[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L5
	mov	eax, DWORD PTR -20[rbp]
	mov	edi, eax
	call	down
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L10
	mov	esi, DWORD PTR Nova[rip]
	mov	ecx, DWORD PTR z[rip]
	mov	edx, DWORD PTR y[rip]
	mov	eax, DWORD PTR x[rip]
	mov	r8d, esi
	mov	esi, eax
	lea	rax, .LC8[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L11
	mov	eax, 0
	leave
	ret
reverse:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	eax, DWORD PTR -4[rbp]
	lea	ecx, 3[rax]
	movsx	rax, ecx
	imul	rax, rax, 715827883
	shr	rax, 32
	mov	esi, ecx
	sar	esi, 31
	mov	edx, eax
	sub	edx, esi
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	mov	eax, edx
	pop	rbp
	ret
forward:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	eax, DWORD PTR Nova[rip]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Direct[rip]
	mov	eax, DWORD PTR [rdx+rax]
	imul	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR x[rip]
	add	eax, edx
	mov	DWORD PTR x[rip], eax
	mov	eax, DWORD PTR Nova[rip]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Direct[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	imul	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR y[rip]
	add	eax, edx
	mov	DWORD PTR y[rip], eax
	mov	eax, DWORD PTR Nova[rip]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Direct[rip+8]
	mov	eax, DWORD PTR [rdx+rax]
	imul	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR z[rip]
	add	eax, edx
	mov	DWORD PTR z[rip], eax
	nop
	pop	rbp
	ret
back:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 8
	mov	DWORD PTR -4[rbp], edi
	mov	eax, DWORD PTR Nova[rip]
	mov	edi, eax
	call	reverse
	mov	DWORD PTR Nova[rip], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	forward
	nop
	leave
	ret
left:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 8
	mov	DWORD PTR -4[rbp], edi
	mov	eax, DWORD PTR Nova[rip]
	mov	edx, DWORD PTR Head[rip]
	movsx	rcx, edx
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, Left[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR Nova[rip], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	forward
	nop
	leave
	ret
right:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 8
	mov	DWORD PTR -4[rbp], edi
	mov	eax, DWORD PTR Nova[rip]
	mov	edx, DWORD PTR Head[rip]
	movsx	rcx, edx
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, Left[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edi, eax
	call	reverse
	mov	DWORD PTR Nova[rip], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	forward
	nop
	leave
	ret
up:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 24
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR Head[rip]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR Nova[rip]
	mov	edi, eax
	call	reverse
	mov	DWORD PTR Head[rip], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR Nova[rip], eax
	mov	eax, DWORD PTR -20[rbp]
	mov	edi, eax
	call	forward
	nop
	leave
	ret
down:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 24
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR Nova[rip]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR Head[rip]
	mov	edi, eax
	call	reverse
	mov	DWORD PTR Nova[rip], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR Head[rip], eax
	mov	eax, DWORD PTR -20[rbp]
	mov	edi, eax
	call	forward
	nop
	leave
	ret
0:
1:
2:
3:
4: