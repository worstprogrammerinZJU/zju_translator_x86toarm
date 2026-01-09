main:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	add	x0, sp, 60
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 24
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x2, sp, 24
	add	x0, sp, 64
	mov	x8, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	add	x1, sp, 64
	add	x0, sp, 24
	add	x0, sp, 64
	str	wzr, [sp, 108]
	str	wzr, [sp, 104]
	str	wzr, [sp, 100]
	b	.L2
	ldrsw	x1, [sp, 100]
	add	x0, sp, 24
	ldrb	w0, [x0]
	cmp	w0, 120
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L3
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	b	.L4
	ldr	w0, [sp, 108]
	cmp	w0, 2
	ble	.L5
	ldr	w1, [sp, 104]
	ldr	w0, [sp, 108]
	add	w0, w1, w0
	sub	w0, w0, #2
	str	w0, [sp, 104]
	str	wzr, [sp, 108]
	b	.L4
	str	wzr, [sp, 108]
	ldr	w0, [sp, 100]
	add	w0, w0, 1
	str	w0, [sp, 100]
	ldr	w0, [sp, 60]
	ldr	w1, [sp, 100]
	cmp	w1, w0
	ble	.L6
	ldr	w1, [sp, 104]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 24
	mov	w0, 0
	ldp	x29, x30, [sp], 112
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x1, [sp, 40]
	mov	x0, x19
	ldr	x1, [sp, 32]
	mov	x0, x19
	nop
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
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