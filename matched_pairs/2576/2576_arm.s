a:
b:
na:
nb:
n:
sa:
sb:
main:
	stp	x29, x30, [sp, -448]!
	mov	x29, sp
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	adrp	x0, na
	add	x0, x0, :lo12:na
	str	w1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, na
	add	x0, x0, :lo12:na
	ldr	w0, [x0]
	sub	w1, w1, w0
	adrp	x0, nb
	add	x0, x0, :lo12:nb
	str	w1, [x0]
	str	wzr, [sp, 444]
	b	.L2
	add	x1, sp, 24
	ldrsw	x0, [sp, 444]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 444]
	add	w0, w0, 1
	str	w0, [sp, 444]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 444]
	cmp	w1, w0
	blt	.L3
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x1, w0
	add	x4, sp, 24
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 4
	mov	x0, x4
	bl	qsort
	str	wzr, [sp, 444]
	b	.L4
	ldr	w0, [sp, 444]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w3, w0
	ldrsw	x0, [sp, 444]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [x1, x0]
	adrp	x0, a
	add	x0, x0, :lo12:a
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldrsw	x0, [sp, 444]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	adrp	x0, sa
	add	x0, x0, :lo12:sa
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, sa
	add	x0, x0, :lo12:sa
	str	w1, [x0]
	ldr	w0, [sp, 444]
	add	w2, w0, 1
	ldr	w0, [sp, 444]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w3, w0
	sxtw	x0, w2
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [x1, x0]
	adrp	x0, b
	add	x0, x0, :lo12:b
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 444]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	adrp	x0, sb
	add	x0, x0, :lo12:sb
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, sb
	add	x0, x0, :lo12:sb
	str	w1, [x0]
	ldr	w0, [sp, 444]
	add	w0, w0, 2
	str	w0, [sp, 444]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w0, w0, #1
	ldr	w1, [sp, 444]
	cmp	w1, w0
	blt	.L5
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L6
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w1, w0, #1
	adrp	x0, na
	add	x0, x0, :lo12:na
	ldr	w3, [x0]
	sxtw	x0, w1
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [x1, x0]
	adrp	x0, b
	add	x0, x0, :lo12:b
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	adrp	x0, sb
	add	x0, x0, :lo12:sb
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, sb
	add	x0, x0, :lo12:sb
	str	w1, [x0]
	adrp	x0, sa
	add	x0, x0, :lo12:sa
	ldr	w2, [x0]
	adrp	x0, sb
	add	x0, x0, :lo12:sb
	ldr	w0, [x0]
	mov	w1, w0
	mov	w0, w2
	bl	Ab
	str	w0, [sp, 440]
	str	wzr, [sp, 444]
	b	.L7
	bl	rand
	mov	w1, w0
	adrp	x0, na
	add	x0, x0, :lo12:na
	ldr	w0, [x0]
	sdiv	w2, w1, w0
	mul	w0, w2, w0
	sub	w0, w1, w0
	str	w0, [sp, 436]
	bl	rand
	mov	w1, w0
	adrp	x0, nb
	add	x0, x0, :lo12:nb
	ldr	w0, [x0]
	sdiv	w2, w1, w0
	mul	w0, w2, w0
	sub	w0, w1, w0
	str	w0, [sp, 432]
	adrp	x0, sa
	add	x0, x0, :lo12:sa
	ldr	w1, [x0]
	adrp	x0, a
	add	x0, x0, :lo12:a
	ldrsw	x2, [sp, 436]
	ldr	w0, [x0, x2, lsl 2]
	sub	w1, w1, w0
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldrsw	x2, [sp, 432]
	ldr	w0, [x0, x2, lsl 2]
	add	w3, w1, w0
	adrp	x0, sb
	add	x0, x0, :lo12:sb
	ldr	w1, [x0]
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldrsw	x2, [sp, 432]
	ldr	w0, [x0, x2, lsl 2]
	sub	w1, w1, w0
	adrp	x0, a
	add	x0, x0, :lo12:a
	ldrsw	x2, [sp, 436]
	ldr	w0, [x0, x2, lsl 2]
	add	w0, w1, w0
	mov	w1, w0
	mov	w0, w3
	bl	Ab
	str	w0, [sp, 428]
	ldr	w1, [sp, 428]
	ldr	w0, [sp, 440]
	cmp	w1, w0
	bge	.L8
	ldr	w0, [sp, 428]
	str	w0, [sp, 440]
	adrp	x0, sa
	add	x0, x0, :lo12:sa
	ldr	w1, [x0]
	adrp	x0, a
	add	x0, x0, :lo12:a
	ldrsw	x2, [sp, 436]
	ldr	w0, [x0, x2, lsl 2]
	sub	w1, w1, w0
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldrsw	x2, [sp, 432]
	ldr	w0, [x0, x2, lsl 2]
	add	w1, w1, w0
	adrp	x0, sa
	add	x0, x0, :lo12:sa
	str	w1, [x0]
	adrp	x0, sb
	add	x0, x0, :lo12:sb
	ldr	w1, [x0]
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldrsw	x2, [sp, 432]
	ldr	w0, [x0, x2, lsl 2]
	sub	w1, w1, w0
	adrp	x0, a
	add	x0, x0, :lo12:a
	ldrsw	x2, [sp, 436]
	ldr	w0, [x0, x2, lsl 2]
	add	w1, w1, w0
	adrp	x0, sb
	add	x0, x0, :lo12:sb
	str	w1, [x0]
	adrp	x0, a
	add	x0, x0, :lo12:a
	ldrsw	x1, [sp, 436]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 428]
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldrsw	x1, [sp, 432]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, a
	add	x0, x0, :lo12:a
	ldrsw	x1, [sp, 436]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldrsw	x1, [sp, 432]
	ldr	w2, [sp, 428]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 440]
	cmp	w0, 0
	beq	.L14
	ldr	w0, [sp, 444]
	add	w0, w0, 1
	str	w0, [sp, 444]
	ldr	w1, [sp, 444]
	mov	w0, 34463
	movk	w0, 0x1, lsl 16
	cmp	w1, w0
	ble	.L11
	b	.L10
	nop
	adrp	x0, sa
	add	x0, x0, :lo12:sa
	ldr	w1, [x0]
	adrp	x0, sb
	add	x0, x0, :lo12:sb
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L12
	adrp	x0, sb
	add	x0, x0, :lo12:sb
	ldr	w0, [x0]
	str	w0, [sp, 428]
	adrp	x0, sa
	add	x0, x0, :lo12:sa
	ldr	w1, [x0]
	adrp	x0, sb
	add	x0, x0, :lo12:sb
	str	w1, [x0]
	adrp	x0, sa
	add	x0, x0, :lo12:sa
	ldr	w1, [sp, 428]
	str	w1, [x0]
	adrp	x0, sa
	add	x0, x0, :lo12:sa
	ldr	w1, [x0]
	adrp	x0, sb
	add	x0, x0, :lo12:sb
	ldr	w0, [x0]
	mov	w2, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 448
	ret
cmp:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 28]
	ldr	x0, [sp]
	ldr	w0, [x0]
	str	w0, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L16
	mov	w0, 1
	b	.L17
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L18
	mov	w0, -1
	b	.L17
	mov	w0, 0
	add	sp, sp, 32
	ret
Ab:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	ble	.L20
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	sub	w0, w1, w0
	b	.L21
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 12]
	sub	w0, w1, w0
	add	sp, sp, 16
	ret