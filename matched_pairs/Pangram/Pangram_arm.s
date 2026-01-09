main:
	stp	x29, x30, [sp, -288]!
	mov	x29, sp
	add	x0, sp, 268
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 232
	add	x0, sp, 232
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 128
	movi	v0.4s, 0
	stp	q0, q0, [x0]
	stp	q0, q0, [x0, 32]
	stp	q0, q0, [x0, 64]
	fmov	x1, d0
	str	x1, [x0, 96]
	ldr	w0, [sp, 268]
	cmp	w0, 25
	bgt	.L2
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	b	.L3
	add	x0, sp, 24
	movi	v0.4s, 0
	stp	q0, q0, [x0]
	stp	q0, q0, [x0, 32]
	stp	q0, q0, [x0, 64]
	fmov	x1, d0
	str	x1, [x0, 96]
	str	wzr, [sp, 284]
	b	.L4
	ldrsw	x1, [sp, 284]
	add	x0, sp, 232
	ldrb	w0, [x0]
	strb	w0, [sp, 275]
	ldrb	w0, [sp, 275]
	bl	isalpha
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L5
	ldrb	w0, [sp, 275]
	bl	tolower
	sub	w0, w0, #97
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	mov	w2, 1
	str	w2, [x1, x0]
	ldr	w0, [sp, 284]
	add	w0, w0, 1
	str	w0, [sp, 284]
	ldr	w0, [sp, 268]
	ldr	w1, [sp, 284]
	cmp	w1, w0
	blt	.L6
	mov	w0, 1
	strb	w0, [sp, 283]
	str	wzr, [sp, 276]
	b	.L7
	ldrsw	x0, [sp, 276]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L8
	strb	wzr, [sp, 283]
	b	.L9
	ldr	w0, [sp, 276]
	add	w0, w0, 1
	str	w0, [sp, 276]
	ldr	w0, [sp, 276]
	cmp	w0, 25
	ble	.L10
	ldrb	w0, [sp, 283]
	cmp	w0, 0
	beq	.L11
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	b	.L3
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	add	x0, sp, 232
	mov	w0, 0
	ldp	x29, x30, [sp], 288
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L16
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L16
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