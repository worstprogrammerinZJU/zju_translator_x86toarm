_Z5setupv:
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	adrp	x0, :got:stdin
	ldr	x0, [x0, #:got_lo12:stdin]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	freopen
	adrp	x0, :got:stdout
	ldr	x0, [x0, #:got_lo12:stdout]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	freopen
	nop
	ldp	x29, x30, [sp], 16
	ret
_Z3askB5cxx11i:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSo5flushEv
	mov	x0, x19
	mov	x1, x19
	adrp	x0, :got:_ZSt3cin
	nop
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	bl	_Z5setupv
	mov	w0, 1
	str	w0, [sp, 60]
	mov	w0, 16960
	movk	w0, 0xf, lsl 16
	str	w0, [sp, 56]
	mov	w0, -1
	str	w0, [sp, 52]
	b	.L5
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 48]
	add	x0, sp, 16
	mov	x8, x0
	ldr	w0, [sp, 48]
	bl	_Z3askB5cxx11i
	add	x2, sp, 16
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L6
	ldr	w0, [sp, 48]
	str	w0, [sp, 52]
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 60]
	b	.L7
	ldr	w0, [sp, 48]
	sub	w0, w0, #1
	str	w0, [sp, 56]
	add	x0, sp, 16
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	ble	.L8
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, :got:_ZSt4cout
	ldr	w1, [sp, 52]
	bl	_ZNSolsEi
	mov	w1, 10
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSo5flushEv
	mov	w0, 0
	ldp	x29, x30, [sp], 64
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
	bne	.L14
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L14
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