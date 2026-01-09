seed:
x:
y:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 16
	bl	gets
	b	.L2
	ldrb	w0, [sp, 16]
	sub	w0, w0, #65
	str	w0, [sp, 40]
	ldrb	w0, [sp, 17]
	cmp	w0, 0
	beq	.L3
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 40]
	str	xzr, [x0, x1, lsl 3]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 40]
	str	xzr, [x0, x1, lsl 3]
	mov	w0, 2
	str	w0, [sp, 44]
	b	.L4
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 40]
	ldr	d1, [x0, x1, lsl 3]
	fmov	d0, 1.0e+1
	fmul	d1, d1, d0
	ldrsw	x0, [sp, 44]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	scvtf	d0, w0
	fadd	d0, d1, d0
	mov	x0, 4631952216750555136
	fmov	d1, x0
	fsub	d0, d0, d1
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 40]
	str	d0, [x0, x1, lsl 3]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 44]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 32
	bne	.L5
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	b	.L6
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 40]
	ldr	d1, [x0, x1, lsl 3]
	fmov	d0, 1.0e+1
	fmul	d1, d1, d0
	ldrsw	x0, [sp, 44]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	scvtf	d0, w0
	fadd	d0, d1, d0
	mov	x0, 4631952216750555136
	fmov	d1, x0
	fsub	d0, d0, d1
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 40]
	str	d0, [x0, x1, lsl 3]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 44]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L7
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 40]
	ldr	d0, [x0, x1, lsl 3]
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 40]
	add	x1, x1, 26
	str	d0, [x0, x1, lsl 3]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 40]
	ldr	d0, [x0, x1, lsl 3]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 40]
	add	x1, x1, 26
	str	d0, [x0, x1, lsl 3]
	b	.L8
	bl	random
	scvtf	d0, w0
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 40]
	str	d0, [x0, x1, lsl 3]
	bl	random
	scvtf	d0, w0
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 40]
	str	d0, [x0, x1, lsl 3]
	bl	random
	scvtf	d0, w0
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 40]
	add	x1, x1, 26
	str	d0, [x0, x1, lsl 3]
	bl	random
	scvtf	d0, w0
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 40]
	add	x1, x1, 26
	str	d0, [x0, x1, lsl 3]
	add	x0, sp, 16
	bl	gets
	ldrb	w0, [sp, 16]
	cmp	w0, 64
	bls	.L15
	ldrb	w0, [sp, 16]
	cmp	w0, 90
	bls	.L10
	ldrb	w0, [sp, 18]
	sub	w0, w0, #65
	str	w0, [sp, 40]
	ldrb	w0, [sp, 20]
	sub	w0, w0, #65
	str	w0, [sp, 44]
	ldrb	w0, [sp, 22]
	sub	w0, w0, #65
	str	w0, [sp, 36]
	ldrb	w0, [sp, 16]
	cmp	w0, 49
	bne	.L11
	mov	w3, 0
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	bl	first
	mov	w3, 1
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	bl	first
	b	.L12
	ldrb	w0, [sp, 16]
	cmp	w0, 50
	bne	.L13
	mov	w3, 0
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	bl	second
	mov	w3, 1
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	bl	second
	b	.L12
	ldrb	w0, [sp, 16]
	cmp	w0, 51
	bne	.L12
	mov	w3, 0
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	bl	third
	mov	w3, 1
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	bl	third
	add	x0, sp, 16
	bl	gets
	ldrb	w0, [sp, 16]
	cmp	w0, 48
	bls	.L14
	ldrb	w0, [sp, 16]
	cmp	w0, 51
	bls	.L15
	ldrb	w0, [sp, 16]
	sub	w0, w0, #65
	str	w0, [sp, 40]
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 40]
	ldr	d1, [x0, x1, lsl 3]
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 40]
	add	x1, x1, 26
	ldr	d0, [x0, x1, lsl 3]
	fsub	d0, d1, d0
	bl	fabs
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fcmpe	d0, d1
	bmi	.L21
	b	.L16
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 40]
	ldr	d1, [x0, x1, lsl 3]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 40]
	add	x1, x1, 26
	ldr	d0, [x0, x1, lsl 3]
	fsub	d0, d1, d0
	bl	fabs
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fcmpe	d0, d1
	bmi	.L22
	b	.L16
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 40]
	ldr	d0, [x0, x1, lsl 3]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 40]
	ldr	d1, [x0, x1, lsl 3]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L19
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 16
	bl	gets
	add	x2, sp, 16
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L10
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
first:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	w2, [sp, 4]
	str	w3, [sp]
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 12]
	ldrsw	x1, [sp]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d1, [x2, x0, lsl 3]
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 8]
	ldrsw	x1, [sp]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 4]
	ldrsw	x1, [sp]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 12]
	ldrsw	x1, [sp]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d1, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 8]
	ldrsw	x1, [sp]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 4]
	ldrsw	x1, [sp]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
	nop
	add	sp, sp, 16
	ret
second:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	d8, [sp, 16]
	str	w0, [sp, 44]
	str	w1, [sp, 40]
	str	w2, [sp, 36]
	str	w3, [sp, 32]
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d1, [x2, x0, lsl 3]
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fcmp	d1, d0
	bne	.L25
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 36]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d1, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fsub	d1, d1, d0
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fadd	d0, d1, d0
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 36]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
	b	.L27
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d1, [x2, x0, lsl 3]
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fsub	d0, d1, d0
	str	d0, [sp, 72]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d1, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fsub	d0, d1, d0
	str	d0, [sp, 64]
	ldr	d1, [sp, 72]
	ldr	d0, [sp, 64]
	bl	atan2
	str	d0, [sp, 56]
	ldr	d0, [sp, 72]
	fmul	d1, d0, d0
	ldr	d0, [sp, 64]
	fmul	d0, d0, d0
	fadd	d0, d1, d0
	bl	sqrt
	str	d0, [sp, 48]
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d8, [x2, x0, lsl 3]
	ldr	d0, [sp, 56]
	bl	sin
	fmov	d1, d0
	ldr	d0, [sp, 48]
	fmul	d0, d1, d0
	fsub	d0, d8, d0
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 36]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d8, [x2, x0, lsl 3]
	ldr	d0, [sp, 56]
	bl	cos
	fmov	d1, d0
	ldr	d0, [sp, 48]
	fmul	d0, d1, d0
	fadd	d0, d8, d0
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 36]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
	nop
	ldr	d8, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
third:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	d8, [sp, 16]
	str	w0, [sp, 44]
	str	w1, [sp, 40]
	str	w2, [sp, 36]
	str	w3, [sp, 32]
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d1, [x2, x0, lsl 3]
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fcmp	d1, d0
	bne	.L29
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 36]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d1, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fsub	d1, d1, d0
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fadd	d0, d1, d0
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 36]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
	b	.L31
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d1, [x2, x0, lsl 3]
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fsub	d0, d1, d0
	str	d0, [sp, 72]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d1, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fsub	d0, d1, d0
	str	d0, [sp, 64]
	ldr	d1, [sp, 72]
	ldr	d0, [sp, 64]
	bl	atan2
	str	d0, [sp, 56]
	ldr	d0, [sp, 72]
	fmul	d1, d0, d0
	ldr	d0, [sp, 64]
	fmul	d0, d0, d0
	fadd	d0, d1, d0
	bl	sqrt
	str	d0, [sp, 48]
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d8, [x2, x0, lsl 3]
	ldr	d0, [sp, 56]
	bl	sin
	fmov	d1, d0
	ldr	d0, [sp, 48]
	fmul	d0, d1, d0
	fadd	d0, d8, d0
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 36]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d8, [x2, x0, lsl 3]
	ldr	d0, [sp, 56]
	bl	cos
	fmov	d1, d0
	ldr	d0, [sp, 48]
	fmul	d0, d1, d0
	fsub	d0, d8, d0
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 36]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
	nop
	ldr	d8, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
random:
	sub	sp, sp, #16
	adrp	x0, seed
	add	x0, x0, :lo12:seed
	ldr	x1, [x0]
	mov	x0, 64377
	movk	x0, 0x1fe3, lsl 16
	movk	x0, 0x5af, lsl 32
	movk	x0, 0x41a7, lsl 48
	smulh	x0, x1, x0
	asr	x2, x0, 15
	asr	x0, x1, 63
	sub	x0, x2, x0
	mov	x2, 62237
	movk	x2, 0x1, lsl 16
	mul	x0, x0, x2
	sub	x0, x1, x0
	mov	x1, 16807
	mul	x1, x0, x1
	adrp	x0, seed
	add	x0, x0, :lo12:seed
	ldr	x0, [x0]
	mov	x2, 64377
	movk	x2, 0x1fe3, lsl 16
	movk	x2, 0x5af, lsl 32
	movk	x2, 0x41a7, lsl 48
	smulh	x2, x0, x2
	asr	x2, x2, 15
	asr	x0, x0, 63
	sub	x2, x0, x2
	mov	x0, 2836
	mul	x0, x2, x0
	add	x0, x1, x0
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 0
	blt	.L33
	adrp	x0, seed
	add	x0, x0, :lo12:seed
	ldr	x1, [sp, 8]
	str	x1, [x0]
	b	.L34
	ldr	x1, [sp, 8]
	mov	x0, 2147483647
	add	x1, x1, x0
	adrp	x0, seed
	add	x0, x0, :lo12:seed
	str	x1, [x0]
	adrp	x0, seed
	add	x0, x0, :lo12:seed
	ldr	d0, [x0]
	scvtf	d0, d0
	mov	x0, 4636737291354636288
	fmov	d1, x0
	fmul	d0, d0, d1
	mov	x0, 281474972516352
	movk	x0, 0x41df, lsl 48
	fmov	d1, x0
	fdiv	d0, d0, d1
	str	d0, [sp]
	ldr	d0, [sp]
	fcvtzs	w0, d0
	add	sp, sp, 16
	ret