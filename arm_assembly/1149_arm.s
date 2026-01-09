n:
p:
r:
main:
	sub	sp, sp, #4048
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 16
	mov	x1, 2002
	mov	x2, x1
	mov	w1, 0
	bl	memset
	add	x1, sp, 4036
	adrp	x0, n
	add	x2, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, n
	add	x0, x0, :lo12:n
	str	w1, [x0]
	mov	w0, 1
	str	w0, [sp, 4044]
	b	.L2
	add	x1, sp, 2024
	ldrsw	x0, [sp, 4044]
	lsl	x0, x0, 1
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 4044]
	add	w0, w0, 1
	str	w0, [sp, 4044]
	ldr	w0, [sp, 4036]
	ldr	w1, [sp, 4044]
	cmp	w1, w0
	ble	.L3
	mov	w0, 1
	str	w0, [sp, 4044]
	b	.L4
	add	x0, sp, 4032
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 4040]
	b	.L5
	add	x0, sp, 4028
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 4028]
	sxtw	x0, w0
	lsl	x0, x0, 1
	add	x1, sp, 16
	ldrsh	w0, [x1, x0]
	cmp	w0, 0
	bne	.L6
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 4044]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 4028]
	sxtw	x1, w1
	lsl	x1, x1, 1
	add	x2, sp, 2024
	ldrsh	w1, [x2, x1]
	add	w2, w0, w1
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 4044]
	str	w2, [x0, x1, lsl 2]
	b	.L7
	ldr	w0, [sp, 4028]
	sxtw	x0, w0
	lsl	x0, x0, 1
	add	x1, sp, 16
	ldrsh	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, p
	add	x2, x0, :lo12:p
	ldrsw	x3, [sp, 4044]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	mov	w1, 10000
	str	w1, [x2, x0, lsl 2]
	ldr	w0, [sp, 4028]
	ldr	w1, [sp, 4044]
	sxth	w2, w1
	sxtw	x0, w0
	lsl	x0, x0, 1
	add	x1, sp, 16
	strh	w2, [x1, x0]
	ldr	w0, [sp, 4040]
	add	w0, w0, 1
	str	w0, [sp, 4040]
	ldr	w0, [sp, 4032]
	ldr	w1, [sp, 4040]
	cmp	w1, w0
	blt	.L8
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x2, w0
	ldrsw	x1, [sp, 4044]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x2, x0
	lsl	x1, x0, 2
	adrp	x0, p
	add	x0, x0, :lo12:p
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 4044]
	add	w0, w0, 1
	str	w0, [sp, 4044]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 4044]
	cmp	w1, w0
	blt	.L9
	bl	bfsnetworkflow
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 4048
	ret
bfsnetworkflow:
	sub	sp, sp, #1280
	stp	x29, x30, [sp]
	mov	x29, sp
	mov	w0, 10000
	str	w0, [sp, 432]
	str	wzr, [sp, 1276]
	b	.L12
	ldrsw	x0, [sp, 1276]
	lsl	x0, x0, 2
	add	x1, sp, 840
	mov	w2, -2
	str	w2, [x1, x0]
	ldr	w0, [sp, 1276]
	add	w0, w0, 1
	str	w0, [sp, 1276]
	ldr	w0, [sp, 1276]
	cmp	w0, 101
	ble	.L13
	mov	w0, -1
	str	w0, [sp, 840]
	str	wzr, [sp, 1268]
	mov	w0, 1
	str	w0, [sp, 1264]
	ldrsw	x0, [sp, 1268]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	wzr, [x1, x0]
	b	.L14
	ldr	w0, [sp, 1268]
	add	w1, w0, 1
	str	w1, [sp, 1268]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	str	w0, [sp, 1256]
	str	wzr, [sp, 1276]
	b	.L15
	ldrsw	x0, [sp, 1276]
	lsl	x0, x0, 2
	add	x1, sp, 840
	ldr	w0, [x1, x0]
	cmn	w0, #2
	bne	.L16
	adrp	x0, p
	add	x2, x0, :lo12:p
	ldrsw	x3, [sp, 1276]
	ldrsw	x1, [sp, 1256]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, r
	add	x3, x0, :lo12:r
	ldrsw	x4, [sp, 1276]
	ldrsw	x1, [sp, 1256]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	sub	w0, w2, w0
	str	w0, [sp, 1252]
	ldr	w0, [sp, 1252]
	cmp	w0, 0
	beq	.L16
	ldrsw	x0, [sp, 1276]
	lsl	x0, x0, 2
	add	x1, sp, 840
	ldr	w2, [sp, 1256]
	str	w2, [x1, x0]
	ldr	w0, [sp, 1264]
	add	w1, w0, 1
	str	w1, [sp, 1264]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [sp, 1276]
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 1256]
	lsl	x0, x0, 2
	add	x1, sp, 432
	ldr	w0, [x1, x0]
	ldr	w2, [sp, 1252]
	ldr	w1, [sp, 1252]
	cmp	w2, w0
	csel	w2, w1, w0, le
	ldrsw	x0, [sp, 1276]
	lsl	x0, x0, 2
	add	x1, sp, 432
	str	w2, [x1, x0]
	ldr	w0, [sp, 1276]
	add	w0, w0, 1
	str	w0, [sp, 1276]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 1276]
	cmp	w1, w0
	ble	.L17
	ldr	w1, [sp, 1268]
	ldr	w0, [sp, 1264]
	cmp	w1, w0
	bge	.L18
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 840
	ldr	w0, [x1, x0]
	cmn	w0, #2
	beq	.L19
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 840
	ldr	w0, [x1, x0]
	cmn	w0, #2
	beq	.L28
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 840
	ldr	w0, [x1, x0]
	str	w0, [sp, 1276]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	str	w0, [sp, 1272]
	b	.L22
	adrp	x0, r
	add	x2, x0, :lo12:r
	ldrsw	x3, [sp, 1272]
	ldrsw	x1, [sp, 1276]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	w1, [x2, x0, lsl 2]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 432
	ldr	w0, [x2, x0]
	add	w3, w1, w0
	adrp	x0, r
	add	x2, x0, :lo12:r
	ldrsw	x4, [sp, 1272]
	ldrsw	x1, [sp, 1276]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	adrp	x0, r
	add	x2, x0, :lo12:r
	ldrsw	x3, [sp, 1272]
	ldrsw	x1, [sp, 1276]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	neg	w3, w0
	adrp	x0, r
	add	x2, x0, :lo12:r
	ldrsw	x4, [sp, 1276]
	ldrsw	x1, [sp, 1272]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 1276]
	str	w0, [sp, 1272]
	ldrsw	x0, [sp, 1276]
	lsl	x0, x0, 2
	add	x1, sp, 840
	ldr	w0, [x1, x0]
	str	w0, [sp, 1276]
	ldr	w0, [sp, 1276]
	cmn	w0, #1
	bne	.L23
	b	.L24
	nop
	str	wzr, [sp, 1276]
	str	wzr, [sp, 1260]
	b	.L25
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, r
	add	x2, x0, :lo12:r
	sxtw	x3, w1
	ldrsw	x1, [sp, 1276]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	ldr	w1, [sp, 1260]
	add	w0, w1, w0
	str	w0, [sp, 1260]
	ldr	w0, [sp, 1276]
	add	w0, w0, 1
	str	w0, [sp, 1276]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 1276]
	cmp	w1, w0
	blt	.L26
	ldr	w1, [sp, 1260]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	nop
	ldp	x29, x30, [sp]
	add	sp, sp, 1280
	ret