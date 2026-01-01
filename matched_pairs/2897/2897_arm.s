	.arch armv8-a
	.file	"2897.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d%d"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -448]!
	.cfi_def_cfa_offset 448
	.cfi_offset 29, -448
	.cfi_offset 30, -440
	mov	x29, sp
	add	x0, sp, 432
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 444]
	b	.L2
.L12:
	add	x1, sp, 424
	add	x0, sp, 428
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w1, [sp, 428]
	ldr	w0, [sp, 424]
	cmp	w1, w0
	ble	.L3
	mov	w0, 48
	bl	putchar
	b	.L4
.L3:
	ldr	w0, [sp, 428]
	cmp	w0, 1
	bne	.L5
	ldr	w0, [sp, 424]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L4
.L5:
	ldr	w1, [sp, 424]
	ldr	w0, [sp, 428]
	sdiv	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 424]
	ldr	w1, [sp, 428]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w1, w0, w1
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 436]
	mov	w0, 1
	str	w0, [sp, 440]
	b	.L6
.L9:
	ldr	w0, [sp, 428]
	ldr	w1, [sp, 436]
	sdiv	w2, w1, w0
	ldrsw	x0, [sp, 440]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 440]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 424]
	cmp	w1, w0
	bne	.L7
	ldr	w1, [sp, 428]
	ldr	w0, [sp, 436]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L14
.L7:
	ldr	w1, [sp, 428]
	ldr	w0, [sp, 436]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w1, w0, w1
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w2, w0
	ldrsw	x0, [sp, 440]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	add	w0, w2, w0
	str	w0, [sp, 436]
	ldr	w0, [sp, 440]
	add	w0, w0, 1
	str	w0, [sp, 440]
.L6:
	ldr	w0, [sp, 440]
	cmp	w0, 99
	ble	.L9
	b	.L8
.L14:
	nop
.L8:
	str	wzr, [sp, 424]
	b	.L10
.L11:
	ldr	w0, [sp, 424]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 424]
	add	w0, w0, 1
	str	w0, [sp, 424]
.L10:
	ldr	w0, [sp, 424]
	ldr	w1, [sp, 440]
	cmp	w1, w0
	bge	.L11
.L4:
	mov	w0, 10
	bl	putchar
	ldr	w0, [sp, 444]
	add	w0, w0, 1
	str	w0, [sp, 444]
.L2:
	ldr	w0, [sp, 432]
	ldr	w1, [sp, 444]
	cmp	w1, w0
	blt	.L12
	mov	w0, 0
	ldp	x29, x30, [sp], 448
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
