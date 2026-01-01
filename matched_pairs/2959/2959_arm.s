	.arch armv8-a
	.file	"2959.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%lf%lf%lf"
	.align	3
.LC2:
	.string	"%d\n"
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
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L2
.L3:
	add	x2, sp, 16
	add	x1, sp, 24
	add	x0, sp, 32
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	d1, [sp, 16]
	ldr	d0, [sp, 24]
	fadd	d1, d1, d0
	ldr	d2, [sp, 32]
	ldr	d0, [sp, 24]
	fsub	d0, d2, d0
	fdiv	d0, d1, d0
	bl	asin
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fdiv	d0, d1, d0
	str	d0, [sp, 32]
	ldr	d0, [sp, 32]
	fcvtzs	w0, d0
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L3
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
.LC3:
	.word	1293080650
	.word	1074340347
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
