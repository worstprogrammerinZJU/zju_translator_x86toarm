	.arch armv8-a
	.file	"3123.c"
	.text
	.global	n
	.bss
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	pie
	.align	3
	.type	pie, %object
	.size	pie, 80000
pie:
	.zero	80000
	.text
	.align	2
	.global	piece
	.type	piece, %function
piece:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	d0, [sp, 8]
	str	wzr, [sp, 28]
	str	wzr, [sp, 24]
	b	.L2
.L3:
	adrp	x0, pie
	add	x0, x0, :lo12:pie
	ldrsw	x1, [sp, 24]
	ldr	d1, [x0, x1, lsl 3]
	ldr	d0, [sp, 8]
	fdiv	d0, d1, d0
	fcvtzs	w0, d0
	ldr	w1, [sp, 28]
	add	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L2:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L3
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	piece, .-piece
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d%d"
	.align	3
.LC2:
	.string	"%lf"
	.align	3
.LC3:
	.string	"%.4lf\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 60]
	b	.L6
.L14:
	add	x0, sp, 24
	mov	x2, x0
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	str	xzr, [sp, 48]
	str	wzr, [sp, 56]
	b	.L7
.L10:
	ldrsw	x0, [sp, 56]
	lsl	x1, x0, 3
	adrp	x0, pie
	add	x0, x0, :lo12:pie
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	adrp	x0, pie
	add	x0, x0, :lo12:pie
	ldrsw	x1, [sp, 56]
	ldr	d1, [x0, x1, lsl 3]
	adrp	x0, pie
	add	x0, x0, :lo12:pie
	ldrsw	x1, [sp, 56]
	ldr	d0, [x0, x1, lsl 3]
	fmul	d0, d1, d0
	adrp	x0, pie
	add	x0, x0, :lo12:pie
	ldrsw	x1, [sp, 56]
	str	d0, [x0, x1, lsl 3]
	adrp	x0, pie
	add	x0, x0, :lo12:pie
	ldrsw	x1, [sp, 56]
	ldr	d0, [x0, x1, lsl 3]
	ldr	d1, [sp, 48]
	fcmpe	d1, d0
	bmi	.L16
	b	.L8
.L16:
	adrp	x0, pie
	add	x0, x0, :lo12:pie
	ldrsw	x1, [sp, 56]
	ldr	d0, [x0, x1, lsl 3]
	str	d0, [sp, 48]
.L8:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L7:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	blt	.L10
	str	xzr, [sp, 40]
	b	.L11
.L13:
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 40]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 32]
	ldr	d0, [sp, 32]
	bl	piece
	mov	w1, w0
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L12
	ldr	d0, [sp, 32]
	str	d0, [sp, 48]
	b	.L11
.L12:
	ldr	d0, [sp, 32]
	str	d0, [sp, 40]
.L11:
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 40]
	fsub	d0, d1, d0
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fcmpe	d0, d1
	bgt	.L13
	ldr	d0, [sp, 40]
	adrp	x0, .LC5
	ldr	d1, [x0, #:lo12:.LC5]
	fmul	d0, d0, d1
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L6:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L14
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC4:
	.word	-500134854
	.word	1044740494
	.align	3
.LC5:
	.word	1413754602
	.word	1074340347
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
