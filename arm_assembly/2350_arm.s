	.arch armv8-a
	.file	"2350.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%.3lf%c\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #1040
	.cfi_def_cfa_offset 1040
	stp	x29, x30, [sp]
	.cfi_offset 29, -1040
	.cfi_offset 30, -1032
	mov	x29, sp
	add	x0, sp, 1020
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 1036]
	b	.L2
.L8:
	add	x0, sp, 1016
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 1028]
	str	wzr, [sp, 1032]
	b	.L3
.L4:
	add	x1, sp, 16
	ldrsw	x0, [sp, 1032]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldrsw	x0, [sp, 1032]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	mov	w1, w0
	ldr	w0, [sp, 1028]
	add	w0, w0, w1
	str	w0, [sp, 1028]
	ldr	w0, [sp, 1032]
	add	w0, w0, 1
	str	w0, [sp, 1032]
.L3:
	ldr	w0, [sp, 1016]
	ldr	w1, [sp, 1032]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 1016]
	ldr	w1, [sp, 1028]
	sdiv	w0, w1, w0
	str	w0, [sp, 1028]
	str	wzr, [sp, 1024]
	str	wzr, [sp, 1032]
	b	.L5
.L7:
	ldrsw	x0, [sp, 1032]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	mov	w1, w0
	ldr	w0, [sp, 1028]
	cmp	w0, w1
	bge	.L6
	ldr	w0, [sp, 1024]
	add	w0, w0, 1
	str	w0, [sp, 1024]
.L6:
	ldr	w0, [sp, 1032]
	add	w0, w0, 1
	str	w0, [sp, 1032]
.L5:
	ldr	w0, [sp, 1016]
	ldr	w1, [sp, 1032]
	cmp	w1, w0
	blt	.L7
	ldr	w0, [sp, 1024]
	scvtf	d0, w0
	mov	x0, 4636737291354636288
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	w0, [sp, 1016]
	scvtf	d0, w0
	fdiv	d0, d1, d0
	mov	w1, 37
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 1036]
	add	w0, w0, 1
	str	w0, [sp, 1036]
.L2:
	ldr	w0, [sp, 1020]
	ldr	w1, [sp, 1036]
	cmp	w1, w0
	blt	.L8
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 1040
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
