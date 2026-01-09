Round:
P:
Q:
R:
n:
m:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	b	.L2
	str	wzr, [sp, 44]
	b	.L3
	add	x2, sp, 28
	add	x1, sp, 27
	add	x0, sp, 32
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldrb	w0, [sp, 27]
	cmp	w0, 60
	bne	.L4
	adrp	x0, Round
	add	x2, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	mov	w1, 2
	str	w1, [x0]
	ldr	w2, [sp, 28]
	adrp	x0, Round
	add	x3, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	str	w2, [x0, 4]
	ldr	w2, [sp, 32]
	adrp	x0, Round
	add	x3, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	str	w2, [x0, 8]
	b	.L5
	ldrb	w0, [sp, 27]
	cmp	w0, 62
	bne	.L6
	adrp	x0, Round
	add	x2, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	mov	w1, 2
	str	w1, [x0]
	ldr	w2, [sp, 32]
	adrp	x0, Round
	add	x3, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	str	w2, [x0, 4]
	ldr	w2, [sp, 28]
	adrp	x0, Round
	add	x3, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	str	w2, [x0, 8]
	b	.L5
	ldrb	w0, [sp, 27]
	cmp	w0, 61
	bne	.L5
	adrp	x0, Round
	add	x2, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	mov	w1, 1
	str	w1, [x0]
	ldr	w2, [sp, 32]
	adrp	x0, Round
	add	x3, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	str	w2, [x0, 4]
	ldr	w2, [sp, 28]
	adrp	x0, Round
	add	x3, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	str	w2, [x0, 8]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L7
	str	wzr, [sp, 40]
	mov	w0, 1
	str	w0, [sp, 44]
	mov	w0, -1
	str	w0, [sp, 36]
	b	.L8
	ldr	w0, [sp, 44]
	bl	Rochambeau
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	cmn	w0, #1
	bne	.L9
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L18
	ldr	w0, [sp, 44]
	str	w0, [sp, 40]
	b	.L11
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bge	.L11
	ldr	w0, [sp, 32]
	str	w0, [sp, 36]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L13
	b	.L12
	nop
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bgt	.L14
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L2
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L15
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L2
	ldr	w0, [sp, 40]
	sub	w1, w0, #1
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	mov	w2, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	adrp	x0, m
	add	x2, x0, :lo12:m
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L16
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
Rochambeau:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	wzr, [sp, 44]
	b	.L20
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 44]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 44]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 44]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L21
	str	wzr, [sp, 44]
	b	.L22
	adrp	x0, Round
	add	x2, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 4]
	str	w0, [sp, 40]
	adrp	x0, Round
	add	x2, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 8]
	str	w0, [sp, 36]
	adrp	x0, Round
	add	x2, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0]
	str	w0, [sp, 32]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	beq	.L43
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	beq	.L43
	ldr	w0, [sp, 40]
	bl	root
	str	w0, [sp, 40]
	ldr	w0, [sp, 36]
	bl	root
	str	w0, [sp, 36]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L26
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	bl	root
	mov	w2, w0
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 40]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L27
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	bl	root
	mov	w2, w0
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 40]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L28
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	bl	root
	mov	w2, w0
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 36]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L29
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	bl	root
	mov	w2, w0
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 36]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 32]
	cmp	w0, 1
	bne	.L30
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	beq	.L31
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bne	.L32
	ldr	w0, [sp, 44]
	b	.L33
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 40]
	bl	merge
	b	.L25
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	beq	.L34
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bne	.L35
	ldr	w0, [sp, 44]
	b	.L33
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L36
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 40]
	ldr	w2, [sp, 36]
	str	w2, [x0, x1, lsl 2]
	b	.L37
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	ldr	w0, [sp, 36]
	bl	merge
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L38
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 36]
	ldr	w2, [sp, 40]
	str	w2, [x0, x1, lsl 2]
	b	.L39
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	ldr	w0, [sp, 40]
	bl	merge
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L40
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L40
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 40]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 36]
	str	w2, [x0, x1, lsl 2]
	b	.L25
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L41
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L41
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 36]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 40]
	str	w2, [x0, x1, lsl 2]
	b	.L25
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L25
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L25
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 40]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	b	.L25
	nop
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L42
	mov	w0, -1
	ldp	x29, x30, [sp], 48
	ret
root:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	b	.L45
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 28]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bgt	.L46
	b	.L47
	ldr	w0, [sp, 12]
	str	w0, [sp, 24]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 12]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L48
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	ret
merge:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	root
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	bl	root
	str	w0, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bne	.L51
	ldr	w0, [sp, 28]
	b	.L52
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L53
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L54
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L54
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 24]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	b	.L55
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L55
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L55
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	mov	w2, w0
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L56
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L56
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 24]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	b	.L57
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L57
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L57
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	mov	w2, w0
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	b	.L52
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x2, [sp, 28]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 28]
	ldr	w2, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L58
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L58
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	b	.L59
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L59
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L59
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	mov	w2, w0
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L60
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L60
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	b	.L61
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L61
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L61
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	mov	w2, w0
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret