	.arch armv8-a
	.file	"0033-search-in-rotated-sorted-array.c"
	.text
	.align	2
	.global	findPivotIndex
	.type	findPivotIndex, %function
findPivotIndex:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	wzr, [sp, 28]
	ldr	w0, [sp, 4]
	str	w0, [sp, 24]
	b	.L2
.L7:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 28]
	add	w0, w0, w1
	str	w0, [sp, 20]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L3
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 20]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L3
	ldr	w0, [sp, 20]
	b	.L4
.L3:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	bge	.L5
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L5
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	b	.L4
.L5:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L6
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 28]
	b	.L2
.L6:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	blt	.L2
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 24]
.L2:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L7
	ldr	w0, [sp, 4]
.L4:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	findPivotIndex, .-findPivotIndex
	.align	2
	.global	binarySearch
	.type	binarySearch, %function
binarySearch:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	w2, [sp, 16]
	str	w3, [sp, 12]
	b	.L9
.L13:
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 20]
	sub	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 20]
	add	w0, w0, w1
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	bne	.L10
	ldr	w0, [sp, 44]
	b	.L11
.L10:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	ble	.L12
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 20]
	b	.L9
.L12:
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 16]
.L9:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	ble	.L13
	mov	w0, -1
.L11:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	binarySearch, .-binarySearch
	.align	2
	.global	search
	.type	search, %function
search:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	w2, [sp, 16]
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	ldr	x0, [sp, 24]
	bl	findPivotIndex
	str	w0, [sp, 40]
	ldr	w3, [sp, 16]
	ldr	w2, [sp, 40]
	mov	w1, 0
	ldr	x0, [sp, 24]
	bl	binarySearch
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	cmn	w0, #1
	beq	.L15
	ldr	w0, [sp, 36]
	b	.L16
.L15:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	ldr	w3, [sp, 16]
	ldr	w2, [sp, 44]
	mov	w1, w0
	ldr	x0, [sp, 24]
	bl	binarySearch
.L16:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	search, .-search
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
