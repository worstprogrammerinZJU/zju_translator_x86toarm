main:
	mov	x12, 20064
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 16384
	add	x0, x0, 3668
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 32
	mov	x1, 20020
	mov	x2, x1
	mov	w1, 0
	bl	memset
	add	x0, sp, 16384
	str	wzr, [x0, 3676]
	b	.L2
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w1, [sp, 28]
	add	x0, sp, 16384
	ldr	w0, [x0, 3668]
	cmp	w1, w0
	bgt	.L3
	ldr	w0, [sp, 28]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	mov	w2, 1
	str	w2, [x1, x0]
	add	x0, sp, 16384
	ldr	w0, [x0, 3676]
	add	w0, w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 3676]
	add	x0, sp, 16384
	ldr	w0, [x0, 3668]
	add	x1, sp, 16384
	ldr	w1, [x1, 3676]
	cmp	w1, w0
	blt	.L4
	add	x0, sp, 32
	add	x0, x0, 4
	add	x1, sp, 16384
	ldr	w1, [x1, 3668]
	sxtw	x1, w1
	add	x1, x1, 1
	lsl	x1, x1, 2
	add	x2, sp, 32
	add	x1, x2, x1
	add	x2, sp, 16384
	str	wzr, [x2, 3672]
	add	x2, sp, 16384
	add	x2, x2, 3672
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEl
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 20064
	add	sp, sp, x12
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 40
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	xzr, [sp, 56]
	b	.L11
	add	x0, sp, 24
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L12
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
	ldr	x0, [sp, 40]
	add	x0, x0, 4
	str	x0, [sp, 40]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bne	.L13
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	ldr	w0, [x0]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L20
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L20
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