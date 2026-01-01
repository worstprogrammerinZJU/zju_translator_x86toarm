	.arch armv8-a
	.file	"3039.c"
	.text
	.global	n
	.bss
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	d
	.align	2
	.type	d, %object
	.size	d, 4
d:
	.zero	4
	.global	r
	.align	2
	.type	r, %object
	.size	r, 4
r:
	.zero	4
	.global	s
	.align	2
	.type	s, %object
	.size	s, 4
s:
	.zero	4
	.global	t
	.align	2
	.type	t, %object
	.size	t, 4
t:
	.zero	4
	.global	i
	.align	2
	.type	i, %object
	.size	i, 4
i:
	.zero	4
	.global	min
	.align	3
	.type	min, %object
	.size	min, 8
min:
	.zero	8
	.section	.rodata
	.align	3
.LC0:
	.string	"%d%d"
	.align	3
.LC1:
	.string	"%d %d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	adrp	x0, d
	add	x2, x0, :lo12:d
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, min
	add	x0, x0, :lo12:min
	mov	x1, 281200098803712
	movk	x1, 0x40df, lsl 48
	fmov	d0, x1
	str	d0, [x0]
	adrp	x0, i
	add	x0, x0, :lo12:i
	mov	w1, 1
	str	w1, [x0]
	b	.L2
.L8:
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w0, [x0]
	scvtf	d1, w0
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	scvtf	d0, w0
	fmul	d1, d1, d0
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	scvtf	d0, w0
	fdiv	d1, d1, d0
	fmov	d0, 5.0e-1
	fadd	d0, d1, d0
	bl	floor
	fcvtzs	w1, d0
	adrp	x0, r
	add	x0, x0, :lo12:r
	str	w1, [x0]
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w1, [x0]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	mul	w1, w1, w0
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w2, [x0]
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w0, [x0]
	mul	w0, w2, w0
	cmp	w1, w0
	bne	.L3
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	add	w0, w0, 1
	scvtf	d1, w0
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w0, [x0]
	scvtf	d0, w0
	fdiv	d1, d1, d0
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	scvtf	d2, w0
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	scvtf	d0, w0
	fdiv	d0, d2, d0
	fsub	d0, d1, d0
	fabs	d1, d0
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	sub	w0, w0, #1
	scvtf	d2, w0
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w0, [x0]
	scvtf	d0, w0
	fdiv	d2, d2, d0
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	scvtf	d3, w0
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	scvtf	d0, w0
	fdiv	d0, d3, d0
	fsub	d0, d2, d0
	fabs	d0, d0
	fcmpe	d1, d0
	bgt	.L10
	b	.L12
.L10:
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, r
	add	x0, x0, :lo12:r
	str	w1, [x0]
	b	.L3
.L12:
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	sub	w1, w0, #1
	adrp	x0, r
	add	x0, x0, :lo12:r
	str	w1, [x0]
.L3:
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	scvtf	d1, w0
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w0, [x0]
	scvtf	d0, w0
	fdiv	d1, d1, d0
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	scvtf	d2, w0
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	scvtf	d0, w0
	fdiv	d0, d2, d0
	fsub	d0, d1, d0
	fabs	d1, d0
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	d0, [x0]
	fcmpe	d1, d0
	bmi	.L11
	b	.L6
.L11:
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	scvtf	d1, w0
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w0, [x0]
	scvtf	d0, w0
	fdiv	d1, d1, d0
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	scvtf	d2, w0
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	scvtf	d0, w0
	fdiv	d0, d2, d0
	fsub	d0, d1, d0
	fabs	d0, d0
	adrp	x0, min
	add	x0, x0, :lo12:min
	str	d0, [x0]
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w1, [x0]
	adrp	x0, t
	add	x0, x0, :lo12:t
	str	w1, [x0]
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w1, [x0]
	adrp	x0, s
	add	x0, x0, :lo12:s
	str	w1, [x0]
.L6:
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, i
	add	x0, x0, :lo12:i
	str	w1, [x0]
.L2:
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w1, [x0]
	mov	w0, 32767
	cmp	w1, w0
	ble	.L8
	adrp	x0, t
	add	x0, x0, :lo12:t
	ldr	w1, [x0]
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldr	w0, [x0]
	mov	w2, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
