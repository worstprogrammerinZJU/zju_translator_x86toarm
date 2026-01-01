	.arch armv8-a
	.file	"2507.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%.3lf\n"
	.align	3
.LC1:
	.string	"%lf%lf%lf"
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
	b	.L2
.L13:
	str	xzr, [sp, 88]
	ldr	d1, [sp, 40]
	ldr	d0, [sp, 32]
	fcmpe	d1, d0
	bgt	.L15
	b	.L18
.L15:
	ldr	d0, [sp, 32]
	b	.L5
.L18:
	ldr	d0, [sp, 40]
.L5:
	str	d0, [sp, 80]
	b	.L6
.L12:
	ldr	d1, [sp, 88]
	ldr	d0, [sp, 80]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 72]
	ldr	d1, [sp, 40]
	ldr	d0, [sp, 72]
	fadd	d1, d1, d0
	ldr	d2, [sp, 40]
	ldr	d0, [sp, 72]
	fsub	d0, d2, d0
	fmul	d0, d1, d0
	bl	sqrt
	str	d0, [sp, 64]
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 72]
	fadd	d1, d1, d0
	ldr	d2, [sp, 32]
	ldr	d0, [sp, 72]
	fsub	d0, d2, d0
	fmul	d0, d1, d0
	bl	sqrt
	str	d0, [sp, 56]
	ldr	d1, [sp, 64]
	ldr	d0, [sp, 56]
	fmul	d1, d1, d0
	ldr	d2, [sp, 64]
	ldr	d0, [sp, 56]
	fadd	d0, d2, d0
	fdiv	d1, d1, d0
	ldr	d0, [sp, 24]
	fsub	d0, d1, d0
	str	d0, [sp, 48]
	ldr	d0, [sp, 48]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fcmpe	d0, d1
	bmi	.L16
	b	.L7
.L16:
	ldr	d0, [sp, 48]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fcmpe	d0, d1
	bgt	.L9
.L7:
	ldr	d0, [sp, 48]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fcmpe	d0, d1
	bmi	.L17
	b	.L19
.L17:
	ldr	d0, [sp, 72]
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fsub	d0, d0, d1
	str	d0, [sp, 80]
	b	.L6
.L19:
	ldr	d0, [sp, 72]
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fadd	d0, d0, d1
	str	d0, [sp, 88]
.L6:
	ldr	d1, [sp, 80]
	ldr	d0, [sp, 88]
	fsub	d0, d1, d0
	adrp	x0, .LC5
	ldr	d1, [x0, #:lo12:.LC5]
	fcmpe	d0, d1
	bgt	.L12
.L9:
	ldr	d1, [sp, 88]
	ldr	d0, [sp, 80]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
.L2:
	add	x2, sp, 24
	add	x1, sp, 32
	add	x0, sp, 40
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L13
	mov	w0, 0
	ldp	x29, x30, [sp], 96
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
	.word	-350469331
	.word	1058682594
	.align	3
.LC3:
	.word	-350469331
	.word	-1088801054
	.align	3
.LC4:
	.word	-1598689907
	.word	1051772663
	.align	3
.LC5:
	.word	-1998362383
	.word	1055193269
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
