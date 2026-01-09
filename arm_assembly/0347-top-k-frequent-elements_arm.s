compareHeap:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0, 4]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 4]
	sub	w0, w1, w0
	add	sp, sp, 16
	ret
topKFrequent:
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	mov	x12, 14544
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	w2, [sp, 32]
	str	x3, [sp, 24]
	add	x0, sp, 48
	mov	x1, 14468
	movk	x1, 0x1, lsl 16
	mov	x2, x1
	mov	w1, 0
	bl	memset
	add	x0, sp, 65536
	str	wzr, [x0, 14536]
	add	x0, sp, 65536
	str	wzr, [x0, 14540]
	b	.L4
	add	x0, sp, 65536
	ldrsw	x0, [x0, 14540]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [x0]
	mov	w0, 10000
	add	w3, w1, w0
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 48
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 48
	str	w2, [x1, x0]
	add	x0, sp, 65536
	ldrsw	x0, [x0, 14540]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [x0]
	mov	w0, 10000
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 48
	ldr	w0, [x1, x0]
	cmp	w0, 0
	beq	.L5
	add	x0, sp, 65536
	ldr	w0, [x0, 14536]
	add	w0, w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 14536]
	add	x0, sp, 65536
	ldr	w0, [x0, 14540]
	add	w0, w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 14540]
	add	x0, sp, 65536
	ldr	w1, [x0, 14540]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L6
	add	x0, sp, 65536
	ldrsw	x0, [x0, 14536]
	lsl	x0, x0, 3
	bl	malloc
	sxtw	x0, w0
	add	x1, sp, 65536
	str	x0, [x1, 14528]
	add	x0, sp, 65536
	ldrsw	x0, [x0, 14536]
	lsl	x0, x0, 3
	mov	x2, x0
	mov	w1, 0
	add	x0, sp, 65536
	ldr	x0, [x0, 14528]
	bl	memset
	add	x0, sp, 65536
	str	wzr, [x0, 14536]
	add	x0, sp, 65536
	str	wzr, [x0, 14540]
	b	.L7
	add	x0, sp, 65536
	ldrsw	x0, [x0, 14540]
	lsl	x0, x0, 2
	add	x1, sp, 48
	ldr	w0, [x1, x0]
	cmp	w0, 0
	ble	.L8
	add	x0, sp, 65536
	ldrsw	x0, [x0, 14536]
	lsl	x0, x0, 3
	add	x1, sp, 65536
	ldr	x1, [x1, 14528]
	add	x0, x1, x0
	add	x1, sp, 65536
	ldr	w2, [x1, 14540]
	mov	w1, -10000
	add	w1, w2, w1
	str	w1, [x0]
	add	x0, sp, 65536
	ldrsw	x0, [x0, 14536]
	lsl	x0, x0, 3
	add	x1, sp, 65536
	ldr	x1, [x1, 14528]
	add	x0, x1, x0
	add	x1, sp, 65536
	ldrsw	x1, [x1, 14540]
	lsl	x1, x1, 2
	add	x2, sp, 48
	ldr	w1, [x2, x1]
	str	w1, [x0, 4]
	add	x0, sp, 65536
	ldr	w0, [x0, 14536]
	add	w0, w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 14536]
	add	x0, sp, 65536
	ldr	w0, [x0, 14540]
	add	w0, w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 14540]
	add	x0, sp, 65536
	ldr	w1, [x0, 14540]
	mov	w0, 20000
	cmp	w1, w0
	ble	.L9
	adrp	x0, compareHeap
	add	x3, x0, :lo12:compareHeap
	mov	x2, 8
	add	x0, sp, 65536
	ldr	w1, [x0, 14536]
	add	x0, sp, 65536
	ldr	x0, [x0, 14528]
	bl	qsort
	add	x0, sp, 65536
	str	wzr, [x0, 14536]
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 2
	bl	malloc
	sxtw	x0, w0
	add	x1, sp, 65536
	str	x0, [x1, 14520]
	add	x0, sp, 65536
	str	wzr, [x0, 14540]
	b	.L10
	add	x0, sp, 65536
	ldrsw	x0, [x0, 14540]
	lsl	x0, x0, 3
	add	x1, sp, 65536
	ldr	x1, [x1, 14528]
	add	x1, x1, x0
	add	x0, sp, 65536
	ldr	w0, [x0, 14536]
	add	w2, w0, 1
	add	x3, sp, 65536
	str	w2, [x3, 14536]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 65536
	ldr	x2, [x2, 14520]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	add	x0, sp, 65536
	ldr	w0, [x0, 14540]
	add	w0, w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 14540]
	add	x0, sp, 65536
	ldr	w1, [x0, 14540]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L11
	ldr	x0, [sp, 24]
	add	x1, sp, 65536
	ldr	w1, [x1, 14536]
	str	w1, [x0]
	add	x0, sp, 65536
	ldr	x0, [x0, 14520]
	ldp	x29, x30, [sp]
	add	sp, sp, 2256
	add	sp, sp, 77824
	ret