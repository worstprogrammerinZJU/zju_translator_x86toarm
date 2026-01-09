main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 60]
	b	.L2
	str	wzr, [sp, 56]
	b	.L3
	str	wzr, [sp, 52]
	b	.L4
	add	x1, sp, 16
	ldrsw	x2, [sp, 52]
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 1
	add	x0, x2, x0
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	cmp	w0, 1
	ble	.L5
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w0, [sp, 56]
	cmp	w0, 1
	ble	.L6
	str	wzr, [sp, 48]
	str	wzr, [sp, 44]
	b	.L7
	str	wzr, [sp, 36]
	str	wzr, [sp, 40]
	b	.L8
	ldrsw	x0, [sp, 40]
	ldrsw	x1, [sp, 44]
	lsl	x1, x1, 1
	add	x0, x1, x0
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	cmp	w0, 1
	bne	.L9
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	cmp	w0, 1
	ble	.L10
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 1
	ble	.L11
	ldr	w0, [sp, 48]
	cmp	w0, 0
	bne	.L12
	mov	w1, 0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L13
	ldr	w0, [sp, 48]
	cmp	w0, 4
	bne	.L14
	mov	w1, 2
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L13
	mov	w1, 1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	ble	.L15
	mov	w0, 0
	ldp	x29, x30, [sp], 64
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