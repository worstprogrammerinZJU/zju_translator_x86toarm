	.arch armv8-a
	.file	"2272.c"
	.text
	.align	2
	.global	point
	.type	point, %function
point:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, 8]
	ldr	d1, [sp, 8]
	fmov	d0, 3.0e+0
	fcmpe	d1, d0
	bls	.L13
	b	.L18
.L13:
	mov	w0, 100
	b	.L4
.L18:
	ldr	d1, [sp, 8]
	fmov	d0, 6.0e+0
	fcmpe	d1, d0
	bls	.L14
	b	.L19
.L14:
	mov	w0, 80
	b	.L4
.L19:
	ldr	d1, [sp, 8]
	fmov	d0, 9.0e+0
	fcmpe	d1, d0
	bls	.L15
	b	.L20
.L15:
	mov	w0, 60
	b	.L4
.L20:
	ldr	d1, [sp, 8]
	fmov	d0, 1.2e+1
	fcmpe	d1, d0
	bls	.L16
	b	.L21
.L16:
	mov	w0, 40
	b	.L4
.L21:
	ldr	d1, [sp, 8]
	fmov	d0, 1.5e+1
	fcmpe	d1, d0
	bls	.L17
	b	.L22
.L17:
	mov	w0, 20
	b	.L4
.L22:
	mov	w0, 0
.L4:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	point, .-point
	.section	.rodata
	.align	3
.LC0:
	.string	"%lf%lf"
	.align	3
.LC1:
	.string	"SCORE: %d to %d, "
	.align	3
.LC2:
	.string	"TIE."
	.align	3
.LC3:
	.string	"PLAYER 1 WINS."
	.align	3
.LC4:
	.string	"PLAYER 2 WINS."
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
	add	x1, sp, 24
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L24
.L32:
	str	wzr, [sp, 60]
	str	wzr, [sp, 56]
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 32]
	fmul	d1, d1, d0
	ldr	d2, [sp, 24]
	ldr	d0, [sp, 24]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	bl	sqrt
	str	d0, [sp, 40]
	ldr	d0, [sp, 40]
	bl	point
	mov	w1, w0
	ldr	w0, [sp, 60]
	add	w0, w0, w1
	str	w0, [sp, 60]
	str	wzr, [sp, 52]
	b	.L25
.L26:
	add	x1, sp, 24
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 32]
	fmul	d1, d1, d0
	ldr	d2, [sp, 24]
	ldr	d0, [sp, 24]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	bl	sqrt
	str	d0, [sp, 40]
	ldr	d0, [sp, 40]
	bl	point
	mov	w1, w0
	ldr	w0, [sp, 60]
	add	w0, w0, w1
	str	w0, [sp, 60]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L25:
	ldr	w0, [sp, 52]
	cmp	w0, 1
	ble	.L26
	str	wzr, [sp, 52]
	b	.L27
.L28:
	add	x1, sp, 24
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 32]
	fmul	d1, d1, d0
	ldr	d2, [sp, 24]
	ldr	d0, [sp, 24]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	bl	sqrt
	str	d0, [sp, 40]
	ldr	d0, [sp, 40]
	bl	point
	mov	w1, w0
	ldr	w0, [sp, 56]
	add	w0, w0, w1
	str	w0, [sp, 56]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L27:
	ldr	w0, [sp, 52]
	cmp	w0, 2
	ble	.L28
	ldr	w2, [sp, 56]
	ldr	w1, [sp, 60]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bne	.L29
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
	b	.L30
.L29:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	ble	.L31
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
	b	.L30
.L31:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	puts
.L30:
	add	x1, sp, 24
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L24:
	ldr	d0, [sp, 32]
	mov	x0, -4586634745500139520
	fmov	d1, x0
	fcmp	d0, d1
	bne	.L32
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
