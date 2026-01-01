	.arch armv8-a
	.file	"0518-coin-change-ii.c"
	.text
	.align	2
	.global	change
	.type	change, %function
change:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	str	w2, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L2
	ldr	w0, [sp, 28]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	b	.L3
.L2:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	sxtw	x0, w0
	mov	x1, 4
	bl	calloc
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	mov	w1, 1
	str	w1, [x0]
	str	wzr, [sp, 60]
	b	.L4
.L7:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 56]
	b	.L5
.L6:
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 56]
	sub	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x3, [sp, 48]
	add	x0, x3, x0
	add	w1, w2, w1
	str	w1, [x0]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L5:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L6
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L4:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	blt	.L7
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 44]
	ldr	x0, [sp, 48]
	bl	free
	ldr	w0, [sp, 44]
.L3:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	change, .-change
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
