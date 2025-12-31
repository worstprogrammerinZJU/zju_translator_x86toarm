	.arch armv8-a
	.file	"2405.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%.3lf\n"
	.align	3
.LC1:
	.string	"%lf%lf"
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
	b	.L2
.L4:
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 32]
	fmul	d1, d1, d0
	ldr	d0, [sp, 32]
	fmul	d1, d1, d0
	ldr	d2, [sp, 24]
	fmov	d0, 6.0e+0
	fmul	d0, d2, d0
	adrp	x0, .LC2
	ldr	d2, [x0, #:lo12:.LC2]
	fdiv	d0, d0, d2
	fsub	d0, d1, d0
	mov	x0, 6148914691236517205
	movk	x0, 0x3fd5, lsl 48
	fmov	d1, x0
	bl	pow
	str	d0, [sp, 40]
	ldr	d0, [sp, 40]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
.L2:
	add	x1, sp, 24
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmp	w0, 0
	beq	.L3
	ldr	d0, [sp, 32]
	fcmp	d0, #0.0
	bne	.L4
	ldr	d0, [sp, 24]
	fcmp	d0, #0.0
	bne	.L4
.L3:
	mov	w0, 0
	ldp	x29, x30, [sp], 48
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
	.word	1413551940
	.word	1074340347
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
