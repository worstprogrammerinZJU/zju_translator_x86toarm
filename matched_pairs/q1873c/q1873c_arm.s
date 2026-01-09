main:
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	add	x0, sp, 132
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 156]
	b	.L2
	str	wzr, [sp, 152]
	str	wzr, [sp, 148]
	b	.L3
	str	wzr, [sp, 144]
	b	.L4
	add	x0, sp, 131
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldrb	w3, [sp, 131]
	ldrsw	x2, [sp, 144]
	ldrsw	x1, [sp, 148]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, 160
	add	x0, sp, x0
	add	x0, x0, x2
	mov	w1, w3
	strb	w1, [x0, -136]
	ldr	w0, [sp, 144]
	add	w0, w0, 1
	str	w0, [sp, 144]
	ldr	w0, [sp, 144]
	cmp	w0, 9
	ble	.L5
	ldr	w0, [sp, 148]
	add	w0, w0, 1
	str	w0, [sp, 148]
	ldr	w0, [sp, 148]
	cmp	w0, 9
	ble	.L6
	str	wzr, [sp, 140]
	b	.L7
	str	wzr, [sp, 136]
	b	.L8
	ldrsw	x2, [sp, 136]
	ldrsw	x1, [sp, 140]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, 160
	add	x0, sp, x0
	add	x0, x0, x2
	ldrb	w0, [x0, -136]
	cmp	w0, 88
	bne	.L9
	ldr	w0, [sp, 140]
	cmp	w0, 3
	ble	.L10
	ldr	w0, [sp, 140]
	cmp	w0, 5
	bgt	.L10
	ldr	w0, [sp, 136]
	cmp	w0, 3
	ble	.L10
	ldr	w0, [sp, 136]
	cmp	w0, 5
	bgt	.L10
	ldr	w0, [sp, 152]
	add	w0, w0, 1
	str	w0, [sp, 152]
	ldr	w0, [sp, 140]
	cmp	w0, 2
	ble	.L11
	ldr	w0, [sp, 140]
	cmp	w0, 6
	bgt	.L11
	ldr	w0, [sp, 136]
	cmp	w0, 2
	ble	.L11
	ldr	w0, [sp, 136]
	cmp	w0, 6
	bgt	.L11
	ldr	w0, [sp, 152]
	add	w0, w0, 1
	str	w0, [sp, 152]
	ldr	w0, [sp, 140]
	cmp	w0, 1
	ble	.L12
	ldr	w0, [sp, 140]
	cmp	w0, 7
	bgt	.L12
	ldr	w0, [sp, 136]
	cmp	w0, 1
	ble	.L12
	ldr	w0, [sp, 136]
	cmp	w0, 7
	bgt	.L12
	ldr	w0, [sp, 152]
	add	w0, w0, 1
	str	w0, [sp, 152]
	ldr	w0, [sp, 140]
	cmp	w0, 0
	ble	.L13
	ldr	w0, [sp, 140]
	cmp	w0, 8
	bgt	.L13
	ldr	w0, [sp, 136]
	cmp	w0, 0
	ble	.L13
	ldr	w0, [sp, 136]
	cmp	w0, 8
	bgt	.L13
	ldr	w0, [sp, 152]
	add	w0, w0, 1
	str	w0, [sp, 152]
	ldr	w0, [sp, 140]
	cmp	w0, 0
	blt	.L9
	ldr	w0, [sp, 140]
	cmp	w0, 9
	bgt	.L9
	ldr	w0, [sp, 136]
	cmp	w0, 0
	blt	.L9
	ldr	w0, [sp, 136]
	cmp	w0, 9
	bgt	.L9
	ldr	w0, [sp, 152]
	add	w0, w0, 1
	str	w0, [sp, 152]
	ldr	w0, [sp, 136]
	add	w0, w0, 1
	str	w0, [sp, 136]
	ldr	w0, [sp, 136]
	cmp	w0, 9
	ble	.L14
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
	ldr	w0, [sp, 140]
	cmp	w0, 9
	ble	.L15
	ldr	w1, [sp, 152]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 156]
	add	w0, w0, 1
	str	w0, [sp, 156]
	ldr	w0, [sp, 132]
	ldr	w1, [sp, 156]
	cmp	w1, w0
	ble	.L16
	mov	w0, 0
	ldp	x29, x30, [sp], 160
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