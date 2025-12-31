	.arch armv8-a
	.file	"2070.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%f%d%d"
	.align	3
.LC1:
	.string	"Wide Receiver"
	.align	3
.LC2:
	.string	"Lineman"
	.align	3
.LC3:
	.string	"Quarterback"
	.align	3
.LC4:
	.string	"No positions"
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
.L13:
	str	wzr, [sp, 28]
	add	x2, sp, 16
	add	x1, sp, 20
	add	x0, sp, 24
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	s0, [sp, 24]
	fcmp	s0, #0.0
	beq	.L19
	ldr	s1, [sp, 24]
	fmov	s0, 4.5e+0
	fcmpe	s1, s0
	bls	.L15
	b	.L4
.L15:
	ldr	w0, [sp, 20]
	cmp	w0, 149
	ble	.L4
	ldr	w0, [sp, 16]
	cmp	w0, 199
	ble	.L4
	mov	w0, 1
	str	w0, [sp, 28]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
.L4:
	ldr	s1, [sp, 24]
	fmov	s0, 6.0e+0
	fcmpe	s1, s0
	bls	.L16
	b	.L6
.L16:
	ldr	w0, [sp, 20]
	cmp	w0, 299
	ble	.L6
	ldr	w0, [sp, 16]
	cmp	w0, 499
	ble	.L6
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L8
	mov	w0, 32
	bl	putchar
.L8:
	mov	w0, 1
	str	w0, [sp, 28]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
.L6:
	ldr	s1, [sp, 24]
	fmov	s0, 5.0e+0
	fcmpe	s1, s0
	bls	.L17
	b	.L9
.L17:
	ldr	w0, [sp, 20]
	cmp	w0, 199
	ble	.L9
	ldr	w0, [sp, 16]
	cmp	w0, 299
	ble	.L9
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L11
	mov	w0, 32
	bl	putchar
.L11:
	mov	w0, 1
	str	w0, [sp, 28]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
.L9:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L12
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
.L12:
	mov	w0, 10
	bl	putchar
	b	.L13
.L19:
	nop
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
