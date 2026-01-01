	.arch armv8-a
	.file	"2853.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d%d"
	.align	3
.LC2:
	.string	"%d %d\n"
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
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L2
.L9:
	str	wzr, [sp, 40]
	add	x1, sp, 32
	add	x0, sp, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L3
.L5:
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 28]
	udiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L4
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 28]
	lsr	w1, w1, 1
	udiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L4
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L4:
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
.L3:
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	ldr	w0, [sp, 28]
	mul	w1, w1, w0
	ldr	w0, [sp, 32]
	lsl	w0, w0, 1
	cmp	w1, w0
	bls	.L5
	mov	w0, 3
	str	w0, [sp, 28]
	b	.L6
.L8:
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 28]
	udiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L7:
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
.L6:
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	ldr	w0, [sp, 28]
	mul	w1, w1, w0
	ldr	w0, [sp, 32]
	lsl	w0, w0, 1
	cmp	w1, w0
	bls	.L8
	ldr	w2, [sp, 40]
	ldr	w1, [sp, 44]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L9
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
