Parent:
sen:
tru:
main:
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 96
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	mov	w0, 1
	str	w0, [sp, 124]
	b	.L3
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 124]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 124]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, tru
	add	x0, x0, :lo12:tru
	ldrsw	x1, [sp, 124]
	mov	w2, 1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
	ldr	w0, [sp, 96]
	ldr	w1, [sp, 124]
	cmp	w1, w0
	ble	.L4
	mov	w0, 1
	str	w0, [sp, 124]
	b	.L5
	add	x3, sp, 40
	add	x2, sp, 56
	add	x1, sp, 92
	add	x0, sp, 72
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 124]
	bl	root
	str	w0, [sp, 120]
	ldr	w0, [sp, 92]
	bl	root
	str	w0, [sp, 92]
	ldrb	w0, [sp, 40]
	cmp	w0, 116
	bne	.L6
	ldr	w0, [sp, 92]
	mov	w1, w0
	ldr	w0, [sp, 120]
	bl	merge
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L7
	ldr	w1, [sp, 92]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L7
	ldr	w1, [sp, 92]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	sxtw	x1, w1
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	str	w2, [x0, x1, lsl 2]
	b	.L10
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L9
	ldr	w1, [sp, 92]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L9
	ldr	w3, [sp, 92]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	b	.L10
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L10
	ldr	w1, [sp, 92]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L10
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	ldr	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 92]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	ldr	w0, [x0, x1, lsl 2]
	bl	root
	mov	w2, w0
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	str	w2, [x0, x1, lsl 2]
	ldr	w3, [sp, 92]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	b	.L10
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L11
	ldr	w2, [sp, 92]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	ldr	w0, [sp, 92]
	bl	root
	mov	w2, w0
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	str	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 92]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L12
	ldr	w1, [sp, 92]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	ldr	w0, [sp, 120]
	bl	merge
	ldr	w19, [sp, 92]
	ldr	w0, [sp, 120]
	bl	root
	mov	w2, w0
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	sxtw	x1, w19
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
	ldr	w0, [sp, 96]
	ldr	w1, [sp, 124]
	cmp	w1, w0
	ble	.L13
	mov	w0, 1
	str	w0, [sp, 124]
	b	.L14
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 124]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	blt	.L15
	ldr	w0, [sp, 124]
	bl	root
	str	w0, [sp, 116]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 124]
	ldr	w0, [x0, x1, lsl 2]
	bl	root
	str	w0, [sp, 104]
	ldr	w1, [sp, 116]
	ldr	w0, [sp, 104]
	cmp	w1, w0
	beq	.L34
	mov	w0, 1
	str	w0, [sp, 120]
	str	wzr, [sp, 112]
	str	wzr, [sp, 108]
	b	.L18
	ldr	w0, [sp, 120]
	bl	root
	str	w0, [sp, 100]
	ldr	w1, [sp, 100]
	ldr	w0, [sp, 116]
	cmp	w1, w0
	bne	.L19
	ldr	w0, [sp, 112]
	add	w0, w0, 1
	str	w0, [sp, 112]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	b	.L20
	ldr	w1, [sp, 100]
	ldr	w0, [sp, 104]
	cmp	w1, w0
	bne	.L20
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
	ldr	w0, [sp, 96]
	ldr	w1, [sp, 120]
	cmp	w1, w0
	ble	.L21
	ldr	w1, [sp, 112]
	ldr	w0, [sp, 108]
	cmp	w1, w0
	ble	.L22
	ldr	w0, [sp, 104]
	str	w0, [sp, 116]
	mov	w0, 1
	str	w0, [sp, 120]
	b	.L23
	ldr	w0, [sp, 120]
	bl	root
	mov	w1, w0
	ldr	w0, [sp, 116]
	cmp	w0, w1
	bne	.L24
	adrp	x0, tru
	add	x0, x0, :lo12:tru
	ldrsw	x1, [sp, 120]
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
	ldr	w0, [sp, 96]
	ldr	w1, [sp, 120]
	cmp	w1, w0
	ble	.L25
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
	ldr	w0, [sp, 96]
	ldr	w1, [sp, 124]
	cmp	w1, w0
	ble	.L26
	b	.L17
	nop
	ldr	w0, [sp, 96]
	ldr	w1, [sp, 124]
	cmp	w1, w0
	bgt	.L27
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L28
	mov	w0, 1
	str	w0, [sp, 124]
	str	wzr, [sp, 112]
	b	.L29
	adrp	x0, tru
	add	x0, x0, :lo12:tru
	ldrsw	x1, [sp, 124]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 1
	bne	.L30
	ldr	w0, [sp, 112]
	add	w0, w0, 1
	str	w0, [sp, 112]
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
	ldr	w0, [sp, 96]
	ldr	w1, [sp, 124]
	cmp	w1, w0
	ble	.L31
	ldr	w1, [sp, 112]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	add	x0, sp, 96
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 96]
	cmp	w0, 0
	bne	.L32
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
root:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	b	.L36
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 28]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bgt	.L37
	b	.L38
	ldr	w0, [sp, 12]
	str	w0, [sp, 24]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 12]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L39
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
	beq	.L45
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L44
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	b	.L41
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x2, [sp, 28]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w2, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	b	.L41
	nop
	ldp	x29, x30, [sp], 32
	ret