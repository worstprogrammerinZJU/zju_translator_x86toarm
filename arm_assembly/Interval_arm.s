main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERd
	ldr	d0, [sp, 24]
	fcmpe	d0, #0.0
	bge	.L19
	b	.L2
	ldr	d1, [sp, 24]
	fmov	d0, 2.5e+1
	fcmpe	d1, d0
	bls	.L20
	b	.L2
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	b	.L5
	ldr	d1, [sp, 24]
	fmov	d0, 2.5e+1
	fcmpe	d1, d0
	bgt	.L21
	b	.L6
	ldr	d0, [sp, 24]
	mov	x0, 4632233691727265792
	fmov	d1, x0
	fcmpe	d0, d1
	bls	.L22
	b	.L6
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	b	.L5
	ldr	d0, [sp, 24]
	mov	x0, 4632233691727265792
	fmov	d1, x0
	fcmpe	d0, d1
	bgt	.L23
	b	.L9
	ldr	d0, [sp, 24]
	mov	x0, 211106232532992
	movk	x0, 0x4052, lsl 48
	fmov	d1, x0
	fcmpe	d0, d1
	bls	.L24
	b	.L9
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	b	.L5
	ldr	d0, [sp, 24]
	mov	x0, 211106232532992
	movk	x0, 0x4052, lsl 48
	fmov	d1, x0
	fcmpe	d0, d1
	bgt	.L25
	b	.L12
	ldr	d0, [sp, 24]
	mov	x0, 4636737291354636288
	fmov	d1, x0
	fcmpe	d0, d1
	bls	.L26
	b	.L12
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, :got:_ZSt4cout
	b	.L5
	ldr	d0, [sp, 24]
	fcmpe	d0, #0.0
	bmi	.L27
	b	.L29
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, :got:_ZSt4cout
	b	.L5
	ldr	d0, [sp, 24]
	mov	x0, 4636737291354636288
	fmov	d1, x0
	fcmpe	d0, d1
	bgt	.L28
	b	.L5
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, :got:_ZSt4cout
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L32
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L32
	adrp	x0, _ZStL8__ioinit
	bl	_ZNSt8ios_base4InitC1Ev
	adrp	x0, _ZStL8__ioinit
	bl	__cxa_atexit
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	w1, 65535
	mov	w0, 1
	ldp	x29, x30, [sp], 16
	ret