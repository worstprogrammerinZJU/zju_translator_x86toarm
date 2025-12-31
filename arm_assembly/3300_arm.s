	.arch armv8-a
	.file	"3300.c"
	.text
	.global	f
	.bss
	.align	2
	.type	f, %object
	.size	f, 4
f:
	.zero	4
	.global	r
	.align	2
	.type	r, %object
	.size	r, 4
r:
	.zero	4
	.global	q
	.align	2
	.type	q, %object
	.size	q, 4
q:
	.zero	4
	.global	front
	.align	3
	.type	front, %object
	.size	front, 80
front:
	.zero	80
	.global	rear
	.align	3
	.type	rear, %object
	.size	rear, 80
rear:
	.zero	80
	.global	ratio
	.align	3
	.type	ratio, %object
	.size	ratio, 800
ratio:
	.zero	800
	.text
	.align	2
	.global	cmp
	.type	cmp, %function
cmp:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	d0, [x0]
	str	d0, [sp, 24]
	ldr	x0, [sp]
	ldr	d0, [x0]
	str	d0, [sp, 16]
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 16]
	fcmpe	d1, d0
	bmi	.L7
	b	.L9
.L7:
	mov	w0, -1
	b	.L4
.L9:
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 16]
	fcmpe	d1, d0
	bgt	.L8
	b	.L10
.L8:
	mov	w0, 1
	b	.L4
.L10:
	mov	w0, 0
.L4:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	cmp, .-cmp
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%lf"
	.align	3
.LC2:
	.string	"%.2lf\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	b	.L12
.L25:
	adrp	x0, r
	add	x1, x0, :lo12:r
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L13
.L14:
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 3
	adrp	x0, front
	add	x0, x0, :lo12:front
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L13:
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L14
	str	wzr, [sp, 28]
	b	.L15
.L16:
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 3
	adrp	x0, rear
	add	x0, x0, :lo12:rear
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L15:
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L16
	adrp	x0, q
	add	x0, x0, :lo12:q
	str	wzr, [x0]
	str	wzr, [sp, 28]
	b	.L17
.L20:
	str	wzr, [sp, 24]
	b	.L18
.L19:
	adrp	x0, front
	add	x0, x0, :lo12:front
	ldrsw	x1, [sp, 28]
	ldr	d1, [x0, x1, lsl 3]
	adrp	x0, rear
	add	x0, x0, :lo12:rear
	ldrsw	x1, [sp, 24]
	ldr	d0, [x0, x1, lsl 3]
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x1, q
	add	x1, x1, :lo12:q
	str	w2, [x1]
	fdiv	d0, d1, d0
	adrp	x1, ratio
	add	x1, x1, :lo12:ratio
	sxtw	x0, w0
	str	d0, [x1, x0, lsl 3]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L18:
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L19
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L17:
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L20
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w0, [x0]
	sxtw	x1, w0
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 8
	adrp	x0, ratio
	add	x0, x0, :lo12:ratio
	bl	qsort
	str	xzr, [sp, 16]
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L21
.L24:
	adrp	x0, ratio
	add	x0, x0, :lo12:ratio
	ldrsw	x1, [sp, 28]
	ldr	d1, [x0, x1, lsl 3]
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, ratio
	add	x0, x0, :lo12:ratio
	sxtw	x1, w1
	ldr	d0, [x0, x1, lsl 3]
	fdiv	d0, d1, d0
	ldr	d1, [sp, 16]
	fcmpe	d1, d0
	bmi	.L27
	b	.L22
.L27:
	adrp	x0, ratio
	add	x0, x0, :lo12:ratio
	ldrsw	x1, [sp, 28]
	ldr	d1, [x0, x1, lsl 3]
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, ratio
	add	x0, x0, :lo12:ratio
	sxtw	x1, w1
	ldr	d0, [x0, x1, lsl 3]
	fdiv	d0, d1, d0
	str	d0, [sp, 16]
.L22:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L21:
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L24
	ldr	d0, [sp, 16]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
.L12:
	adrp	x0, f
	add	x1, x0, :lo12:f
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L25
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
