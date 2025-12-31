	.arch armv8-a
	.file	"1665.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%lf%d%lf"
	.align	3
.LC1:
	.string	"Trip #%d: %.2lf %.2lf\n"
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
	str	wzr, [sp, 60]
	add	x2, sp, 16
	add	x1, sp, 36
	add	x0, sp, 24
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
.L4:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	d0, [sp, 24]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmul	d1, d0, d1
	ldr	w0, [sp, 36]
	scvtf	d0, w0
	fmul	d0, d1, d0
	mov	x0, 263882790666240
	movk	x0, 0x40ee, lsl 48
	fmov	d1, x0
	fdiv	d0, d0, d1
	str	d0, [sp, 48]
	ldr	d0, [sp, 48]
	mov	x0, 35184372088832
	movk	x0, 0x40ac, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 16]
	fdiv	d0, d1, d0
	str	d0, [sp, 40]
	ldr	d1, [sp, 40]
	ldr	d0, [sp, 48]
	ldr	w1, [sp, 60]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x2, sp, 16
	add	x1, sp, 36
	add	x0, sp, 24
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L2:
	ldr	w0, [sp, 36]
	cmp	w0, 0
	beq	.L3
	ldr	d0, [sp, 16]
	fcmp	d0, #0.0
	bne	.L4
.L3:
	mov	w0, 0
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
.LC2:
	.word	1518260631
	.word	1074340347
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
