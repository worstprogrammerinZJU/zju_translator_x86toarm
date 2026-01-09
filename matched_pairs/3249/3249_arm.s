G:
dp:
weight:
queue:
source:
n:
m:
front:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	b	.L2
	mov	x2, 34465
	movk	x2, 0x1, lsl 16
	mov	w1, 0
	adrp	x0, source
	add	x0, x0, :lo12:source
	bl	memset
	mov	x2, 13576
	movk	x2, 0xc, lsl 16
	mov	w1, 0
	adrp	x0, G
	add	x0, x0, :lo12:G
	bl	memset
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L3
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 2
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x1, [sp, 28]
	mov	w2, 35584
	movk	w2, 0x82d4, lsl 16
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L4
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	bl	_Z7ADJLISTi
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, front
	add	x0, x0, :lo12:front
	str	w1, [x0]
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L5
	adrp	x0, source
	add	x1, x0, :lo12:source
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 28]
	bl	_Z3DFSi
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L7
	bl	_Z2DPv
	mov	w0, 1
	str	w0, [sp, 28]
	mov	w0, 35584
	movk	w0, 0x82d4, lsl 16
	str	w0, [sp, 24]
	b	.L8
	adrp	x0, G
	add	x0, x0, :lo12:G
	ldrsw	x1, [sp, 28]
	ldr	x0, [x0, x1, lsl 3]
	cmp	x0, 0
	bne	.L9
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bge	.L9
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L10
	ldr	w1, [sp, 24]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	adrp	x0, m
	add	x2, x0, :lo12:m
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	cmn	w0, #1
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
_Z7ADJLISTi:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	wzr, [sp, 60]
	b	.L14
	add	x1, sp, 40
	add	x0, sp, 44
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 48]
	ldr	w1, [sp, 40]
	ldr	x0, [sp, 48]
	str	w1, [x0]
	ldr	w1, [sp, 44]
	adrp	x0, G
	add	x0, x0, :lo12:G
	sxtw	x1, w1
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [sp, 48]
	str	x1, [x0, 8]
	ldr	w1, [sp, 44]
	adrp	x0, G
	add	x0, x0, :lo12:G
	sxtw	x1, w1
	ldr	x2, [sp, 48]
	str	x2, [x0, x1, lsl 3]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L15
	nop
	nop
	ldp	x29, x30, [sp], 64
	ret
_Z3DFSi:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, G
	add	x0, x0, :lo12:G
	ldrsw	x1, [sp, 28]
	ldr	x0, [x0, x1, lsl 3]
	str	x0, [sp, 40]
	b	.L17
	ldr	x0, [sp, 40]
	ldr	w2, [x0]
	adrp	x0, source
	add	x1, x0, :lo12:source
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L18
	ldr	x0, [sp, 40]
	ldr	w0, [x0]
	bl	_Z3DFSi
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L19
	ldr	w2, [sp, 28]
	adrp	x0, front
	add	x0, x0, :lo12:front
	ldr	w0, [x0]
	sub	w3, w0, #1
	adrp	x1, front
	add	x1, x1, :lo12:front
	str	w3, [x1]
	adrp	x1, queue
	add	x1, x1, :lo12:queue
	sxtw	x0, w0
	str	w2, [x1, x0, lsl 2]
	adrp	x0, source
	add	x1, x0, :lo12:source
	ldrsw	x0, [sp, 28]
	mov	w2, 1
	strb	w2, [x1, x0]
	nop
	ldp	x29, x30, [sp], 48
	ret
_Z2DPv:
	sub	sp, sp, #32
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L21
	adrp	x0, queue
	add	x0, x0, :lo12:queue
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 12]
	adrp	x0, G
	add	x0, x0, :lo12:G
	ldrsw	x1, [sp, 12]
	ldr	x0, [x0, x1, lsl 3]
	str	x0, [sp, 16]
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x1, [sp, 12]
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, 35584
	movk	w0, 0x82d4, lsl 16
	cmp	w1, w0
	bne	.L23
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	ldrsw	x1, [sp, 12]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x1, [sp, 12]
	str	w2, [x0, x1, lsl 2]
	b	.L23
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	str	w0, [sp, 8]
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x1, [sp, 12]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	ldrsw	x2, [sp, 8]
	ldr	w0, [x0, x2, lsl 2]
	add	w1, w1, w0
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x2, [sp, 8]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	ble	.L24
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x1, [sp, 12]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	ldrsw	x2, [sp, 8]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x1, [sp, 8]
	str	w2, [x0, x1, lsl 2]
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 8]
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L25
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L26
	nop
	nop
	add	sp, sp, 32
	ret