	.arch armv8-a
	.file	"3103.c"
	.text
	.global	x
	.bss
	.align	2
	.type	x, %object
	.size	x, 4
x:
	.zero	4
	.global	y
	.align	2
	.type	y, %object
	.size	y, 4
y:
	.zero	4
	.global	z
	.align	2
	.type	z, %object
	.size	z, 4
z:
	.zero	4
	.global	n
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.section	.rodata
	.align	3
.LC0:
	.string	"%d%d%d%d"
	.align	3
.LC1:
	.string	"%.8lf 0 0 %.8lf %d %d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, n
	add	x4, x0, :lo12:n
	adrp	x0, z
	add	x3, x0, :lo12:z
	adrp	x0, y
	add	x2, x0, :lo12:y
	adrp	x0, x
	add	x1, x0, :lo12:x
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	w0, [x0]
	scvtf	d1, w0
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	scvtf	d0, w0
	fdiv	d0, d1, d0
	str	d0, [sp, 16]
	str	wzr, [sp, 28]
	b	.L2
.L3:
	ldr	w0, [sp, 28]
	scvtf	d1, w0
	ldr	d0, [sp, 16]
	fmul	d2, d1, d0
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	scvtf	d1, w0
	ldr	d0, [sp, 16]
	fmul	d0, d1, d0
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	w1, [x0]
	adrp	x0, z
	add	x0, x0, :lo12:z
	ldr	w0, [x0]
	mov	w2, w0
	fmov	d1, d0
	fmov	d0, d2
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L3
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
