	.arch armv8-a
	.file	"2505.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Stan wins."
	.align	3
.LC1:
	.string	"Ollie wins."
	.align	3
.LC2:
	.string	"%d"
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
	mov	w0, 2
	str	w0, [sp, 32]
	mov	w0, 9
	str	w0, [sp, 36]
	b	.L2
.L8:
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L3
.L6:
	ldr	w0, [sp, 28]
	ldrsw	x1, [sp, 44]
	lsl	x1, x1, 2
	add	x2, sp, 32
	ldr	w1, [x2, x1]
	udiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L4
	ldr	w0, [sp, 28]
	ldrsw	x1, [sp, 44]
	lsl	x1, x1, 2
	add	x2, sp, 32
	ldr	w1, [x2, x1]
	udiv	w0, w0, w1
	str	w0, [sp, 28]
	b	.L5
.L4:
	ldr	w0, [sp, 28]
	ldrsw	x1, [sp, 44]
	lsl	x1, x1, 2
	add	x2, sp, 32
	ldr	w1, [x2, x1]
	udiv	w0, w0, w1
	add	w0, w0, 1
	str	w0, [sp, 28]
.L5:
	mov	w1, 1
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	str	w0, [sp, 44]
.L3:
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L6
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L7
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	puts
	b	.L2
.L7:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
.L2:
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L8
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
