	.arch armv8-a
	.file	"3027.c"
	.text
	.align	2
	.global	base
	.type	base, %function
base:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	w2, [sp, 4]
	ldr	w0, [sp, 12]
	str	w0, [sp, 24]
	str	wzr, [sp, 16]
	str	wzr, [sp, 28]
	mov	w0, 1
	str	w0, [sp, 20]
	b	.L2
.L3:
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 8]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 8]
	mul	w1, w2, w1
	sub	w1, w0, w1
	ldr	w0, [sp, 20]
	mul	w0, w1, w0
	ldr	w1, [sp, 16]
	add	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 8]
	sdiv	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 4]
	mul	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bgt	.L3
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 12]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 12]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L4
	mov	w0, 1
	b	.L5
.L4:
	mov	w0, 0
.L5:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	base, .-base
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d%d%d%d"
	.align	3
.LC2:
	.string	"%d\n"
	.align	3
.LC3:
	.string	"Non-existent."
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
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L7
.L13:
	add	x3, sp, 20
	add	x2, sp, 24
	add	x1, sp, 28
	add	x0, sp, 32
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 40]
	b	.L8
.L11:
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 28]
	mov	w2, w1
	mov	w1, w0
	ldr	w0, [sp, 40]
	bl	base
	cmp	w0, 0
	beq	.L9
	ldr	w1, [sp, 40]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L10
.L9:
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	str	w0, [sp, 40]
.L8:
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bgt	.L11
.L10:
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bne	.L12
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
.L12:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L7:
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L13
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
