	.arch armv8-a
	.file	"1067.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"0"
	.align	3
.LC1:
	.string	"1"
	.align	3
.LC2:
	.string	"%d %d"
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
	b	.L2
.L6:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	ble	.L3
	ldr	w0, [sp, 20]
	str	w0, [sp, 24]
	ldr	w0, [sp, 16]
	str	w0, [sp, 20]
	ldr	w0, [sp, 24]
	str	w0, [sp, 16]
.L3:
	ldr	w0, [sp, 20]
	scvtf	d0, w0
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d0, d0, d1
	fcvtzs	w0, d0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	scvtf	d0, w0
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fmul	d0, d0, d1
	fcvtzs	w1, d0
	ldr	w0, [sp, 20]
	cmp	w1, w0
	beq	.L4
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L4:
	ldr	w0, [sp, 28]
	scvtf	d0, w0
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fmul	d0, d0, d1
	fcvtzs	w1, d0
	ldr	w0, [sp, 28]
	add	w1, w1, w0
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bne	.L5
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	puts
	b	.L2
.L5:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
.L2:
	add	x1, sp, 16
	add	x0, sp, 20
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L6
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC3:
	.word	925886800
	.word	1071892207
	.align	3
.LC4:
	.word	-1684540248
	.word	1073341303
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
