main:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	add	x0, sp, 56
	add	x0, sp, 24
	add	x0, sp, 104
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 56
	mov	x1, x0
	mov	x0, x2
	mov	x2, x0
	add	x0, sp, 96
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 24
	mov	x1, x0
	mov	x0, x2
	mov	x2, x0
	add	x0, sp, 88
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	add	x2, sp, 56
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L2
	add	x2, sp, 24
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L2
	mov	w0, 1
	b	.L3
	mov	w0, 0
	cmp	w0, 0
	beq	.L4
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 96]
	add	x1, x1, x0
	ldr	x0, [sp, 88]
	cmp	x1, x0
	bne	.L5
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	b	.L6
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, :got:_ZSt4cout
	b	.L6
	add	x2, sp, 56
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L7
	add	x2, sp, 24
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L7
	mov	w0, 1
	b	.L8
	mov	w0, 0
	cmp	w0, 0
	beq	.L9
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 96]
	add	x1, x1, x0
	ldr	x0, [sp, 88]
	cmp	x1, x0
	ble	.L10
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	b	.L6
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, :got:_ZSt4cout
	b	.L6
	add	x2, sp, 56
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L11
	add	x2, sp, 24
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L11
	mov	w0, 1
	b	.L12
	mov	w0, 0
	cmp	w0, 0
	beq	.L13
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 96]
	add	x1, x1, x0
	ldr	x0, [sp, 88]
	cmp	x1, x0
	bge	.L14
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	b	.L6
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, :got:_ZSt4cout
	b	.L6
	add	x2, sp, 56
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L15
	add	x2, sp, 24
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L15
	mov	w0, 1
	b	.L16
	mov	w0, 0
	cmp	w0, 0
	beq	.L17
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 96]
	sub	x1, x1, x0
	ldr	x0, [sp, 88]
	cmp	x1, x0
	bne	.L18
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	b	.L6
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, :got:_ZSt4cout
	b	.L6
	add	x2, sp, 56
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L19
	add	x2, sp, 24
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L19
	mov	w0, 1
	b	.L20
	mov	w0, 0
	cmp	w0, 0
	beq	.L21
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 96]
	sub	x1, x1, x0
	ldr	x0, [sp, 88]
	cmp	x1, x0
	ble	.L22
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	b	.L6
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, :got:_ZSt4cout
	b	.L6
	add	x2, sp, 56
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L23
	add	x2, sp, 24
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L23
	mov	w0, 1
	b	.L24
	mov	w0, 0
	cmp	w0, 0
	beq	.L25
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 96]
	sub	x1, x1, x0
	ldr	x0, [sp, 88]
	cmp	x1, x0
	bge	.L26
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	b	.L6
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, :got:_ZSt4cout
	b	.L6
	add	x2, sp, 56
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L27
	add	x2, sp, 24
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L27
	mov	w0, 1
	b	.L28
	mov	w0, 0
	cmp	w0, 0
	beq	.L29
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 96]
	mul	x1, x1, x0
	ldr	x0, [sp, 88]
	cmp	x1, x0
	bne	.L30
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	b	.L6
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, :got:_ZSt4cout
	b	.L6
	add	x2, sp, 56
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L31
	add	x2, sp, 24
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L31
	mov	w0, 1
	b	.L32
	mov	w0, 0
	cmp	w0, 0
	beq	.L33
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 96]
	mul	x1, x1, x0
	ldr	x0, [sp, 88]
	cmp	x1, x0
	ble	.L34
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	b	.L6
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, :got:_ZSt4cout
	b	.L6
	add	x2, sp, 56
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L35
	add	x2, sp, 24
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L35
	mov	w0, 1
	b	.L36
	mov	w0, 0
	cmp	w0, 0
	beq	.L6
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 96]
	mul	x1, x1, x0
	ldr	x0, [sp, 88]
	cmp	x1, x0
	bge	.L37
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	b	.L6
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, :got:_ZSt4cout
	add	x0, sp, 24
	add	x0, sp, 56
	mov	w0, 0
	ldp	x29, x30, [sp], 112
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L43
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L43
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