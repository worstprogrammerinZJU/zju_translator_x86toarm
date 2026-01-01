	.arch armv8-a
	.file	"1862.c"
	.text
	.align	2
	.global	cmp
	.type	cmp, %function
cmp:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	d0, [x0]
	str	d0, [sp, 24]
	ldr	x0, [sp]
	ldr	d0, [x0]
	str	d0, [sp, 16]
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 16]
	fcmpe	d1, d0
	bmi	.L7
	b	.L9
.L7:
	mov	w0, 1
	b	.L4
.L9:
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 16]
	fcmpe	d1, d0
	bgt	.L8
	b	.L10
.L8:
	mov	w0, -1
	b	.L4
.L10:
	mov	w0, 0
.L4:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	cmp, .-cmp
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%lf"
	.align	3
.LC2:
	.string	"%.3lf\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #832
	.cfi_def_cfa_offset 832
	stp	x29, x30, [sp]
	.cfi_offset 29, -832
	.cfi_offset 30, -824
	mov	x29, sp
	add	x0, sp, 824
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 828]
	b	.L12
.L13:
	add	x1, sp, 24
	ldrsw	x0, [sp, 828]
	lsl	x0, x0, 3
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 828]
	add	w0, w0, 1
	str	w0, [sp, 828]
.L12:
	ldr	w0, [sp, 824]
	ldr	w1, [sp, 828]
	cmp	w1, w0
	blt	.L13
	ldr	w0, [sp, 824]
	sxtw	x1, w0
	add	x4, sp, 24
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 8
	mov	x0, x4
	bl	qsort
	mov	w0, 1
	str	w0, [sp, 828]
	b	.L14
.L15:
	ldr	d1, [sp, 24]
	ldrsw	x0, [sp, 828]
	lsl	x0, x0, 3
	add	x1, sp, 24
	ldr	d0, [x1, x0]
	fmul	d0, d1, d0
	bl	sqrt
	fadd	d0, d0, d0
	str	d0, [sp, 24]
	ldr	w0, [sp, 828]
	add	w0, w0, 1
	str	w0, [sp, 828]
.L14:
	ldr	w0, [sp, 824]
	ldr	w1, [sp, 828]
	cmp	w1, w0
	blt	.L15
	ldr	d0, [sp, 24]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 832
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
