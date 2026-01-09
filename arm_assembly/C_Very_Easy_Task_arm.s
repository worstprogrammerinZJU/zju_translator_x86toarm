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
n:
x:
y:
_Z4goodx:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	adrp	x0, y
	add	x1, x0, :lo12:y
	adrp	x0, x
	add	x0, x0, :lo12:x
	bl	_ZSt3minIxERKT_S2_S2_
	ldr	x0, [x0]
	ldr	x1, [sp, 24]
	cmp	x1, x0
	cset	w0, lt
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L3
	mov	w0, 0
	b	.L4
	mov	w0, 1
	str	w0, [sp, 44]
	adrp	x0, y
	add	x1, x0, :lo12:y
	adrp	x0, x
	add	x0, x0, :lo12:x
	bl	_ZSt3minIxERKT_S2_S2_
	ldr	x0, [x0]
	ldr	x1, [sp, 24]
	sub	x0, x1, x0
	str	x0, [sp, 24]
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	x0, [x0]
	ldr	x1, [sp, 24]
	sdiv	x0, x1, x0
	mov	w2, w0
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	x0, [x0]
	ldr	x1, [sp, 24]
	sdiv	x0, x1, x0
	add	w1, w2, w0
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldrsw	x1, [sp, 44]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, ge
	and	w0, w0, 255
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	bge	.L6
	ldr	x0, [sp]
	b	.L7
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	bl	_Z5setupv
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x2, x0
	adrp	x0, x
	add	x1, x0, :lo12:x
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	adrp	x0, y
	add	x1, x0, :lo12:y
	mov	x0, x2
	bl	_ZNSirsERx
	str	xzr, [sp, 40]
	adrp	x0, y
	add	x1, x0, :lo12:y
	adrp	x0, x
	add	x0, x0, :lo12:x
	bl	_ZSt3maxIxERKT_S2_S2_
	ldr	x1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	x0, [x0]
	mul	x0, x1, x0
	str	x0, [sp, 32]
	b	.L9
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	add	x0, x1, x0
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	w0, [sp, 28]
	ldrsw	x0, [sp, 28]
	bl	_Z4goodx
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L10
	ldrsw	x0, [sp, 28]
	str	x0, [sp, 32]
	b	.L9
	ldrsw	x0, [sp, 28]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	ldr	x1, [sp, 32]
	cmp	x1, x0
	bgt	.L11
	ldr	x1, [sp, 32]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x1, x0
	bge	.L14
	ldr	x0, [sp]
	b	.L15
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L18
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L18
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