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
_Z1sB5cxx11:
b:
ss:
c:
pb:
ps:
pc:
cb:
cs:
cc:
k:
_Z3canx:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	xzr, [sp, 32]
	adrp	x0, cb
	add	x0, x0, :lo12:cb
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	mul	x1, x1, x0
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldr	x0, [x0]
	sub	x0, x1, x0
	str	x0, [sp, 40]
	add	x1, sp, 40
	add	x0, sp, 32
	bl	_ZSt3maxIxERKT_S2_S2_
	ldr	x0, [x0]
	str	x0, [sp, 104]
	str	xzr, [sp, 48]
	adrp	x0, cs
	add	x0, x0, :lo12:cs
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	mul	x1, x1, x0
	adrp	x0, ss
	add	x0, x0, :lo12:ss
	ldr	x0, [x0]
	sub	x0, x1, x0
	str	x0, [sp, 56]
	add	x1, sp, 56
	add	x0, sp, 48
	bl	_ZSt3maxIxERKT_S2_S2_
	ldr	x0, [x0]
	str	x0, [sp, 96]
	str	xzr, [sp, 64]
	adrp	x0, cc
	add	x0, x0, :lo12:cc
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	mul	x1, x1, x0
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldr	x0, [x0]
	sub	x0, x1, x0
	str	x0, [sp, 72]
	add	x1, sp, 72
	add	x0, sp, 64
	bl	_ZSt3maxIxERKT_S2_S2_
	ldr	x0, [x0]
	str	x0, [sp, 88]
	adrp	x0, pb
	add	x0, x0, :lo12:pb
	ldr	x1, [x0]
	ldr	x0, [sp, 104]
	mul	x1, x1, x0
	adrp	x0, ps
	add	x0, x0, :lo12:ps
	ldr	x2, [x0]
	ldr	x0, [sp, 96]
	mul	x0, x2, x0
	add	x1, x1, x0
	adrp	x0, pc
	add	x0, x0, :lo12:pc
	ldr	x2, [x0]
	ldr	x0, [sp, 88]
	mul	x0, x2, x0
	add	x0, x1, x0
	str	x0, [sp, 80]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	x0, [x0]
	ldr	x1, [sp, 80]
	cmp	x1, x0
	cset	w0, le
	and	w0, w0, 255
	ldp	x29, x30, [sp], 112
	ret
main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	bl	_Z5setupv
	adrp	x0, _Z1sB5cxx11
	add	x1, x0, :lo12:_Z1sB5cxx11
	adrp	x0, :got:_ZSt3cin
	mov	x2, x0
	adrp	x0, b
	add	x1, x0, :lo12:b
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	adrp	x0, ss
	add	x1, x0, :lo12:ss
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	adrp	x0, c
	add	x1, x0, :lo12:c
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	adrp	x0, pb
	add	x1, x0, :lo12:pb
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	adrp	x0, ps
	add	x1, x0, :lo12:ps
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	adrp	x0, pc
	add	x1, x0, :lo12:pc
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	adrp	x0, k
	add	x1, x0, :lo12:k
	mov	x0, x2
	bl	_ZNSirsERx
	str	wzr, [sp, 76]
	b	.L5
	ldrsw	x0, [sp, 76]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	ldrb	w0, [x0]
	cmp	w0, 66
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L6
	adrp	x0, cb
	add	x0, x0, :lo12:cb
	ldr	x0, [x0]
	add	x1, x0, 1
	adrp	x0, cb
	add	x0, x0, :lo12:cb
	str	x1, [x0]
	b	.L7
	ldrsw	x0, [sp, 76]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	ldrb	w0, [x0]
	cmp	w0, 83
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
	adrp	x0, cs
	add	x0, x0, :lo12:cs
	ldr	x0, [x0]
	add	x1, x0, 1
	adrp	x0, cs
	add	x0, x0, :lo12:cs
	str	x1, [x0]
	b	.L7
	adrp	x0, cc
	add	x0, x0, :lo12:cc
	ldr	x0, [x0]
	add	x1, x0, 1
	adrp	x0, cc
	add	x0, x0, :lo12:cc
	str	x1, [x0]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldrsw	x19, [sp, 76]
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L9
	str	xzr, [sp, 64]
	mov	x0, 40960
	movk	x0, 0x4e72, lsl 16
	movk	x0, 0x918, lsl 32
	str	x0, [sp, 56]
	str	xzr, [sp, 48]
	b	.L10
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	_Z3canx
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L11
	ldr	x0, [sp, 40]
	str	x0, [sp, 48]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 64]
	b	.L10
	ldr	x0, [sp, 40]
	sub	x0, x0, #1
	str	x0, [sp, 56]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	ble	.L12
	ldr	x1, [sp, 48]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	bge	.L15
	ldr	x0, [sp]
	b	.L16
	ldr	x0, [sp, 8]
	add	sp, sp, 16
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
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	adrp	x0, _Z1sB5cxx11
	add	x1, x0, :lo12:_Z1sB5cxx11
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