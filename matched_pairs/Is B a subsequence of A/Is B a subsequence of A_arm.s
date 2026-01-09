main:
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	mov	x12, 14560
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 77824
	add	x0, x0, 2252
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 77824
	add	x0, x0, 2248
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	add	x0, sp, 65536
	str	wzr, [x0, 14556]
	b	.L2
	add	x1, sp, 36864
	add	x1, x1, 3184
	add	x0, sp, 65536
	ldrsw	x0, [x0, 14556]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 65536
	ldr	w0, [x0, 14556]
	add	w0, w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 14556]
	add	x0, sp, 65536
	ldr	w0, [x0, 14540]
	add	x1, sp, 65536
	ldr	w1, [x1, 14556]
	cmp	w1, w0
	blt	.L3
	add	x0, sp, 65536
	str	wzr, [x0, 14552]
	b	.L4
	add	x1, sp, 24
	add	x0, sp, 65536
	ldrsw	x0, [x0, 14552]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 65536
	ldr	w0, [x0, 14552]
	add	w0, w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 14552]
	add	x0, sp, 65536
	ldr	w0, [x0, 14536]
	add	x1, sp, 65536
	ldr	w1, [x1, 14552]
	cmp	w1, w0
	blt	.L5
	add	x0, sp, 65536
	str	wzr, [x0, 14548]
	add	x0, sp, 65536
	str	wzr, [x0, 14544]
	b	.L6
	add	x0, sp, 65536
	ldrsw	x0, [x0, 14548]
	lsl	x0, x0, 2
	add	x1, sp, 36864
	add	x1, x1, 3184
	ldr	w1, [x1, x0]
	add	x0, sp, 65536
	ldrsw	x0, [x0, 14544]
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	cmp	w1, w0
	bne	.L7
	add	x0, sp, 65536
	ldr	w0, [x0, 14544]
	add	w0, w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 14544]
	add	x0, sp, 65536
	ldr	w0, [x0, 14548]
	add	w0, w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 14548]
	add	x0, sp, 65536
	ldr	w0, [x0, 14540]
	add	x1, sp, 65536
	ldr	w1, [x1, 14548]
	cmp	w1, w0
	bge	.L8
	add	x0, sp, 65536
	ldr	w0, [x0, 14536]
	add	x1, sp, 65536
	ldr	w1, [x1, 14544]
	cmp	w1, w0
	blt	.L9
	add	x0, sp, 65536
	ldr	w0, [x0, 14536]
	add	x1, sp, 65536
	ldr	w1, [x1, 14544]
	cmp	w1, w0
	bne	.L10
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	b	.L11
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 2272
	add	sp, sp, 77824
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L15
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L15
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