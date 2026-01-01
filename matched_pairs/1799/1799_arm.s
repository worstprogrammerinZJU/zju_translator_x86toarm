	.arch armv8-a
	.file	"1799.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%lf%d"
	.align	3
.LC2:
	.string	"Scenario #%d:\n%.3f\n\n"
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
	str	xzr, [sp, 40]
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 60]
	b	.L2
.L3:
	add	x1, sp, 32
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 32]
	scvtf	d0, w0
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fdiv	d0, d1, d0
	bl	sin
	str	d0, [sp, 40]
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 40]
	fmul	d1, d1, d0
	ldr	d2, [sp, 40]
	fmov	d0, 1.0e+0
	fadd	d0, d2, d0
	fdiv	d0, d1, d0
	str	d0, [sp, 48]
	ldr	d0, [sp, 48]
	ldr	w1, [sp, 60]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L2:
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	ble	.L3
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC3:
	.word	1413732084
	.word	1074340347
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
