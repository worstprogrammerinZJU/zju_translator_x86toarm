main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	ldr	x0, [sp, 24]
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	ldr	x0, [sp, 24]
	sub	x0, x0, #1
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	ldr	x0, [sp, 24]
	sub	x0, x0, #2
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	ldr	x0, [sp, 24]
	sub	x0, x0, #3
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEx
	mov	w1, 10
	mov	x2, x0
	ldr	x0, [sp, 24]
	sub	x0, x0, #11
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	ldr	x0, [sp, 24]
	sub	x0, x0, #12
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	ldr	x0, [sp, 24]
	sub	x0, x0, #13
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	ldr	x0, [sp, 24]
	sub	x0, x0, #4
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	w1, 10
	mov	x2, x0
	ldr	x0, [sp, 24]
	sub	x0, x0, #10
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	ldr	x0, [sp, 24]
	sub	x0, x0, #15
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	ldr	x0, [sp, 24]
	sub	x0, x0, #14
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	ldr	x0, [sp, 24]
	sub	x0, x0, #5
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEx
	mov	w1, 10
	mov	x2, x0
	ldr	x0, [sp, 24]
	sub	x0, x0, #9
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	ldr	x0, [sp, 24]
	sub	x0, x0, #8
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	ldr	x0, [sp, 24]
	sub	x0, x0, #7
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	ldr	x0, [sp, 24]
	sub	x0, x0, #6
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEx
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L5
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L5
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