	.arch armv8-a
	.file	"1423.c"
	.text
	.global	e
	.section	.rodata
	.align	3
	.type	e, %object
	.size	e, 8
e:
	.word	-1961601175
	.word	1074118410
	.global	pi
	.align	3
	.type	pi, %object
	.size	pi, 8
pi:
	.word	1413754136
	.word	1074340347
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d\n"
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
	stp	d8, d9, [sp, 16]
	.cfi_offset 72, -48
	.cfi_offset 73, -40
	add	x0, sp, 44
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 60]
	b	.L2
.L5:
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 40]
	cmp	w0, 3
	bgt	.L3
	fmov	d0, 1.0e+0
	str	d0, [sp, 48]
	b	.L4
.L3:
	adrp	x0, .LC2
	ldr	d0, [x0, #:lo12:.LC2]
	fadd	d1, d0, d0
	ldr	w0, [sp, 40]
	scvtf	d0, w0
	fmul	d0, d1, d0
	bl	sqrt
	bl	log10
	fmov	d9, d0
	ldr	w0, [sp, 40]
	scvtf	d8, w0
	ldr	w0, [sp, 40]
	scvtf	d0, w0
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fdiv	d0, d0, d1
	bl	log10
	fmul	d0, d8, d0
	fadd	d1, d9, d0
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	str	d0, [sp, 48]
.L4:
	ldr	d0, [sp, 48]
	fcvtzs	w0, d0
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L2:
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L5
	mov	w0, 0
	ldp	d8, d9, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 72
	.cfi_restore 73
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC2:
	.word	1413754136
	.word	1074340347
	.align	3
.LC3:
	.word	-1961601175
	.word	1074118410
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
