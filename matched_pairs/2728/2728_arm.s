n:
x:
y:
h:
cost:
dist:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	str	wzr, [sp, 44]
	b	.L3
	ldrsw	x0, [sp, 44]
	lsl	x1, x0, 2
	adrp	x0, x
	add	x0, x0, :lo12:x
	add	x4, x1, x0
	ldrsw	x0, [sp, 44]
	lsl	x1, x0, 2
	adrp	x0, y
	add	x0, x0, :lo12:y
	add	x2, x1, x0
	ldrsw	x0, [sp, 44]
	lsl	x1, x0, 2
	adrp	x0, h
	add	x0, x0, :lo12:h
	add	x0, x1, x0
	mov	x3, x0
	mov	x1, x4
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L4
	str	wzr, [sp, 44]
	b	.L5
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 40]
	b	.L6
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 44]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x2, [sp, 40]
	ldr	w0, [x0, x2, lsl 2]
	sub	w1, w1, w0
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x2, [sp, 44]
	ldr	w2, [x0, x2, lsl 2]
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x3, [sp, 40]
	ldr	w0, [x0, x3, lsl 2]
	sub	w0, w2, w0
	mul	w1, w1, w0
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x2, [sp, 44]
	ldr	w2, [x0, x2, lsl 2]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x3, [sp, 40]
	ldr	w0, [x0, x3, lsl 2]
	sub	w2, w2, w0
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x3, [sp, 44]
	ldr	w3, [x0, x3, lsl 2]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x4, [sp, 40]
	ldr	w0, [x0, x4, lsl 2]
	sub	w0, w3, w0
	mul	w0, w2, w0
	add	w0, w1, w0
	scvtf	d0, w0
	str	d0, [sp, 24]
	ldr	d0, [sp, 24]
	bl	sqrt
	adrp	x0, dist
	add	x2, x0, :lo12:dist
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
	adrp	x0, dist
	add	x2, x0, :lo12:dist
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	adrp	x0, dist
	add	x2, x0, :lo12:dist
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldrsw	x1, [sp, 44]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldrsw	x2, [sp, 40]
	ldr	w0, [x0, x2, lsl 2]
	sub	w0, w1, w0
	scvtf	d0, w0
	adrp	x0, cost
	add	x2, x0, :lo12:cost
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
	adrp	x0, cost
	add	x2, x0, :lo12:cost
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fcmpe	d0, #0.0
	bmi	.L17
	b	.L7
	adrp	x0, cost
	add	x2, x0, :lo12:cost
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fneg	d0, d0
	adrp	x0, cost
	add	x2, x0, :lo12:cost
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
	adrp	x0, cost
	add	x2, x0, :lo12:cost
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	adrp	x0, cost
	add	x2, x0, :lo12:cost
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L9
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L10
	str	xzr, [sp, 32]
	ldr	d0, [sp, 32]
	bl	_Z4primd
	str	d0, [sp, 24]
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 32]
	fsub	d0, d1, d0
	bl	fabs
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fcmpe	d0, d1
	bmi	.L18
	ldr	d0, [sp, 24]
	str	d0, [sp, 32]
	b	.L14
	nop
	ldr	d0, [sp, 24]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L15
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
_Z4primd:
	mov	x12, 13088
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	str	d0, [sp, 24]
	add	x0, sp, 8192
	add	x0, x0, 848
	mov	x1, 4000
	mov	x2, x1
	mov	w1, 0
	bl	memset
	add	x0, sp, 4096
	add	x0, x0, 3944
	mov	x1, 1000
	mov	x2, x1
	mov	w1, 0
	bl	memset
	mov	w0, 1
	add	x1, sp, 4096
	strb	w0, [x1, 3944]
	str	xzr, [sp, 13056]
	str	xzr, [sp, 13048]
	str	xzr, [sp, 40]
	mov	w0, 1
	str	w0, [sp, 13080]
	b	.L20
	adrp	x0, cost
	add	x2, x0, :lo12:cost
	ldrsw	x1, [sp, 13080]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 6
	add	x0, x2, x0
	ldr	d1, [x0]
	adrp	x0, dist
	add	x2, x0, :lo12:dist
	ldrsw	x1, [sp, 13080]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 6
	add	x0, x2, x0
	ldr	d2, [x0]
	ldr	d0, [sp, 24]
	fmul	d0, d2, d0
	fsub	d0, d1, d0
	ldrsw	x0, [sp, 13080]
	lsl	x0, x0, 3
	add	x1, sp, 40
	str	d0, [x1, x0]
	ldr	w0, [sp, 13080]
	add	w0, w0, 1
	str	w0, [sp, 13080]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 13080]
	cmp	w1, w0
	blt	.L21
	mov	w0, 1
	str	w0, [sp, 13084]
	b	.L22
	adrp	x0, .LC4
	ldr	d0, [x0, #:lo12:.LC4]
	str	d0, [sp, 13064]
	mov	w0, 1
	str	w0, [sp, 13080]
	b	.L23
	ldrsw	x0, [sp, 13080]
	add	x1, sp, 4096
	add	x1, x1, 3944
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L24
	ldrsw	x0, [sp, 13080]
	lsl	x0, x0, 3
	add	x1, sp, 40
	ldr	d0, [x1, x0]
	ldr	d1, [sp, 13064]
	fcmpe	d1, d0
	bgt	.L32
	b	.L24
	ldrsw	x0, [sp, 13080]
	lsl	x0, x0, 3
	add	x1, sp, 40
	ldr	d0, [x1, x0]
	str	d0, [sp, 13064]
	ldr	w0, [sp, 13080]
	str	w0, [sp, 13076]
	ldr	w0, [sp, 13080]
	add	w0, w0, 1
	str	w0, [sp, 13080]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 13080]
	cmp	w1, w0
	blt	.L26
	ldrsw	x0, [sp, 13076]
	add	x1, sp, 4096
	add	x1, x1, 3944
	mov	w2, 1
	strb	w2, [x1, x0]
	ldrsw	x0, [sp, 13076]
	lsl	x0, x0, 2
	add	x1, sp, 8192
	add	x1, x1, 848
	ldr	w1, [x1, x0]
	adrp	x0, cost
	add	x2, x0, :lo12:cost
	ldrsw	x3, [sp, 13076]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	ldr	d1, [sp, 13056]
	fadd	d0, d1, d0
	str	d0, [sp, 13056]
	ldrsw	x0, [sp, 13076]
	lsl	x0, x0, 2
	add	x1, sp, 8192
	add	x1, x1, 848
	ldr	w1, [x1, x0]
	adrp	x0, dist
	add	x2, x0, :lo12:dist
	ldrsw	x3, [sp, 13076]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	ldr	d1, [sp, 13048]
	fadd	d0, d1, d0
	str	d0, [sp, 13048]
	str	wzr, [sp, 13080]
	b	.L27
	ldrsw	x0, [sp, 13080]
	add	x1, sp, 4096
	add	x1, x1, 3944
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L28
	adrp	x0, cost
	add	x2, x0, :lo12:cost
	ldrsw	x3, [sp, 13080]
	ldrsw	x1, [sp, 13076]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	ldr	d1, [x2, x0, lsl 3]
	adrp	x0, dist
	add	x2, x0, :lo12:dist
	ldrsw	x3, [sp, 13080]
	ldrsw	x1, [sp, 13076]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	ldr	d2, [x2, x0, lsl 3]
	ldr	d0, [sp, 24]
	fmul	d0, d2, d0
	fsub	d0, d1, d0
	str	d0, [sp, 13040]
	ldrsw	x0, [sp, 13080]
	lsl	x0, x0, 3
	add	x1, sp, 40
	ldr	d0, [x1, x0]
	ldr	d1, [sp, 13040]
	fcmpe	d1, d0
	cset	w0, mi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L28
	ldrsw	x0, [sp, 13080]
	lsl	x0, x0, 3
	add	x1, sp, 40
	ldr	d0, [sp, 13040]
	str	d0, [x1, x0]
	ldrsw	x0, [sp, 13080]
	lsl	x0, x0, 2
	add	x1, sp, 8192
	add	x1, x1, 848
	ldr	w2, [sp, 13076]
	str	w2, [x1, x0]
	ldr	w0, [sp, 13080]
	add	w0, w0, 1
	str	w0, [sp, 13080]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 13080]
	cmp	w1, w0
	blt	.L29
	ldr	w0, [sp, 13084]
	add	w0, w0, 1
	str	w0, [sp, 13084]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 13084]
	cmp	w1, w0
	blt	.L30
	ldr	d0, [sp, 13048]
	ldr	d1, [sp, 13056]
	fdiv	d0, d1, d0
	ldp	x29, x30, [sp]
	mov	x12, 13088
	add	sp, sp, x12
	ret