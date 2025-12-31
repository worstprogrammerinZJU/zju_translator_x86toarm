	.arch armv8-a
	.file	"2610.c"
	.text
	.global	gx
	.bss
	.align	3
	.type	gx, %object
	.size	gx, 8
gx:
	.zero	8
	.global	gy
	.align	3
	.type	gy, %object
	.size	gy, 8
gy:
	.zero	8
	.global	dx
	.align	3
	.type	dx, %object
	.size	dx, 8
dx:
	.zero	8
	.global	dy
	.align	3
	.type	dy, %object
	.size	dy, 8
dy:
	.zero	8
	.global	x
	.align	3
	.type	x, %object
	.size	x, 8
x:
	.zero	8
	.global	y
	.align	3
	.type	y, %object
	.size	y, 8
y:
	.zero	8
	.text
	.align	2
	.global	dist
	.type	dist, %function
dist:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	d0, [sp, 24]
	str	d1, [sp, 16]
	str	d2, [sp, 8]
	str	d3, [sp]
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 8]
	fsub	d1, d1, d0
	ldr	d2, [sp, 24]
	ldr	d0, [sp, 8]
	fsub	d0, d2, d0
	fmul	d1, d1, d0
	ldr	d2, [sp, 16]
	ldr	d0, [sp]
	fsub	d2, d2, d0
	ldr	d3, [sp, 16]
	ldr	d0, [sp]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	dist, .-dist
	.section	.rodata
	.align	3
.LC0:
	.string	"%lf%lf%lf%lf"
	.align	3
.LC1:
	.string	"%lf%lf"
	.align	3
.LC2:
	.string	"The gopher cannot escape."
	.align	3
.LC3:
	.string	"The gopher can escape through the hole at (%.3lf,%.3lf).\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	wzr, [sp, 44]
	adrp	x0, dy
	add	x4, x0, :lo12:dy
	adrp	x0, dx
	add	x3, x0, :lo12:dx
	adrp	x0, gy
	add	x2, x0, :lo12:gy
	adrp	x0, gx
	add	x1, x0, :lo12:gx
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L4
.L6:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L4
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	d0, [x0]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	d1, [x0]
	adrp	x0, gx
	add	x0, x0, :lo12:gx
	ldr	d2, [x0]
	adrp	x0, gy
	add	x0, x0, :lo12:gy
	ldr	d3, [x0]
	bl	dist
	fmov	d1, d0
	fmov	d0, 4.0e+0
	fmul	d0, d1, d0
	str	d0, [sp, 32]
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	d0, [x0]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	d1, [x0]
	adrp	x0, dx
	add	x0, x0, :lo12:dx
	ldr	d2, [x0]
	adrp	x0, dy
	add	x0, x0, :lo12:dy
	ldr	d3, [x0]
	bl	dist
	str	d0, [sp, 24]
	ldr	d0, [sp, 24]
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fadd	d0, d0, d1
	ldr	d1, [sp, 32]
	fcmpe	d1, d0
	bmi	.L10
	b	.L4
.L10:
	mov	w0, 1
	str	w0, [sp, 44]
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	d0, [x0]
	str	d0, [sp, 32]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	d0, [x0]
	str	d0, [sp, 24]
.L4:
	adrp	x0, y
	add	x2, x0, :lo12:y
	adrp	x0, x
	add	x1, x0, :lo12:x
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L6
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L7
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
	b	.L8
.L7:
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 32]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
.L8:
	mov	w0, 0
	ldp	x29, x30, [sp], 48
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
	.word	-1698910392
	.word	1048238066
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
