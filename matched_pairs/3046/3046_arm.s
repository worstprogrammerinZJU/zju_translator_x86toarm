family:
coefficient:
temp:
T:
A:
S:
B:
Q:
multiply:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	wzr, [sp, 28]
	b	.L2
	adrp	x0, coefficient
	add	x0, x0, :lo12:coefficient
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, temp
	add	x0, x0, :lo12:temp
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L3
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L4
	str	wzr, [sp, 24]
	b	.L5
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	add	w1, w1, w0
	adrp	x0, temp
	add	x0, x0, :lo12:temp
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, coefficient
	add	x0, x0, :lo12:coefficient
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	ldr	w3, [sp, 24]
	ldr	w2, [sp, 28]
	add	w3, w3, w2
	add	w2, w1, w0
	adrp	x0, temp
	add	x0, x0, :lo12:temp
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	ble	.L6
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, family
	add	x0, x0, :lo12:family
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L7
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldr	w1, [x0]
	adrp	x0, B
	add	x0, x0, :lo12:B
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L8
	adrp	x0, family
	add	x0, x0, :lo12:family
	ldrsw	x1, [sp, 12]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	str	w1, [x0]
	b	.L9
	adrp	x0, B
	add	x0, x0, :lo12:B
	ldr	w1, [x0]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	str	w1, [x0]
	str	wzr, [sp, 28]
	b	.L10
	adrp	x0, temp
	add	x0, x0, :lo12:temp
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, 56963
	movk	w0, 0x431b, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 18
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 16960
	movk	w2, 0xf, lsl 16
	mul	w0, w0, w2
	sub	w0, w1, w0
	adrp	x1, coefficient
	add	x1, x1, :lo12:coefficient
	ldrsw	x2, [sp, 28]
	str	w0, [x1, x2, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L11
	nop
	nop
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, B
	add	x4, x0, :lo12:B
	adrp	x0, S
	add	x3, x0, :lo12:S
	adrp	x0, A
	add	x2, x0, :lo12:A
	adrp	x0, T
	add	x1, x0, :lo12:T
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L13
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w3, [sp, 24]
	adrp	x0, family
	add	x0, x0, :lo12:family
	sxtw	x1, w3
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, family
	add	x0, x0, :lo12:family
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, A
	add	x0, x0, :lo12:A
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L14
	adrp	x0, family
	add	x0, x0, :lo12:family
	ldr	w1, [x0, 4]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	str	w1, [x0]
	str	wzr, [sp, 28]
	b	.L15
	adrp	x0, coefficient
	add	x0, x0, :lo12:coefficient
	ldrsw	x1, [sp, 28]
	mov	w2, 1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L16
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L17
	ldr	w0, [sp, 28]
	bl	multiply
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, T
	add	x0, x0, :lo12:T
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L18
	adrp	x0, S
	add	x0, x0, :lo12:S
	ldr	w0, [x0]
	str	w0, [sp, 28]
	str	wzr, [sp, 24]
	b	.L19
	adrp	x0, coefficient
	add	x0, x0, :lo12:coefficient
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w1, [sp, 24]
	mov	w0, 56963
	movk	w0, 0x431b, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 18
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 16960
	movk	w2, 0xf, lsl 16
	mul	w0, w0, w2
	sub	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, B
	add	x0, x0, :lo12:B
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L20
	ldr	w0, [sp, 24]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret