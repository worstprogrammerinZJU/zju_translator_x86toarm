	.arch armv8-a
	.file	"0347-top-k-frequent-elements.c"
	.text
	.align	2
	.type	compareHeap, %function
compareHeap:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0, 4]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 4]
	sub	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	compareHeap, .-compareHeap
	.align	2
	.global	topKFrequent
	.type	topKFrequent, %function
topKFrequent:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #65536
	.cfi_def_cfa_offset 65536
	str	xzr, [sp, 1024]
	mov	x12, 14544
	sub	sp, sp, x12
	.cfi_def_cfa_offset 80080
	stp	x29, x30, [sp]
	.cfi_offset 29, -80080
	.cfi_offset 30, -80072
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
.L6:
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
.L5:
	add	x0, sp, 65536
	ldr	w0, [x0, 14540]
	add	w0, w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 14540]
.L4:
	add	x0, sp, 65536
	ldr	w1, [x0, 14540]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L6
	add	x0, sp, 65536
	ldrsw	x0, [x0, 14536]
	lsl	x0, x0, 3
	bl	malloc
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
.L9:
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
.L8:
	add	x0, sp, 65536
	ldr	w0, [x0, 14540]
	add	w0, w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 14540]
.L7:
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
	add	x1, sp, 65536
	str	x0, [x1, 14520]
	add	x0, sp, 65536
	str	wzr, [x0, 14540]
	b	.L10
.L11:
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
.L10:
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
	.cfi_restore 29
	.cfi_restore 30
	add	sp, sp, 2256
	.cfi_def_cfa_offset 77824
	add	sp, sp, 77824
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	topKFrequent, .-topKFrequent
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
