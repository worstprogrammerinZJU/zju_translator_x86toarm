	.arch armv8-a
	.file	"1003.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%lf"
	.align	3
.LC1:
	.string	"%d card(s)\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	xzr, [sp, 32]
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
.L5:
	mov	w0, 2
	str	w0, [sp, 44]
	b	.L3
.L4:
	ldr	w0, [sp, 44]
	scvtf	d0, w0
	fmov	d1, 1.0e+0
	fdiv	d0, d1, d0
	ldr	d1, [sp, 32]
	fadd	d0, d1, d0
	str	d0, [sp, 32]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L3:
	ldr	d0, [sp, 24]
	ldr	d1, [sp, 32]
	fcmpe	d1, d0
	bmi	.L4
	ldr	w0, [sp, 44]
	sub	w0, w0, #2
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	xzr, [sp, 32]
.L2:
	ldr	d0, [sp, 24]
	fcmp	d0, #0.0
	bne	.L5
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
