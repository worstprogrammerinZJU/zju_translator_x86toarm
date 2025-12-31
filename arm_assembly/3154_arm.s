	.arch armv8-a
	.file	"3154.c"
	.text
	.global	n
	.bss
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	m
	.align	2
	.type	m, %object
	.size	m, 4
m:
	.zero	4
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
	.section	.rodata
	.align	3
.LC0:
	.string	"%d%d"
	.align	3
.LC1:
	.string	"%.4lf\n"
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
	adrp	x0, m
	add	x2, x0, :lo12:m
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	w1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	scvtf	d0, w0
	mov	x0, 149533581377536
	movk	x0, 0x40c3, lsl 48
	fmov	d1, x0
	fdiv	d0, d1, d0
	adrp	x0, x
	add	x0, x0, :lo12:x
	str	d0, [x0]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	scvtf	d0, w0
	mov	x0, 149533581377536
	movk	x0, 0x40c3, lsl 48
	fmov	d1, x0
	fdiv	d0, d1, d0
	adrp	x0, y
	add	x0, x0, :lo12:y
	str	d0, [x0]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L2
.L5:
	ldr	w0, [sp, 44]
	scvtf	d1, w0
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	d0, [x0]
	fmul	d1, d1, d0
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	d0, [x0]
	fdiv	d0, d1, d0
	str	d0, [sp, 24]
	ldr	d0, [sp, 24]
	fcvtzs	w0, d0
	scvtf	d0, w0
	ldr	d1, [sp, 24]
	fsub	d0, d1, d0
	str	d0, [sp, 24]
	ldr	d0, [sp, 24]
	fadd	d0, d0, d0
	fcvtzs	w0, d0
	cmp	w0, 1
	bne	.L3
	fmov	d1, 1.0e+0
	ldr	d0, [sp, 24]
	fsub	d0, d1, d0
	ldr	d1, [sp, 32]
	fadd	d0, d1, d0
	str	d0, [sp, 32]
	b	.L4
.L3:
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 24]
	fadd	d0, d1, d0
	str	d0, [sp, 32]
.L4:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L5
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	d1, [x0]
	ldr	d0, [sp, 32]
	fmul	d0, d1, d0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
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
