	.arch armv8-a
	.file	"3299.c"
	.text
	.global	d
	.bss
	.align	3
	.type	d, %object
	.size	d, 8
d:
	.zero	8
	.global	t
	.align	3
	.type	t, %object
	.size	t, 8
t:
	.zero	8
	.global	h
	.align	3
	.type	h, %object
	.size	h, 8
h:
	.zero	8
	.global	e
	.align	3
	.type	e, %object
	.size	e, 8
e:
	.zero	8
	.text
	.align	2
	.global	Exp
	.type	Exp, %function
Exp:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	d0, [x0]
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	fadd	d0, d0, d1
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	fmul	d0, d0, d1
	str	d0, [sp, 24]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	d1, [x0]
	ldr	d0, [sp, 24]
	fdiv	d0, d1, d0
	str	d0, [sp, 24]
	ldr	d0, [sp, 24]
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	fmul	d0, d0, d1
	str	d0, [sp, 24]
	ldr	d0, [sp, 24]
	bl	exp
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	Exp, .-Exp
	.align	2
	.global	calH
	.type	calH, %function
calH:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	bl	Exp
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmul	d0, d0, d1
	adrp	x0, e
	add	x0, x0, :lo12:e
	str	d0, [x0]
	adrp	x0, e
	add	x0, x0, :lo12:e
	ldr	d1, [x0]
	fmov	d0, 1.0e+1
	fsub	d0, d1, d0
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d0, d0, d1
	str	d0, [sp, 24]
	adrp	x0, t
	add	x0, x0, :lo12:t
	ldr	d1, [x0]
	ldr	d0, [sp, 24]
	fadd	d0, d1, d0
	adrp	x0, h
	add	x0, x0, :lo12:h
	str	d0, [x0]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	calH, .-calH
	.align	2
	.global	calT
	.type	calT, %function
calT:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	bl	Exp
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmul	d0, d0, d1
	adrp	x0, e
	add	x0, x0, :lo12:e
	str	d0, [x0]
	adrp	x0, e
	add	x0, x0, :lo12:e
	ldr	d1, [x0]
	fmov	d0, 1.0e+1
	fsub	d0, d1, d0
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d0, d0, d1
	str	d0, [sp, 24]
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	d1, [x0]
	ldr	d0, [sp, 24]
	fsub	d0, d1, d0
	adrp	x0, t
	add	x0, x0, :lo12:t
	str	d0, [x0]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	calT, .-calT
	.align	2
	.global	calD
	.type	calD, %function
calD:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	d1, [x0]
	adrp	x0, t
	add	x0, x0, :lo12:t
	ldr	d0, [x0]
	fsub	d0, d1, d0
	str	d0, [sp, 24]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	ldr	d0, [sp, 24]
	fdiv	d1, d0, d1
	fmov	d0, 1.0e+1
	fadd	d0, d1, d0
	adrp	x0, e
	add	x0, x0, :lo12:e
	str	d0, [x0]
	adrp	x0, e
	add	x0, x0, :lo12:e
	ldr	d0, [x0]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fdiv	d0, d0, d1
	adrp	x0, e
	add	x0, x0, :lo12:e
	str	d0, [x0]
	adrp	x0, e
	add	x0, x0, :lo12:e
	ldr	d0, [x0]
	bl	log
	str	d0, [sp, 24]
	adrp	x0, .LC1
	ldr	d1, [x0, #:lo12:.LC1]
	ldr	d0, [sp, 24]
	fdiv	d0, d0, d1
	str	d0, [sp, 24]
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	ldr	d0, [sp, 24]
	fsub	d0, d1, d0
	str	d0, [sp, 24]
	ldr	d0, [sp, 24]
	fmov	d1, 1.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 24]
	ldr	d0, [sp, 24]
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	fsub	d0, d0, d1
	adrp	x0, d
	add	x0, x0, :lo12:d
	str	d0, [x0]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	calD, .-calD
	.section	.rodata
	.align	3
.LC5:
	.string	"%lf"
	.align	3
.LC6:
	.string	"%s%lf"
	.align	3
.LC7:
	.string	"T %.1lf D %.1lf H %.1lf\n"
	.align	3
.LC8:
	.string	"%s"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	b	.L7
.L17:
	str	wzr, [sp, 24]
	ldr	w0, [sp, 24]
	str	w0, [sp, 20]
	ldr	w0, [sp, 20]
	str	w0, [sp, 16]
	add	x0, sp, 136
	mov	x1, x0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__isoc99_scanf
	ldrb	w0, [sp, 32]
	cmp	w0, 84
	bne	.L8
	ldr	d0, [sp, 136]
	adrp	x0, t
	add	x0, x0, :lo12:t
	str	d0, [x0]
	mov	w0, 1
	str	w0, [sp, 16]
	b	.L9
.L8:
	ldrb	w0, [sp, 32]
	cmp	w0, 68
	bne	.L10
	ldr	d0, [sp, 136]
	adrp	x0, d
	add	x0, x0, :lo12:d
	str	d0, [x0]
	mov	w0, 1
	str	w0, [sp, 20]
	b	.L9
.L10:
	ldrb	w0, [sp, 32]
	cmp	w0, 72
	bne	.L9
	ldr	d0, [sp, 136]
	adrp	x0, h
	add	x0, x0, :lo12:h
	str	d0, [x0]
	mov	w0, 1
	str	w0, [sp, 24]
.L9:
	add	x1, sp, 136
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__isoc99_scanf
	ldrb	w0, [sp, 32]
	cmp	w0, 84
	bne	.L11
	ldr	d0, [sp, 136]
	adrp	x0, t
	add	x0, x0, :lo12:t
	str	d0, [x0]
	mov	w0, 1
	str	w0, [sp, 16]
	b	.L12
.L11:
	ldrb	w0, [sp, 32]
	cmp	w0, 68
	bne	.L13
	ldr	d0, [sp, 136]
	adrp	x0, d
	add	x0, x0, :lo12:d
	str	d0, [x0]
	mov	w0, 1
	str	w0, [sp, 20]
	b	.L12
.L13:
	ldrb	w0, [sp, 32]
	cmp	w0, 72
	bne	.L12
	ldr	d0, [sp, 136]
	adrp	x0, h
	add	x0, x0, :lo12:h
	str	d0, [x0]
	mov	w0, 1
	str	w0, [sp, 24]
.L12:
	ldr	w0, [sp, 16]
	cmp	w0, 0
	bne	.L14
	bl	calT
	b	.L15
.L14:
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L16
	bl	calD
	b	.L15
.L16:
	bl	calH
.L15:
	adrp	x0, t
	add	x0, x0, :lo12:t
	ldr	d0, [x0]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	d1, [x0]
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	d2, [x0]
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	printf
.L7:
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__isoc99_scanf
	ldrb	w0, [sp, 32]
	cmp	w0, 69
	bne	.L17
	mov	w0, 0
	ldp	x29, x30, [sp], 144
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1546188227
	.word	1081152143
	.align	3
.LC1:
	.word	-996432413
	.word	1085614528
	.align	3
.LC2:
	.word	-687194767
	.word	1075343523
	.align	3
.LC3:
	.word	-274877907
	.word	1071761063
	.align	3
.LC4:
	.word	986163233
	.word	1064172896
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
