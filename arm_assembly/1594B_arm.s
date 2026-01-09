MOD:
_ZL3INF:
_Z5mypowyy:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	mov	x0, 1
	str	x0, [sp, 24]
	ldr	x0, [sp, 8]
	str	x0, [sp, 16]
	b	.L2
	adrp	x0, MOD
	add	x0, x0, :lo12:MOD
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 24]
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x1, x0, x1
	ldr	x0, [sp, 16]
	mul	x0, x1, x0
	adrp	x1, MOD
	add	x1, x1, :lo12:MOD
	ldr	x1, [x1]
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 24]
	ldr	x0, [sp]
	sub	x1, x0, #1
	str	x1, [sp]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L3
	adrp	x0, MOD
	add	x0, x0, :lo12:MOD
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 24]
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	add	sp, sp, 32
	ret
_Z6binaryPyy:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	str	xzr, [sp, 24]
	b	.L6
	ldr	x0, [sp, 24]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	x1, [sp]
	and	x1, x1, 1
	str	x1, [x0]
	ldr	x0, [sp]
	lsr	x0, x0, 1
	str	x0, [sp]
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	ldr	x0, [sp]
	cmp	x0, 0
	bne	.L7
	ldr	x0, [sp, 24]
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -320]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 292
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L10
	add	x0, sp, 280
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERy
	mov	x2, x0
	add	x0, sp, 272
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERy
	str	xzr, [sp, 312]
	ldr	x1, [sp, 272]
	add	x0, sp, 16
	bl	_Z6binaryPyy
	str	x0, [sp, 296]
	str	xzr, [sp, 304]
	b	.L11
	ldr	x0, [sp, 304]
	lsl	x0, x0, 3
	add	x1, sp, 16
	ldr	x0, [x1, x0]
	cmp	x0, 1
	bne	.L12
	ldr	x0, [sp, 280]
	ldr	x1, [sp, 304]
	bl	_Z5mypowyy
	adrp	x1, MOD
	add	x1, x1, :lo12:MOD
	ldr	x1, [x1]
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	ldr	x1, [sp, 312]
	add	x0, x1, x0
	str	x0, [sp, 312]
	ldr	x0, [sp, 304]
	add	x0, x0, 1
	str	x0, [sp, 304]
	ldr	x1, [sp, 304]
	ldr	x0, [sp, 296]
	cmp	x1, x0
	bcc	.L13
	adrp	x0, MOD
	add	x0, x0, :lo12:MOD
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 312]
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEy
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 292]
	sub	w1, w0, #1
	str	w1, [sp, 292]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L14
	mov	w0, 0
	ldp	x29, x30, [sp], 320
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