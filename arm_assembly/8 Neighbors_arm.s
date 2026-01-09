main:
	mov	x12, 11088
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	mov	w0, 1
	str	w0, [sp, 11084]
	add	x0, sp, 8192
	add	x0, x0, 2872
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 8192
	add	x0, x0, 2868
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	str	wzr, [sp, 11080]
	b	.L2
	str	wzr, [sp, 11076]
	b	.L3
	add	x2, sp, 24
	ldrsw	x3, [sp, 11076]
	ldrsw	x1, [sp, 11080]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 4
	sub	x1, x1, x0
	add	x0, x3, x1
	add	x0, x2, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	w0, [sp, 11076]
	add	w0, w0, 1
	str	w0, [sp, 11076]
	ldr	w0, [sp, 11060]
	ldr	w1, [sp, 11076]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 11080]
	add	w0, w0, 1
	str	w0, [sp, 11080]
	ldr	w0, [sp, 11064]
	ldr	w1, [sp, 11080]
	cmp	w1, w0
	blt	.L5
	add	x0, sp, 8192
	add	x0, x0, 2864
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 8192
	add	x0, x0, 2860
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w0, [sp, 11056]
	sub	w0, w0, #2
	str	w0, [sp, 11072]
	b	.L6
	ldr	w0, [sp, 11052]
	sub	w0, w0, #2
	str	w0, [sp, 11068]
	b	.L7
	ldr	w0, [sp, 11072]
	cmp	w0, 0
	blt	.L8
	ldr	w0, [sp, 11064]
	ldr	w1, [sp, 11072]
	cmp	w1, w0
	bge	.L8
	ldr	w0, [sp, 11068]
	cmp	w0, 0
	blt	.L8
	ldr	w0, [sp, 11060]
	ldr	w1, [sp, 11068]
	cmp	w1, w0
	bge	.L8
	ldrsw	x2, [sp, 11068]
	ldrsw	x1, [sp, 11072]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 4
	sub	x1, x1, x0
	add	x0, x1, 8192
	add	x0, x0, 2896
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #12288
	ldrb	w0, [x0, 1224]
	cmp	w0, 120
	beq	.L8
	ldr	w0, [sp, 11056]
	sub	w0, w0, #1
	ldr	w1, [sp, 11072]
	cmp	w1, w0
	bne	.L9
	ldr	w0, [sp, 11052]
	sub	w0, w0, #1
	ldr	w1, [sp, 11068]
	cmp	w1, w0
	beq	.L8
	str	wzr, [sp, 11084]
	ldr	w0, [sp, 11068]
	add	w0, w0, 1
	str	w0, [sp, 11068]
	ldr	w0, [sp, 11052]
	ldr	w1, [sp, 11068]
	cmp	w1, w0
	ble	.L10
	ldr	w0, [sp, 11072]
	add	w0, w0, 1
	str	w0, [sp, 11072]
	ldr	w0, [sp, 11056]
	ldr	w1, [sp, 11072]
	cmp	w1, w0
	ble	.L11
	ldr	w0, [sp, 11084]
	cmp	w0, 1
	bne	.L12
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L13
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 11088
	add	sp, sp, x12
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L17
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L17
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