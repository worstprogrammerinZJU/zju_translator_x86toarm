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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	bl	_Z5setupv
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L3
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 16]
	mov	w1, 34953
	movk	w1, 0x8888, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	add	w1, w0, w1
	asr	w1, w1, 3
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x0, w0
	str	x0, [sp, 40]
	ldr	w0, [sp, 16]
	mov	w1, 34953
	movk	w1, 0x8888, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	add	w1, w0, w1
	asr	w2, w1, 3
	asr	w1, w0, 31
	sub	w2, w2, w1
	mov	w1, w2
	lsl	w1, w1, 4
	sub	w1, w1, w2
	sub	w2, w0, w1
	sxtw	x0, w2
	str	x0, [sp, 24]
	str	xzr, [sp, 32]
	b	.L4
	ldr	x1, [sp, 32]
	mov	x0, 6148914691236517205
	movk	x0, 0x5556, lsl 0
	smulh	x2, x1, x0
	asr	x0, x1, 63
	sub	x2, x2, x0
	mov	x0, x2
	lsl	x0, x0, 1
	add	x0, x0, x2
	sub	x2, x1, x0
	ldr	x3, [sp, 32]
	mov	x0, 7378697629483820646
	movk	x0, 0x6667, lsl 0
	smulh	x0, x3, x0
	asr	x1, x0, 1
	asr	x0, x3, 63
	sub	x1, x1, x0
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	sub	x1, x3, x0
	cmp	x2, x1
	bne	.L5
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	ble	.L6
	ldr	x1, [sp, 40]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w1, 10
	ldr	w0, [sp, 20]
	sub	w1, w0, #1
	str	w1, [sp, 20]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L7
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L11
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L11
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