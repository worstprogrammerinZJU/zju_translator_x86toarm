maze:
visit:
_Z3dfsii:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 3
	bgt	.L2
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, maze
	add	x2, x0, :lo12:maze
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	bne	.L2
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, visit
	add	x2, x0, :lo12:visit
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	beq	.L3
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, visit
	add	x2, x0, :lo12:visit
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, visit
	add	x3, x0, :lo12:visit
	ldrsw	x4, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	add	w0, w0, 1
	cmp	w2, w0
	ble	.L2
	adrp	x0, visit
	add	x2, x0, :lo12:visit
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	ldr	w1, [sp, 28]
	add	w1, w1, 1
	add	w3, w0, 1
	adrp	x0, visit
	add	x2, x0, :lo12:visit
	ldrsw	x4, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	ldr	w1, [sp, 24]
	bl	_Z3dfsii
	ldr	w0, [sp, 24]
	cmp	w0, 3
	bgt	.L4
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, maze
	add	x2, x0, :lo12:maze
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	bne	.L4
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, visit
	add	x2, x0, :lo12:visit
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	beq	.L5
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, visit
	add	x2, x0, :lo12:visit
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, visit
	add	x3, x0, :lo12:visit
	ldrsw	x4, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	add	w0, w0, 1
	cmp	w2, w0
	ble	.L4
	adrp	x0, visit
	add	x2, x0, :lo12:visit
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	ldr	w1, [sp, 24]
	add	w1, w1, 1
	add	w3, w0, 1
	adrp	x0, visit
	add	x2, x0, :lo12:visit
	sxtw	x4, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	_Z3dfsii
	ldr	w0, [sp, 28]
	cmp	w0, 0
	ble	.L6
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, maze
	add	x2, x0, :lo12:maze
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, visit
	add	x2, x0, :lo12:visit
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	beq	.L7
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, visit
	add	x2, x0, :lo12:visit
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, visit
	add	x3, x0, :lo12:visit
	ldrsw	x4, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	add	w0, w0, 1
	cmp	w2, w0
	ble	.L6
	adrp	x0, visit
	add	x2, x0, :lo12:visit
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	ldr	w1, [sp, 28]
	sub	w1, w1, #1
	add	w3, w0, 1
	adrp	x0, visit
	add	x2, x0, :lo12:visit
	ldrsw	x4, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	ldr	w1, [sp, 24]
	bl	_Z3dfsii
	ldr	w0, [sp, 24]
	cmp	w0, 0
	ble	.L10
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	adrp	x0, maze
	add	x2, x0, :lo12:maze
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	bne	.L10
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	adrp	x0, visit
	add	x2, x0, :lo12:visit
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	beq	.L9
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	adrp	x0, visit
	add	x2, x0, :lo12:visit
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, visit
	add	x3, x0, :lo12:visit
	ldrsw	x4, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	add	w0, w0, 1
	cmp	w2, w0
	ble	.L10
	adrp	x0, visit
	add	x2, x0, :lo12:visit
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	ldr	w1, [sp, 24]
	sub	w1, w1, #1
	add	w3, w0, 1
	adrp	x0, visit
	add	x2, x0, :lo12:visit
	sxtw	x4, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	_Z3dfsii
	nop
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -240]!
	mov	x29, sp
	add	x0, sp, 24
	movi	v0.4s, 0
	stp	q0, q0, [x0]
	stp	q0, q0, [x0, 32]
	stp	q0, q0, [x0, 64]
	stp	q0, q0, [x0, 96]
	stp	q0, q0, [x0, 128]
	stp	q0, q0, [x0, 160]
	fmov	x1, d0
	str	x1, [x0, 192]
	str	wzr, [sp, 236]
	b	.L12
	str	wzr, [sp, 232]
	b	.L13
	ldrsw	x2, [sp, 232]
	ldrsw	x1, [sp, 236]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x2, x0
	lsl	x1, x0, 2
	adrp	x0, maze
	add	x0, x0, :lo12:maze
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 232]
	add	w0, w0, 1
	str	w0, [sp, 232]
	ldr	w0, [sp, 232]
	cmp	w0, 4
	ble	.L14
	ldr	w0, [sp, 236]
	add	w0, w0, 1
	str	w0, [sp, 236]
	ldr	w0, [sp, 236]
	cmp	w0, 4
	ble	.L15
	adrp	x0, visit
	add	x0, x0, :lo12:visit
	mov	w1, 1
	str	w1, [x0]
	mov	w1, 0
	mov	w0, 0
	bl	_Z3dfsii
	mov	w0, 4
	str	w0, [sp, 236]
	mov	w0, 4
	str	w0, [sp, 232]
	str	wzr, [sp, 228]
	b	.L16
	ldrsw	x0, [sp, 228]
	lsl	x0, x0, 3
	add	x1, sp, 24
	ldr	w2, [sp, 236]
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 228]
	lsl	x0, x0, 3
	add	x1, sp, 28
	ldr	w2, [sp, 232]
	str	w2, [x1, x0]
	ldr	w0, [sp, 236]
	cmp	w0, 3
	bgt	.L17
	ldr	w0, [sp, 236]
	add	w1, w0, 1
	adrp	x0, visit
	add	x2, x0, :lo12:visit
	ldrsw	x3, [sp, 232]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, visit
	add	x3, x0, :lo12:visit
	ldrsw	x4, [sp, 232]
	ldrsw	x1, [sp, 236]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	sub	w0, w0, #1
	cmp	w2, w0
	bne	.L17
	ldr	w0, [sp, 236]
	add	w0, w0, 1
	str	w0, [sp, 236]
	b	.L18
	ldr	w0, [sp, 232]
	cmp	w0, 3
	bgt	.L19
	ldr	w0, [sp, 232]
	add	w1, w0, 1
	adrp	x0, visit
	add	x2, x0, :lo12:visit
	sxtw	x3, w1
	ldrsw	x1, [sp, 236]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, visit
	add	x3, x0, :lo12:visit
	ldrsw	x4, [sp, 232]
	ldrsw	x1, [sp, 236]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	sub	w0, w0, #1
	cmp	w2, w0
	bne	.L19
	ldr	w0, [sp, 232]
	add	w0, w0, 1
	str	w0, [sp, 232]
	b	.L18
	ldr	w0, [sp, 236]
	cmp	w0, 0
	ble	.L20
	ldr	w0, [sp, 236]
	sub	w1, w0, #1
	adrp	x0, visit
	add	x2, x0, :lo12:visit
	ldrsw	x3, [sp, 232]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, visit
	add	x3, x0, :lo12:visit
	ldrsw	x4, [sp, 232]
	ldrsw	x1, [sp, 236]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	sub	w0, w0, #1
	cmp	w2, w0
	bne	.L20
	ldr	w0, [sp, 236]
	sub	w0, w0, #1
	str	w0, [sp, 236]
	b	.L18
	ldr	w0, [sp, 232]
	cmp	w0, 0
	ble	.L18
	ldr	w0, [sp, 232]
	sub	w1, w0, #1
	adrp	x0, visit
	add	x2, x0, :lo12:visit
	sxtw	x3, w1
	ldrsw	x1, [sp, 236]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, visit
	add	x3, x0, :lo12:visit
	ldrsw	x4, [sp, 232]
	ldrsw	x1, [sp, 236]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	sub	w0, w0, #1
	cmp	w2, w0
	bne	.L18
	ldr	w0, [sp, 232]
	sub	w0, w0, #1
	str	w0, [sp, 232]
	ldr	w0, [sp, 228]
	add	w0, w0, 1
	str	w0, [sp, 228]
	ldr	w0, [sp, 236]
	cmp	w0, 0
	bne	.L21
	ldr	w0, [sp, 232]
	cmp	w0, 0
	bne	.L21
	ldrsw	x0, [sp, 228]
	lsl	x0, x0, 3
	add	x1, sp, 24
	str	wzr, [x1, x0]
	ldrsw	x0, [sp, 228]
	lsl	x0, x0, 3
	add	x1, sp, 28
	str	wzr, [x1, x0]
	ldr	w0, [sp, 228]
	str	w0, [sp, 236]
	b	.L22
	ldrsw	x0, [sp, 236]
	lsl	x0, x0, 3
	add	x1, sp, 24
	ldr	w3, [x1, x0]
	ldrsw	x0, [sp, 236]
	lsl	x0, x0, 3
	add	x1, sp, 28
	ldr	w0, [x1, x0]
	mov	w2, w0
	mov	w1, w3
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 236]
	sub	w0, w0, #1
	str	w0, [sp, 236]
	ldr	w0, [sp, 236]
	cmp	w0, 0
	bge	.L23
	mov	w0, 0
	ldp	x29, x30, [sp], 240
	ret