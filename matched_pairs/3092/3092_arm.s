power2:
power3:
mod:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	wzr, [sp, 28]
	adrp	x0, power2
	add	x0, x0, :lo12:power2
	mov	w1, 1
	str	w1, [x0]
	b	.L2
	ldr	w0, [sp, 12]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 12]
	adrp	x0, power2
	add	x0, x0, :lo12:power2
	ldr	w0, [x0]
	lsl	w1, w0, 1
	adrp	x0, power2
	add	x0, x0, :lo12:power2
	str	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 12]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L3
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	ret
term:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	adrp	x0, power3
	add	x0, x0, :lo12:power3
	mov	w1, 1
	str	w1, [x0]
	str	wzr, [sp, 28]
	b	.L6
	adrp	x0, power3
	add	x0, x0, :lo12:power3
	ldr	w1, [x0]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w1, w0, w1
	adrp	x0, power3
	add	x0, x0, :lo12:power3
	str	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, power2
	add	x0, x0, :lo12:power2
	ldr	w1, [x0]
	adrp	x0, power3
	add	x0, x0, :lo12:power3
	ldr	w0, [x0]
	mul	w0, w1, w0
	ldr	w1, [sp, 12]
	cmp	w1, w0
	bcs	.L7
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	str	w0, [sp, 28]
	adrp	x0, power3
	add	x0, x0, :lo12:power3
	ldr	w1, [x0]
	mov	w0, 43691
	movk	w0, 0xaaaa, lsl 16
	umull	x0, w1, w0
	lsr	x0, x0, 32
	lsr	w1, w0, 1
	adrp	x0, power3
	add	x0, x0, :lo12:power3
	str	w1, [x0]
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	ret
main:
	sub	sp, sp, #848
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 832
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 844]
	b	.L10
	add	x0, sp, 828
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 840]
	b	.L11
	ldr	w0, [sp, 828]
	bl	mod
	mov	w2, w0
	ldrsw	x0, [sp, 840]
	lsl	x0, x0, 2
	add	x1, sp, 424
	str	w2, [x1, x0]
	ldr	w0, [sp, 828]
	bl	term
	mov	w2, w0
	ldrsw	x0, [sp, 840]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	ldr	w0, [sp, 840]
	add	w0, w0, 1
	str	w0, [sp, 840]
	ldr	w1, [sp, 828]
	adrp	x0, power2
	add	x0, x0, :lo12:power2
	ldr	w2, [x0]
	adrp	x0, power3
	add	x0, x0, :lo12:power3
	ldr	w0, [x0]
	mul	w0, w2, w0
	sub	w0, w1, w0
	str	w0, [sp, 828]
	ldr	w0, [sp, 828]
	cmp	w0, 0
	bne	.L12
	ldr	w2, [sp, 840]
	ldr	w1, [sp, 844]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	str	wzr, [sp, 836]
	b	.L13
	ldrsw	x0, [sp, 836]
	lsl	x0, x0, 2
	add	x1, sp, 424
	ldr	w3, [x1, x0]
	ldrsw	x0, [sp, 836]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	mov	w2, w0
	mov	w1, w3
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 836]
	add	w0, w0, 1
	str	w0, [sp, 836]
	ldr	w1, [sp, 836]
	ldr	w0, [sp, 840]
	cmp	w1, w0
	blt	.L14
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	ldr	w0, [sp, 844]
	add	w0, w0, 1
	str	w0, [sp, 844]
	ldr	w0, [sp, 832]
	ldr	w1, [sp, 844]
	cmp	w1, w0
	ble	.L15
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 848
	ret