	.file	"3299.c"
	.intel_syntax noprefix
	.text
	.globl	d
	.bss
	.align 8
	.type	d, @object
	.size	d, 8
d:
	.zero	8
	.globl	t
	.align 8
	.type	t, @object
	.size	t, 8
t:
	.zero	8
	.globl	h
	.align 8
	.type	h, @object
	.size	h, 8
h:
	.zero	8
	.globl	e
	.align 8
	.type	e, @object
	.size	e, 8
e:
	.zero	8
	.text
	.globl	Exp
	.type	Exp, @function
Exp:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	movsd	xmm1, QWORD PTR d[rip]
	movsd	xmm0, QWORD PTR .LC0[rip]
	addsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC0[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR d[rip]
	divsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm1, QWORD PTR -8[rbp]
	movsd	xmm0, QWORD PTR .LC1[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	mov	rax, QWORD PTR -8[rbp]
	movq	xmm0, rax
	call	exp@PLT
	movq	rax, xmm0
	movq	xmm0, rax
	leave
	ret
	.size	Exp, .-Exp
	.globl	calH
	.type	calH, @function
calH:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	eax, 0
	call	Exp
	movsd	xmm1, QWORD PTR .LC2[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR e[rip], xmm0
	movsd	xmm0, QWORD PTR e[rip]
	movsd	xmm2, QWORD PTR .LC3[rip]
	movapd	xmm1, xmm0
	subsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR .LC4[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR t[rip]
	addsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR h[rip], xmm0
	nop
	leave
	ret
	.size	calH, .-calH
	.globl	calT
	.type	calT, @function
calT:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	eax, 0
	call	Exp
	movsd	xmm1, QWORD PTR .LC2[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR e[rip], xmm0
	movsd	xmm0, QWORD PTR e[rip]
	movsd	xmm2, QWORD PTR .LC3[rip]
	movapd	xmm1, xmm0
	subsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR .LC4[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR h[rip]
	subsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR t[rip], xmm0
	nop
	leave
	ret
	.size	calT, .-calT
	.globl	calD
	.type	calD, @function
calD:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	movsd	xmm0, QWORD PTR h[rip]
	movsd	xmm1, QWORD PTR t[rip]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	xmm2, QWORD PTR .LC4[rip]
	movapd	xmm1, xmm0
	divsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR .LC3[rip]
	addsd	xmm0, xmm1
	movsd	QWORD PTR e[rip], xmm0
	movsd	xmm0, QWORD PTR e[rip]
	movsd	xmm1, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR e[rip], xmm0
	mov	rax, QWORD PTR e[rip]
	movq	xmm0, rax
	call	log@PLT
	movq	rax, xmm0
	mov	QWORD PTR -8[rbp], rax
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC5[rip]
	subsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC6[rip]
	divsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	xmm1, QWORD PTR .LC0[rip]
	subsd	xmm0, xmm1
	movsd	QWORD PTR d[rip], xmm0
	nop
	leave
	ret
	.size	calD, .-calD
	.section	.rodata
.LC7:
	.string	"%lf"
.LC8:
	.string	"%s%lf"
.LC9:
	.string	"T %.1lf D %.1lf H %.1lf\n"
.LC10:
	.string	"%s"
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
	jmp	.L7
.L17:
	mov	DWORD PTR -116[rbp], 0
	mov	eax, DWORD PTR -116[rbp]
	mov	DWORD PTR -120[rbp], eax
	mov	eax, DWORD PTR -120[rbp]
	mov	DWORD PTR -124[rbp], eax
	lea	rax, -136[rbp]
	mov	rsi, rax
	lea	rax, .LC7[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR -112[rbp]
	cmp	al, 84
	jne	.L8
	movsd	xmm0, QWORD PTR -136[rbp]
	movsd	QWORD PTR t[rip], xmm0
	mov	DWORD PTR -124[rbp], 1
	jmp	.L9
.L8:
	movzx	eax, BYTE PTR -112[rbp]
	cmp	al, 68
	jne	.L10
	movsd	xmm0, QWORD PTR -136[rbp]
	movsd	QWORD PTR d[rip], xmm0
	mov	DWORD PTR -120[rbp], 1
	jmp	.L9
.L10:
	movzx	eax, BYTE PTR -112[rbp]
	cmp	al, 72
	jne	.L9
	movsd	xmm0, QWORD PTR -136[rbp]
	movsd	QWORD PTR h[rip], xmm0
	mov	DWORD PTR -116[rbp], 1
.L9:
	lea	rdx, -136[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, .LC8[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR -112[rbp]
	cmp	al, 84
	jne	.L11
	movsd	xmm0, QWORD PTR -136[rbp]
	movsd	QWORD PTR t[rip], xmm0
	mov	DWORD PTR -124[rbp], 1
	jmp	.L12
.L11:
	movzx	eax, BYTE PTR -112[rbp]
	cmp	al, 68
	jne	.L13
	movsd	xmm0, QWORD PTR -136[rbp]
	movsd	QWORD PTR d[rip], xmm0
	mov	DWORD PTR -120[rbp], 1
	jmp	.L12
.L13:
	movzx	eax, BYTE PTR -112[rbp]
	cmp	al, 72
	jne	.L12
	movsd	xmm0, QWORD PTR -136[rbp]
	movsd	QWORD PTR h[rip], xmm0
	mov	DWORD PTR -116[rbp], 1
.L12:
	mov	eax, DWORD PTR -124[rbp]
	test	eax, eax
	jne	.L14
	mov	eax, 0
	call	calT
	jmp	.L15
.L14:
	mov	eax, DWORD PTR -120[rbp]
	test	eax, eax
	jne	.L16
	mov	eax, 0
	call	calD
	jmp	.L15
.L16:
	mov	eax, 0
	call	calH
.L15:
	movsd	xmm1, QWORD PTR h[rip]
	movsd	xmm0, QWORD PTR d[rip]
	mov	rax, QWORD PTR t[rip]
	movapd	xmm2, xmm1
	movapd	xmm1, xmm0
	movq	xmm0, rax
	lea	rax, .LC9[rip]
	mov	rdi, rax
	mov	eax, 3
	call	printf@PLT
.L7:
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, .LC10[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR -112[rbp]
	cmp	al, 69
	jne	.L17
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	1546188227
	.long	1081152143
	.align 8
.LC1:
	.long	-996432413
	.long	1085614528
	.align 8
.LC2:
	.long	-687194767
	.long	1075343523
	.align 8
.LC3:
	.long	0
	.long	1076101120
	.align 8
.LC4:
	.long	-274877907
	.long	1071761063
	.align 8
.LC5:
	.long	986163233
	.long	1064172896
	.align 8
.LC6:
	.long	0
	.long	1072693248
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
