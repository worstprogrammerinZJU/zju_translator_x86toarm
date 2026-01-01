	.arch armv8-a
	.file	"0215-kth-largest-element-in-an-array.c"
	.text
	.align	2
	.global	partition
	.type	partition, %function
partition:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	w2, [sp]
	ldrsw	x0, [sp]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 36]
	ldr	w0, [sp, 4]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	ldr	w0, [sp, 4]
	str	w0, [sp, 40]
	b	.L2
.L4:
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	blt	.L3
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 28]
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [sp, 28]
	str	w1, [x0]
.L3:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L2:
	ldr	w1, [sp, 40]
	ldr	w0, [sp]
	cmp	w1, w0
	blt	.L4
	ldrsw	x0, [sp, 44]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 32]
	ldrsw	x0, [sp]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldrsw	x0, [sp, 44]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [sp, 32]
	str	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	partition, .-partition
	.align	2
	.global	quickSelect
	.type	quickSelect, %function
quickSelect:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	w2, [sp, 32]
	str	w3, [sp, 28]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	bgt	.L7
	ldr	w2, [sp, 32]
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 40]
	bl	partition
	str	w0, [sp, 60]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L8
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	b	.L9
.L8:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L10
	ldr	w0, [sp, 60]
	sub	w0, w0, #1
	ldr	w3, [sp, 28]
	mov	w2, w0
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 40]
	bl	quickSelect
	b	.L9
.L10:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	ldr	w3, [sp, 28]
	ldr	w2, [sp, 32]
	mov	w1, w0
	ldr	x0, [sp, 40]
	bl	quickSelect
	b	.L9
.L7:
	mov	w0, -1
.L9:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	quickSelect, .-quickSelect
	.align	2
	.global	findKthLargest
	.type	findKthLargest, %function
findKthLargest:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	w2, [sp, 16]
	ldr	w0, [sp, 20]
	sub	w2, w0, #1
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	sub	w0, w1, w0
	mov	w3, w0
	mov	w1, 0
	ldr	x0, [sp, 24]
	bl	quickSelect
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	findKthLargest, .-findKthLargest
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
