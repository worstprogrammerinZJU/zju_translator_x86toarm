	.file	"1835.c"
	.intel_syntax noprefix
	.text
	.globl	Head
	.bss
	.align 4
	.type	Head, @object
	.size	Head, 4
Head:
	.zero	4
	.globl	Nova
	.align 4
	.type	Nova, @object
	.size	Nova, 4
Nova:
	.zero	4
	.globl	x
	.align 4
	.type	x, @object
	.size	x, 4
x:
	.zero	4
	.globl	y
	.align 4
	.type	y, @object
	.size	y, 4
y:
	.zero	4
	.globl	z
	.align 4
	.type	z, @object
	.size	z, 4
z:
	.zero	4
	.globl	Direct
	.data
	.align 32
	.type	Direct, @object
	.size	Direct, 72
Direct:
	.long	1
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	1
	.long	-1
	.long	0
	.long	0
	.long	0
	.long	-1
	.long	0
	.long	0
	.long	0
	.long	-1
	.globl	Left
	.align 32
	.type	Left, @object
	.size	Left, 144
Left:
	.long	-1
	.long	2
	.long	4
	.long	-1
	.long	5
	.long	1
	.long	5
	.long	-1
	.long	0
	.long	2
	.long	-1
	.long	3
	.long	1
	.long	3
	.long	-1
	.long	4
	.long	0
	.long	-1
	.long	-1
	.long	5
	.long	1
	.long	-1
	.long	2
	.long	4
	.long	2
	.long	-1
	.long	3
	.long	5
	.long	-1
	.long	0
	.long	4
	.long	0
	.long	-1
	.long	1
	.long	3
	.long	-1
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%s"
.LC2:
	.string	"forward"
.LC3:
	.string	"back"
.LC4:
	.string	"left"
.LC5:
	.string	"right"
.LC6:
	.string	"up"
.LC7:
	.string	"down"
.LC8:
	.string	"%d %d %d %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 144
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -132[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -120[rbp], 0
	jmp	.L2
.L11:
	mov	DWORD PTR Nova[rip], 0
	mov	DWORD PTR Head[rip], 2
	mov	DWORD PTR x[rip], 0
	mov	DWORD PTR y[rip], 0
	mov	DWORD PTR z[rip], 0
	lea	rax, -128[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -116[rbp], 0
	jmp	.L3
.L10:
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -124[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -112[rbp]
	lea	rdx, .LC2[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L4
	mov	eax, DWORD PTR -124[rbp]
	mov	edi, eax
	call	forward
	jmp	.L5
.L4:
	lea	rax, -112[rbp]
	lea	rdx, .LC3[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L6
	mov	eax, DWORD PTR -124[rbp]
	mov	edi, eax
	call	back
	jmp	.L5
.L6:
	lea	rax, -112[rbp]
	lea	rdx, .LC4[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L7
	mov	eax, DWORD PTR -124[rbp]
	mov	edi, eax
	call	left
	jmp	.L5
.L7:
	lea	rax, -112[rbp]
	lea	rdx, .LC5[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -124[rbp]
	mov	edi, eax
	call	right
	jmp	.L5
.L8:
	lea	rax, -112[rbp]
	lea	rdx, .LC6[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L9
	mov	eax, DWORD PTR -124[rbp]
	mov	edi, eax
	call	up
	jmp	.L5
.L9:
	lea	rax, -112[rbp]
	lea	rdx, .LC7[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L5
	mov	eax, DWORD PTR -124[rbp]
	mov	edi, eax
	call	down
.L5:
	add	DWORD PTR -116[rbp], 1
.L3:
	mov	eax, DWORD PTR -128[rbp]
	cmp	DWORD PTR -116[rbp], eax
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
	add	DWORD PTR -120[rbp], 1
.L2:
	mov	eax, DWORD PTR -132[rbp]
	cmp	DWORD PTR -120[rbp], eax
	jl	.L11
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	leave
	ret
	.size	main, .-main
	.globl	reverse
	.type	reverse, @function
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
	.size	reverse, .-reverse
	.globl	forward
	.type	forward, @function
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
	.size	forward, .-forward
	.globl	back
	.type	back, @function
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
	.size	back, .-back
	.globl	left
	.type	left, @function
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
	.size	left, .-left
	.globl	right
	.type	right, @function
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
	.size	right, .-right
	.globl	up
	.type	up, @function
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
	.size	up, .-up
	.globl	down
	.type	down, @function
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
	.size	down, .-down
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.2) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
