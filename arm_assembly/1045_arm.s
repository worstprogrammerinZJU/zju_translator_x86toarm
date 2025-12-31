	.arch armv8-a
	.file	"1045.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%lf%lf%lf%d"
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
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	d8, [sp, 16]
	.cfi_offset 72, -80
	add	x3, sp, 76
	add	x2, sp, 48
	add	x1, sp, 56
	add	x0, sp, 64
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 92]
	b	.L2
.L3:
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	d1, [sp, 56]
	ldr	d0, [sp, 48]
	fmul	d1, d1, d0
	ldr	d0, [sp, 40]
	fmul	d1, d1, d0
	ldr	d0, [sp, 64]
	fmul	d8, d1, d0
	ldr	d1, [sp, 56]
	ldr	d0, [sp, 56]
	fmul	d1, d1, d0
	ldr	d0, [sp, 48]
	fmul	d1, d1, d0
	ldr	d0, [sp, 48]
	fmul	d1, d1, d0
	ldr	d0, [sp, 40]
	fmul	d1, d1, d0
	ldr	d0, [sp, 40]
	fmul	d1, d1, d0
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	bl	sqrt
	fdiv	d0, d8, d0
	str	d0, [sp, 80]
	ldr	d0, [sp, 80]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
.L2:
	ldr	w0, [sp, 76]
	ldr	w1, [sp, 92]
	cmp	w1, w0
	blt	.L3
	mov	w0, 0
	ldr	d8, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
