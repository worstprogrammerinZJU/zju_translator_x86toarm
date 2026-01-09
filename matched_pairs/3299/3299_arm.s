d:
t:
h:
e:
Exp:
	stp	x29, x30, [sp, -32]!
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
	ret
calH:
	stp	x29, x30, [sp, -32]!
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
	ret
calT:
	stp	x29, x30, [sp, -32]!
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
	ret
calD:
	stp	x29, x30, [sp, -32]!
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
	ret
main:
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	b	.L7
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
	ldrb	w0, [sp, 32]
	cmp	w0, 72
	bne	.L9
	ldr	d0, [sp, 136]
	adrp	x0, h
	add	x0, x0, :lo12:h
	str	d0, [x0]
	mov	w0, 1
	str	w0, [sp, 24]
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
	ldrb	w0, [sp, 32]
	cmp	w0, 72
	bne	.L12
	ldr	d0, [sp, 136]
	adrp	x0, h
	add	x0, x0, :lo12:h
	str	d0, [x0]
	mov	w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 16]
	cmp	w0, 0
	bne	.L14
	bl	calT
	b	.L15
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L16
	bl	calD
	b	.L15
	bl	calH
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
	ret