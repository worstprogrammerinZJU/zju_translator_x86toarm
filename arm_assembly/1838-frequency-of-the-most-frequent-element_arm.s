	.arch armv8-a
	.file	"1838-frequency-of-the-most-frequent-element.c"
	.text
	.align	2
	.global	greater
	.type	greater, %function
greater:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	greater, .-greater
	.align	2
	.global	maxFrequency
	.type	maxFrequency, %function
maxFrequency:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	w2, [sp, 16]
	str	xzr, [sp, 32]
	adrp	x0, greater
	add	x3, x0, :lo12:greater
	mov	x2, 4
	ldr	w1, [sp, 20]
	ldr	x0, [sp, 24]
	bl	qsort
	str	wzr, [sp, 40]
	str	wzr, [sp, 44]
	b	.L4
.L6:
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	str	x0, [sp, 32]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	add	w0, w0, 1
	sxtw	x1, w0
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	mul	x1, x1, x0
	ldr	x0, [sp, 32]
	sub	x1, x1, x0
	ldrsw	x0, [sp, 16]
	cmp	x1, x0
	ble	.L5
	ldr	w0, [sp, 44]
	add	w1, w0, 1
	str	w1, [sp, 44]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	ldr	x1, [sp, 32]
	sub	x0, x1, x0
	str	x0, [sp, 32]
.L5:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L4:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L6
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	maxFrequency, .-maxFrequency
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
