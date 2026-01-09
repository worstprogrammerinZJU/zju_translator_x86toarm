star:
telescope:
sx:
sy:
sz:
tx:
ty:
tz:
r:
_Z4distdddddd:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	d0, [sp, 56]
	str	d1, [sp, 48]
	str	d2, [sp, 40]
	str	d3, [sp, 32]
	str	d4, [sp, 24]
	str	d5, [sp, 16]
	ldr	d1, [sp, 56]
	ldr	d0, [sp, 32]
	fsub	d1, d1, d0
	ldr	d2, [sp, 56]
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	fmul	d1, d1, d0
	ldr	d2, [sp, 48]
	ldr	d0, [sp, 24]
	fsub	d2, d2, d0
	ldr	d3, [sp, 48]
	ldr	d0, [sp, 24]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	fadd	d1, d1, d0
	ldr	d2, [sp, 40]
	ldr	d0, [sp, 16]
	fsub	d2, d2, d0
	ldr	d3, [sp, 40]
	ldr	d0, [sp, 16]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	bl	sqrt
	ldp	x29, x30, [sp], 64
	ret
_Z4seeni:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, sx
	add	x0, x0, :lo12:sx
	ldrsw	x1, [sp, 28]
	ldr	d0, [x0, x1, lsl 3]
	adrp	x0, sy
	add	x0, x0, :lo12:sy
	ldrsw	x1, [sp, 28]
	ldr	d1, [x0, x1, lsl 3]
	adrp	x0, sz
	add	x0, x0, :lo12:sz
	ldrsw	x1, [sp, 28]
	ldr	d2, [x0, x1, lsl 3]
	movi	d5, #0
	movi	d4, #0
	movi	d3, #0
	bl	_Z4distdddddd
	str	d0, [sp, 64]
	str	wzr, [sp, 76]
	b	.L4
	adrp	x0, sx
	add	x0, x0, :lo12:sx
	ldrsw	x1, [sp, 28]
	ldr	d0, [x0, x1, lsl 3]
	adrp	x0, sy
	add	x0, x0, :lo12:sy
	ldrsw	x1, [sp, 28]
	ldr	d1, [x0, x1, lsl 3]
	adrp	x0, sz
	add	x0, x0, :lo12:sz
	ldrsw	x1, [sp, 28]
	ldr	d2, [x0, x1, lsl 3]
	adrp	x0, tx
	add	x0, x0, :lo12:tx
	ldrsw	x1, [sp, 76]
	ldr	d3, [x0, x1, lsl 3]
	adrp	x0, ty
	add	x0, x0, :lo12:ty
	ldrsw	x1, [sp, 76]
	ldr	d4, [x0, x1, lsl 3]
	adrp	x0, tz
	add	x0, x0, :lo12:tz
	ldrsw	x1, [sp, 76]
	ldr	d5, [x0, x1, lsl 3]
	bl	_Z4distdddddd
	str	d0, [sp, 56]
	adrp	x0, tx
	add	x0, x0, :lo12:tx
	ldrsw	x1, [sp, 76]
	ldr	d0, [x0, x1, lsl 3]
	adrp	x0, ty
	add	x0, x0, :lo12:ty
	ldrsw	x1, [sp, 76]
	ldr	d1, [x0, x1, lsl 3]
	adrp	x0, tz
	add	x0, x0, :lo12:tz
	ldrsw	x1, [sp, 76]
	ldr	d2, [x0, x1, lsl 3]
	movi	d5, #0
	movi	d4, #0
	movi	d3, #0
	bl	_Z4distdddddd
	str	d0, [sp, 48]
	ldr	d0, [sp, 64]
	fmul	d1, d0, d0
	ldr	d0, [sp, 48]
	fmul	d0, d0, d0
	fadd	d1, d1, d0
	ldr	d0, [sp, 56]
	fmul	d0, d0, d0
	fsub	d1, d1, d0
	ldr	d0, [sp, 64]
	fadd	d2, d0, d0
	ldr	d0, [sp, 48]
	fmul	d0, d2, d0
	fdiv	d0, d1, d0
	bl	acos
	str	d0, [sp, 40]
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldrsw	x1, [sp, 76]
	ldr	d0, [x0, x1, lsl 3]
	ldr	d1, [sp, 40]
	fcmpe	d1, d0
	bmi	.L9
	b	.L10
	mov	w0, 1
	b	.L7
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	adrp	x0, telescope
	add	x0, x0, :lo12:telescope
	ldr	w0, [x0]
	ldr	w1, [sp, 76]
	cmp	w1, w0
	blt	.L8
	mov	w0, 0
	ldp	x29, x30, [sp], 80
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, star
	add	x1, x0, :lo12:star
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L12
	str	wzr, [sp, 28]
	b	.L13
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 3
	adrp	x0, sx
	add	x0, x0, :lo12:sx
	add	x4, x1, x0
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 3
	adrp	x0, sy
	add	x0, x0, :lo12:sy
	add	x2, x1, x0
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 3
	adrp	x0, sz
	add	x0, x0, :lo12:sz
	add	x0, x1, x0
	mov	x3, x0
	mov	x1, x4
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, star
	add	x0, x0, :lo12:star
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L14
	adrp	x0, telescope
	add	x1, x0, :lo12:telescope
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L15
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 3
	adrp	x0, tx
	add	x0, x0, :lo12:tx
	add	x5, x1, x0
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 3
	adrp	x0, ty
	add	x0, x0, :lo12:ty
	add	x2, x1, x0
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 3
	adrp	x0, tz
	add	x0, x0, :lo12:tz
	add	x3, x1, x0
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 3
	adrp	x0, r
	add	x0, x0, :lo12:r
	add	x0, x1, x0
	mov	x4, x0
	mov	x1, x5
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, telescope
	add	x0, x0, :lo12:telescope
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L16
	str	wzr, [sp, 24]
	str	wzr, [sp, 28]
	b	.L17
	ldr	w0, [sp, 28]
	bl	_Z4seeni
	and	w0, w0, 255
	cmp	w0, 1
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L18
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, star
	add	x0, x0, :lo12:star
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L19
	ldr	w1, [sp, 24]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	adrp	x0, star
	add	x1, x0, :lo12:star
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, star
	add	x0, x0, :lo12:star
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L20
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret