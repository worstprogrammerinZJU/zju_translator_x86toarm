	.arch armv8-a
	.file	"2641.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d%d%d%d%d"
	.align	3
.LC1:
	.string	"%.2lf %.2lf\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	add	x4, sp, 28
	add	x3, sp, 32
	add	x2, sp, 36
	add	x1, sp, 40
	add	x0, sp, 44
	mov	x5, x4
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
.L3:
	ldr	w0, [sp, 44]
	scvtf	d1, w0
	ldr	w0, [sp, 32]
	scvtf	d0, w0
	fmul	d0, d1, d0
	str	d0, [sp, 72]
	ldr	w0, [sp, 40]
	scvtf	d1, w0
	ldr	w0, [sp, 28]
	scvtf	d0, w0
	fmul	d0, d1, d0
	str	d0, [sp, 64]
	ldr	d0, [sp, 72]
	ldr	d1, [sp, 64]
	fdiv	d0, d1, d0
	bl	atan
	mov	x0, 140737488355328
	movk	x0, 0x4066, lsl 48
	fmov	d1, x0
	fmul	d0, d0, d1
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fdiv	d0, d0, d1
	str	d0, [sp, 56]
	ldr	d0, [sp, 72]
	fmul	d1, d0, d0
	ldr	d0, [sp, 64]
	fmul	d0, d0, d0
	fadd	d0, d1, d0
	bl	sqrt
	fmov	d1, d0
	ldr	w0, [sp, 36]
	scvtf	d0, w0
	fdiv	d0, d1, d0
	str	d0, [sp, 48]
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 56]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x4, sp, 28
	add	x3, sp, 32
	add	x2, sp, 36
	add	x1, sp, 40
	add	x0, sp, 44
	mov	x5, x4
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L2:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L3
	mov	w0, 0
	ldp	x29, x30, [sp], 80
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
	.word	1413732084
	.word	1074340347
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
