_Z5setupv:
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	adrp	x0, :got:stdin
	ldr	x0, [x0, #:got_lo12:stdin]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	freopen
	adrp	x0, :got:stdout
	ldr	x0, [x0, #:got_lo12:stdout]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	freopen
	nop
	ldp	x29, x30, [sp], 16
	ret
main:
	stp	x29, x30, [sp, -224]!
	mov	x29, sp
	str	x19, [sp, 16]
	bl	_Z5setupv
	add	x0, sp, 72
	add	x0, sp, 72
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 72
	str	w0, [sp, 208]
	str	wzr, [sp, 220]
	str	wzr, [sp, 216]
	b	.L3
	ldrsw	x1, [sp, 216]
	add	x0, sp, 72
	ldrb	w0, [x0]
	cmp	w0, 60
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L4
	add	x0, sp, 40
	strb	wzr, [sp, 215]
	strb	wzr, [sp, 214]
	ldr	w0, [sp, 216]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 72
	ldrb	w0, [x0]
	cmp	w0, 47
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L5
	mov	w0, 1
	strb	w0, [sp, 214]
	ldrsw	x1, [sp, 216]
	add	x0, sp, 72
	add	x2, sp, 104
	mov	x8, x2
	mov	x2, 4
	add	x1, sp, 104
	add	x0, sp, 40
	add	x0, sp, 104
	b	.L6
	mov	w0, 1
	strb	w0, [sp, 215]
	ldrsw	x1, [sp, 216]
	add	x0, sp, 72
	add	x2, sp, 136
	mov	x8, x2
	mov	x2, 3
	add	x1, sp, 136
	add	x0, sp, 40
	add	x0, sp, 136
	ldrb	w0, [sp, 214]
	cmp	w0, 0
	beq	.L7
	mov	w0, 1
	b	.L8
	mov	w0, 0
	ldr	w1, [sp, 220]
	sub	w0, w1, w0
	str	w0, [sp, 220]
	ldr	w0, [sp, 220]
	lsl	w0, w0, 1
	sxtw	x19, w0
	add	x0, sp, 200
	bl	_ZNSaIcEC1Ev
	add	x1, sp, 200
	add	x0, sp, 168
	mov	x3, x1
	mov	w2, 32
	mov	x1, x19
	add	x0, sp, 168
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	add	x0, sp, 40
	mov	x1, x0
	mov	x0, x2
	mov	w1, 10
	add	x0, sp, 168
	add	x0, sp, 200
	bl	_ZNSaIcED1Ev
	ldrb	w0, [sp, 215]
	cmp	w0, 0
	beq	.L9
	mov	w0, 1
	b	.L10
	mov	w0, 0
	ldr	w1, [sp, 220]
	add	w0, w1, w0
	str	w0, [sp, 220]
	add	x0, sp, 40
	ldr	w0, [sp, 216]
	add	w0, w0, 1
	str	w0, [sp, 216]
	ldr	w0, [sp, 208]
	sub	w0, w0, #2
	ldr	w1, [sp, 216]
	cmp	w1, w0
	blt	.L11
	mov	w19, 0
	add	x0, sp, 72
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 224
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 47]
	str	x3, [sp, 32]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	x2, [sp, 32]
	mov	x1, x0
	mov	x0, x19
	ldrb	w2, [sp, 47]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
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