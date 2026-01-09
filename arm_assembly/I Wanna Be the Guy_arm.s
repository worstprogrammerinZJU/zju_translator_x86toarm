main:
	stp	x29, x30, [sp, -480]!
	mov	x29, sp
	add	x0, sp, 464
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 40
	mov	x1, 420
	mov	x2, x1
	mov	w1, 0
	bl	memset
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	str	wzr, [sp, 476]
	b	.L2
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 32]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 40
	mov	w2, 1
	str	w2, [x1, x0]
	ldr	w0, [sp, 476]
	add	w0, w0, 1
	str	w0, [sp, 476]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 476]
	cmp	w1, w0
	blt	.L3
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	str	wzr, [sp, 472]
	b	.L4
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 28]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 40
	mov	w2, 1
	str	w2, [x1, x0]
	ldr	w0, [sp, 472]
	add	w0, w0, 1
	str	w0, [sp, 472]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 472]
	cmp	w1, w0
	blt	.L5
	mov	w0, 1
	str	w0, [sp, 468]
	b	.L6
	ldrsw	x0, [sp, 468]
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w0, [x1, x0]
	cmp	w0, 1
	beq	.L7
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	w0, 0
	b	.L8
	ldr	w0, [sp, 468]
	add	w0, w0, 1
	str	w0, [sp, 468]
	ldr	w0, [sp, 464]
	ldr	w1, [sp, 468]
	cmp	w1, w0
	ble	.L9
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	w0, 0
	ldp	x29, x30, [sp], 480
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L12
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L12
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