	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	wzr, [sp, 60]
	str	wzr, [sp, 56]
	ldr	w0, [sp, 20]
	cmp	w0, 1
	bne	.L2
	mov	w1, -1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	w1, -1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 0
	b	.L3
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 52]
	b	.L4
	str	wzr, [sp, 48]
	b	.L5
	ldr	w0, [sp, 48]
	str	w0, [sp, 44]
	b	.L6
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 97
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L7
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	b	.L8
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	ble	.L9
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bne	.L10
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 0
	b	.L3
	str	wzr, [sp, 60]
	str	wzr, [sp, 56]
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L11
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	cmp	w0, 0
	bgt	.L12
	mov	w1, -1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	w1, -1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret
main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	add	x0, sp, 52
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 16
	str	wzr, [sp, 92]
	b	.L14
	add	x0, sp, 48
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x1, sp, 16
	add	x0, sp, 56
	ldr	w1, [sp, 48]
	add	x0, sp, 56
	add	x0, sp, 56
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w0, [sp, 52]
	ldr	w1, [sp, 92]
	cmp	w1, w0
	blt	.L15
	add	x0, sp, 16
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L19
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L19
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