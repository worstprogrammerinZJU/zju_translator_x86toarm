_Z3gcdii:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L2
	ldr	w0, [sp, 28]
	b	.L3
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 24]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 24]
	mul	w1, w2, w1
	sub	w0, w0, w1
	mov	w1, w0
	ldr	w0, [sp, 24]
	bl	_Z3gcdii
	nop
	ldp	x29, x30, [sp], 32
	ret
_Z7isPrimei:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	d8, [sp, 16]
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 1
	bgt	.L5
	mov	w0, 0
	b	.L6
	mov	w0, 2
	str	w0, [sp, 60]
	b	.L7
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 60]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 60]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L8
	mov	w0, 0
	b	.L6
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	scvtf	d8, w0
	ldr	w0, [sp, 44]
	fcmpe	d8, d0
	cset	w0, ls
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L9
	mov	w0, 1
	ldr	d8, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
_Z3lcmii:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	_Z3gcdii
	mov	w1, w0
	ldr	w0, [sp, 28]
	sdiv	w1, w0, w1
	ldr	w0, [sp, 24]
	mul	w0, w1, w0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	wzr, [sp, 60]
	b	.L13
	ldrsw	x0, [sp, 60]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 52
	beq	.L14
	ldrsw	x0, [sp, 60]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 55
	beq	.L14
	mov	w0, 1
	b	.L15
	mov	w0, 0
	cmp	w0, 0
	beq	.L16
	mov	w0, 0
	b	.L17
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldrsw	x19, [sp, 60]
	ldr	x0, [sp, 40]
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L18
	mov	w0, 1
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	str	wzr, [sp, 56]
	str	wzr, [sp, 52]
	str	wzr, [sp, 48]
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 16]
	str	w0, [sp, 60]
	ldr	w0, [sp, 16]
	sub	w0, w0, #1
	str	w0, [sp, 48]
	str	wzr, [sp, 44]
	b	.L20
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bgt	.L21
	str	wzr, [sp, 40]
	b	.L22
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L23
	ldr	w0, [sp, 44]
	cmp	w0, 0
	beq	.L24
	str	wzr, [sp, 36]
	b	.L25
	ldr	w1, [sp, 36]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	ble	.L26
	ldr	w0, [sp, 60]
	sub	w0, w0, #1
	str	w0, [sp, 60]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	beq	.L27
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	str	w0, [sp, 32]
	b	.L28
	ldr	w1, [sp, 32]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	ldr	w0, [sp, 32]
	sub	w0, w0, #1
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bgt	.L29
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	beq	.L30
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	b	.L30
	str	wzr, [sp, 28]
	b	.L31
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	ble	.L32
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w0, [sp, 16]
	lsl	w0, w0, 1
	ldr	w1, [sp, 44]
	cmp	w1, w0
	beq	.L33
	str	wzr, [sp, 24]
	b	.L34
	ldr	w1, [sp, 24]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	ble	.L35
	ldr	w0, [sp, 48]
	sub	w0, w0, #1
	str	w0, [sp, 20]
	b	.L36
	ldr	w1, [sp, 20]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 20]
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bgt	.L37
	ldr	w0, [sp, 48]
	sub	w0, w0, #1
	str	w0, [sp, 48]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x2
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 16]
	lsl	w0, w0, 1
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L38
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	scvtf	d0, w0
	bl	sqrt
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L44
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L44
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