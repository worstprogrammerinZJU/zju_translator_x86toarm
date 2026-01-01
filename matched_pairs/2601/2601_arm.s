	.arch armv8-a
	.file	"2601.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d%lf%lf"
	.align	3
.LC1:
	.string	"%lf"
	.align	3
.LC2:
	.string	"%.2lf\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	xzr, [sp, 48]
	add	x2, sp, 16
	add	x1, sp, 24
	add	x0, sp, 44
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 60]
	b	.L2
.L3:
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 60]
	sub	w0, w1, w0
	scvtf	d1, w0
	ldr	d0, [sp, 32]
	fmul	d0, d1, d0
	ldr	d1, [sp, 48]
	fadd	d0, d1, d0
	str	d0, [sp, 48]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L2:
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L3
	ldr	d1, [sp, 16]
	ldr	d0, [sp, 24]
	fsub	d1, d1, d0
	ldr	d0, [sp, 48]
	fadd	d0, d0, d0
	fsub	d0, d1, d0
	str	d0, [sp, 48]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	scvtf	d0, w0
	ldr	d1, [sp, 48]
	fdiv	d1, d1, d0
	ldr	d0, [sp, 24]
	fadd	d0, d1, d0
	str	d0, [sp, 48]
	ldr	d0, [sp, 48]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
