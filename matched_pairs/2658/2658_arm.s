syllable:
rhyme:
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, syllable+60
	add	x1, x0, :lo12:syllable+60
	adrp	x0, syllable
	add	x0, x0, :lo12:syllable
	bl	strcmp
	cmp	w0, 0
	bne	.L2
	adrp	x0, syllable+120
	add	x1, x0, :lo12:syllable+120
	adrp	x0, syllable
	add	x0, x0, :lo12:syllable
	bl	strcmp
	cmp	w0, 0
	bne	.L3
	adrp	x0, syllable+180
	add	x1, x0, :lo12:syllable+180
	adrp	x0, syllable
	add	x0, x0, :lo12:syllable
	bl	strcmp
	cmp	w0, 0
	bne	.L3
	mov	w0, 0
	b	.L4
	adrp	x0, syllable+180
	add	x1, x0, :lo12:syllable+180
	adrp	x0, syllable+120
	add	x0, x0, :lo12:syllable+120
	bl	strcmp
	cmp	w0, 0
	bne	.L5
	mov	w0, 1
	b	.L4
	mov	w0, 4
	b	.L4
	adrp	x0, syllable+120
	add	x1, x0, :lo12:syllable+120
	adrp	x0, syllable
	add	x0, x0, :lo12:syllable
	bl	strcmp
	cmp	w0, 0
	bne	.L6
	adrp	x0, syllable+180
	add	x1, x0, :lo12:syllable+180
	adrp	x0, syllable+60
	add	x0, x0, :lo12:syllable+60
	bl	strcmp
	cmp	w0, 0
	bne	.L7
	mov	w0, 2
	b	.L4
	mov	w0, 4
	b	.L4
	adrp	x0, syllable+180
	add	x1, x0, :lo12:syllable+180
	adrp	x0, syllable
	add	x0, x0, :lo12:syllable
	bl	strcmp
	cmp	w0, 0
	bne	.L8
	adrp	x0, syllable+120
	add	x1, x0, :lo12:syllable+120
	adrp	x0, syllable+60
	add	x0, x0, :lo12:syllable+60
	bl	strcmp
	cmp	w0, 0
	bne	.L9
	mov	w0, 3
	b	.L4
	mov	w0, 4
	b	.L4
	mov	w0, 4
	ldp	x29, x30, [sp], 16
	ret
main:
	stp	x29, x30, [sp, -176]!
	mov	x29, sp
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 16
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	add	x0, sp, 156
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 172]
	b	.L11
	str	wzr, [sp, 168]
	b	.L12
	add	x0, sp, 56
	bl	gets
	str	wzr, [sp, 164]
	str	wzr, [sp, 160]
	b	.L13
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	cmp	w0, 32
	bne	.L14
	ldr	w0, [sp, 164]
	add	w0, w0, 1
	str	w0, [sp, 160]
	ldr	w0, [sp, 164]
	add	w0, w0, 1
	str	w0, [sp, 164]
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L15
	ldr	w0, [sp, 160]
	str	w0, [sp, 164]
	b	.L16
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	cmp	w0, 64
	bls	.L17
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	cmp	w0, 90
	bhi	.L17
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	add	w0, w0, 32
	and	w2, w0, 255
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	strb	w2, [x1, x0]
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	cmp	w0, 97
	beq	.L18
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	cmp	w0, 101
	beq	.L18
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	cmp	w0, 105
	beq	.L18
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	cmp	w0, 111
	beq	.L18
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	cmp	w0, 117
	bne	.L19
	ldr	w0, [sp, 164]
	str	w0, [sp, 160]
	ldr	w0, [sp, 164]
	add	w0, w0, 1
	str	w0, [sp, 164]
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L20
	ldr	w0, [sp, 160]
	str	w0, [sp, 164]
	str	wzr, [sp, 160]
	b	.L21
	ldr	w0, [sp, 160]
	add	w1, w0, 1
	str	w1, [sp, 160]
	ldrsw	x1, [sp, 164]
	add	x2, sp, 56
	ldrb	w4, [x2, x1]
	adrp	x1, syllable
	add	x3, x1, :lo12:syllable
	sxtw	x2, w0
	ldrsw	x1, [sp, 168]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, w4
	strb	w1, [x0]
	ldr	w0, [sp, 164]
	add	w0, w0, 1
	str	w0, [sp, 164]
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L22
	adrp	x0, syllable
	add	x3, x0, :lo12:syllable
	ldrsw	x2, [sp, 160]
	ldrsw	x1, [sp, 168]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	strb	wzr, [x0]
	ldr	w0, [sp, 168]
	add	w0, w0, 1
	str	w0, [sp, 168]
	ldr	w0, [sp, 168]
	cmp	w0, 3
	ble	.L23
	bl	rhyme
	add	x1, sp, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 172]
	add	w0, w0, 1
	str	w0, [sp, 172]
	ldr	w0, [sp, 156]
	ldr	w1, [sp, 172]
	cmp	w1, w0
	blt	.L24
	mov	w0, 0
	ldp	x29, x30, [sp], 176
	ret