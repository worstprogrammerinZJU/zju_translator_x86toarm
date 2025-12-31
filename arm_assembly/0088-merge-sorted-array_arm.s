	.arch armv8-a
	.file	"0088-merge-sorted-array.c"
	.text
	.align	2
	.global	merge
	.type	merge, %function
merge:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	w2, [sp, 16]
	str	x3, [sp, 8]
	str	w4, [sp, 4]
	str	w5, [sp]
	ldr	w0, [sp, 16]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	ldr	w0, [sp]
	sub	w0, w0, #1
	str	w0, [sp, 40]
	b	.L2
.L7:
	ldr	w0, [sp, 40]
	cmp	w0, 0
	blt	.L8
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bge	.L5
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	str	w0, [sp, 40]
	b	.L2
.L5:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L6
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldr	w2, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w2, w0
	sxtw	x0, w0
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	b	.L2
.L6:
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w2, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w2, w0
	sxtw	x0, w0
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	str	w0, [sp, 40]
.L2:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bge	.L7
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bge	.L7
	b	.L1
.L8:
	nop
.L1:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	merge, .-merge
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
