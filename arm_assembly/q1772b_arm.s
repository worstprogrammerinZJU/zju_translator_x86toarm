_Z5checkPA2_i:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	mov	w0, 1
	str	w0, [sp, 28]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 4]
	cmp	w1, w0
	ble	.L2
	str	wzr, [sp, 28]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldr	w0, [x0, 4]
	cmp	w1, w0
	ble	.L3
	str	wzr, [sp, 28]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L4
	str	wzr, [sp, 28]
	ldr	x0, [sp, 8]
	ldr	w1, [x0, 4]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldr	w0, [x0, 4]
	cmp	w1, w0
	ble	.L5
	str	wzr, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L6
	mov	w0, 0
	b	.L7
	mov	w0, 1
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	add	x0, sp, 64
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 92]
	b	.L9
	str	wzr, [sp, 88]
	b	.L10
	str	wzr, [sp, 84]
	b	.L11
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w2, [sp, 28]
	ldrsw	x0, [sp, 84]
	ldrsw	x1, [sp, 88]
	lsl	x1, x1, 1
	add	x0, x1, x0
	lsl	x0, x0, 2
	add	x1, sp, 48
	str	w2, [x1, x0]
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
	ldr	w0, [sp, 84]
	cmp	w0, 1
	ble	.L12
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
	ldr	w0, [sp, 88]
	cmp	w0, 1
	ble	.L13
	str	wzr, [sp, 80]
	str	wzr, [sp, 76]
	b	.L14
	add	x0, sp, 48
	bl	_Z5checkPA2_i
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L15
	mov	w0, 1
	str	w0, [sp, 80]
	b	.L16
	ldr	w0, [sp, 56]
	str	w0, [sp, 32]
	ldr	w0, [sp, 60]
	str	w0, [sp, 40]
	ldr	w0, [sp, 48]
	str	w0, [sp, 36]
	ldr	w0, [sp, 52]
	str	w0, [sp, 44]
	str	wzr, [sp, 72]
	b	.L17
	str	wzr, [sp, 68]
	b	.L18
	ldrsw	x0, [sp, 68]
	ldrsw	x1, [sp, 72]
	lsl	x1, x1, 1
	add	x0, x1, x0
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w2, [x1, x0]
	ldrsw	x0, [sp, 68]
	ldrsw	x1, [sp, 72]
	lsl	x1, x1, 1
	add	x0, x1, x0
	lsl	x0, x0, 2
	add	x1, sp, 48
	str	w2, [x1, x0]
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
	ldr	w0, [sp, 68]
	cmp	w0, 1
	ble	.L19
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldr	w0, [sp, 72]
	cmp	w0, 1
	ble	.L20
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldr	w0, [sp, 76]
	cmp	w0, 3
	ble	.L21
	ldr	w0, [sp, 80]
	cmp	w0, 1
	bne	.L22
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L23
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w0, [sp, 64]
	ldr	w1, [sp, 92]
	cmp	w1, w0
	ble	.L24
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L28
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L28
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