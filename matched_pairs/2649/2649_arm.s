	.arch armv8-a
	.file	"2649.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d does not divide %d!\n"
	.align	3
.LC1:
	.string	"%d divides %d!\n"
	.align	3
.LC2:
	.string	"%d%d"
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
	b	.L2
.L13:
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 24]
	mov	w2, w1
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L2
.L3:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bgt	.L4
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 24]
	mov	w2, w1
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L2
.L4:
	ldr	w0, [sp, 20]
	scvtf	d0, w0
	bl	sqrt
	fcvtzs	w0, d0
	str	w0, [sp, 28]
	ldr	w0, [sp, 20]
	str	w0, [sp, 36]
	str	wzr, [sp, 32]
	mov	w0, 2
	str	w0, [sp, 44]
	b	.L5
.L10:
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 44]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 44]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L6
	mov	w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 44]
	sdiv	w0, w1, w0
	str	w0, [sp, 36]
	b	.L7
.L8:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 44]
	sdiv	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L7:
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 44]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 44]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L8
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 44]
	sdiv	w0, w1, w0
	ldr	w1, [sp, 40]
	cmp	w1, w0
	ble	.L6
	mov	w0, 1
	str	w0, [sp, 32]
	b	.L9
.L6:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L5:
	ldr	w0, [sp, 36]
	cmp	w0, 1
	ble	.L9
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L10
.L9:
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bne	.L11
	mov	w0, 1
	str	w0, [sp, 32]
.L11:
	ldr	w0, [sp, 32]
	cmp	w0, 1
	bne	.L12
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 24]
	mov	w2, w1
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L2
.L12:
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 24]
	mov	w2, w1
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
.L2:
	add	x1, sp, 20
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L13
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
