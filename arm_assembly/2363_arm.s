	.arch armv8-a
	.file	"2363.c"
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"%d"
	.align	3
.LC2:
	.string	"0"
	.align	3
.LC3:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 24
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	add	x0, sp, 68
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 92]
	b	.L2
.L12:
	add	x0, sp, 64
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 88]
	b	.L3
.L4:
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
.L3:
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 64]
	cmp	w1, w0
	ble	.L4
	ldr	w0, [sp, 64]
	cmp	w0, 0
	bne	.L5
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
.L5:
	mov	w0, 10000
	str	w0, [sp, 80]
	b	.L6
.L11:
	ldr	w0, [sp, 64]
	ldr	w1, [sp, 88]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 88]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L7
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 88]
	sdiv	w0, w1, w0
	str	w0, [sp, 76]
	ldr	w0, [sp, 76]
	scvtf	d0, w0
	bl	sqrt
	fcvtzs	w0, d0
	str	w0, [sp, 84]
	b	.L8
.L10:
	ldr	w0, [sp, 76]
	ldr	w1, [sp, 84]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 84]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L9
	ldr	w1, [sp, 88]
	ldr	w0, [sp, 84]
	mul	w1, w1, w0
	ldr	w0, [sp, 76]
	add	w0, w1, w0
	lsl	w1, w0, 1
	ldr	w2, [sp, 88]
	ldr	w0, [sp, 76]
	mul	w0, w2, w0
	lsl	w2, w0, 1
	ldr	w0, [sp, 84]
	sdiv	w0, w2, w0
	add	w0, w1, w0
	str	w0, [sp, 72]
	ldr	w0, [sp, 72]
	ldr	w2, [sp, 80]
	ldr	w1, [sp, 80]
	cmp	w2, w0
	csel	w0, w1, w0, le
	str	w0, [sp, 80]
.L9:
	ldr	w0, [sp, 84]
	sub	w0, w0, #1
	str	w0, [sp, 84]
.L8:
	ldr	w0, [sp, 84]
	cmp	w0, 0
	bgt	.L10
.L7:
	ldr	w0, [sp, 88]
	sub	w0, w0, #1
	str	w0, [sp, 88]
.L6:
	ldr	w0, [sp, 88]
	cmp	w0, 0
	bne	.L11
	ldr	w1, [sp, 80]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
.L2:
	ldr	w0, [sp, 68]
	ldr	w1, [sp, 92]
	cmp	w1, w0
	blt	.L12
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1
	.word	8
	.word	27
	.word	64
	.word	125
	.word	216
	.word	343
	.word	512
	.word	729
	.word	1000
	.text
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
