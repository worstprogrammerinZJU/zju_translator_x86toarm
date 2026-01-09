_ZL3INF:
main:
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 80
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 72
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 64
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x0, -1
	str	x0, [sp, 120]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 72]
	mul	x1, x1, x0
	ldr	x0, [sp, 64]
	mul	x0, x1, x0
	str	x0, [sp, 16]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 72]
	add	x1, x1, x0
	ldr	x0, [sp, 64]
	add	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 64]
	mul	x1, x1, x0
	ldr	x0, [sp, 80]
	add	x0, x1, x0
	str	x0, [sp, 32]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 72]
	mul	x1, x1, x0
	ldr	x0, [sp, 64]
	add	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 72]
	add	x1, x1, x0
	ldr	x0, [sp, 64]
	mul	x0, x1, x0
	str	x0, [sp, 48]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 64]
	add	x1, x1, x0
	ldr	x0, [sp, 80]
	mul	x0, x1, x0
	str	x0, [sp, 56]
	add	x0, sp, 16
	str	x0, [sp, 104]
	ldr	x0, [sp, 104]
	str	x0, [sp, 112]
	ldr	x0, [sp, 104]
	add	x0, x0, 48
	str	x0, [sp, 96]
	b	.L2
	ldr	x0, [sp, 112]
	ldr	x0, [x0]
	str	x0, [sp, 88]
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 120]
	cmp	x1, x0
	ble	.L3
	ldr	x0, [sp, 88]
	b	.L4
	ldr	x0, [sp, 120]
	str	x0, [sp, 120]
	ldr	x0, [sp, 112]
	add	x0, x0, 8
	str	x0, [sp, 112]
	ldr	x1, [sp, 112]
	ldr	x0, [sp, 96]
	cmp	x1, x0
	bne	.L5
	ldr	x1, [sp, 120]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w1, 10
	mov	w0, 0
	ldp	x29, x30, [sp], 128
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L9
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L9
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