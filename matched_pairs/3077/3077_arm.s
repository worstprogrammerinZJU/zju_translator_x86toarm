	.arch armv8-a
	.file	"3077.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%s"
	.align	3
.LC2:
	.string	"10"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	add	x0, sp, 120
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 140]
	b	.L2
.L12:
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	add	x0, sp, 16
	bl	strlen
	str	w0, [sp, 128]
	str	wzr, [sp, 136]
	ldr	w0, [sp, 128]
	sub	w0, w0, #1
	str	w0, [sp, 132]
	b	.L3
.L4:
	ldrsw	x0, [sp, 136]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	strb	w0, [sp, 127]
	ldrsw	x0, [sp, 132]
	add	x1, sp, 16
	ldrb	w2, [x1, x0]
	ldrsw	x0, [sp, 136]
	add	x1, sp, 16
	strb	w2, [x1, x0]
	ldrsw	x0, [sp, 132]
	add	x1, sp, 16
	ldrb	w2, [sp, 127]
	strb	w2, [x1, x0]
	ldr	w0, [sp, 136]
	add	w0, w0, 1
	str	w0, [sp, 136]
	ldr	w0, [sp, 132]
	sub	w0, w0, #1
	str	w0, [sp, 132]
.L3:
	ldr	w1, [sp, 136]
	ldr	w0, [sp, 132]
	cmp	w1, w0
	ble	.L4
	str	wzr, [sp, 136]
	b	.L5
.L7:
	ldrsw	x0, [sp, 136]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 52
	bls	.L6
	ldr	w0, [sp, 136]
	add	w2, w0, 1
	sxtw	x0, w2
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	add	w0, w0, 1
	and	w3, w0, 255
	sxtw	x0, w2
	add	x1, sp, 16
	mov	w2, w3
	strb	w2, [x1, x0]
.L6:
	ldrsw	x0, [sp, 136]
	add	x1, sp, 16
	mov	w2, 48
	strb	w2, [x1, x0]
	ldr	w0, [sp, 136]
	add	w0, w0, 1
	str	w0, [sp, 136]
.L5:
	ldr	w0, [sp, 128]
	sub	w0, w0, #1
	ldr	w1, [sp, 136]
	cmp	w1, w0
	blt	.L7
	ldr	w0, [sp, 128]
	sub	w0, w0, #1
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 58
	bne	.L8
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L9
.L8:
	ldr	w0, [sp, 128]
	sub	w0, w0, #1
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	bl	putchar
.L9:
	ldr	w0, [sp, 128]
	sub	w0, w0, #2
	str	w0, [sp, 136]
	b	.L10
.L11:
	ldrsw	x0, [sp, 136]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	bl	putchar
	ldr	w0, [sp, 136]
	sub	w0, w0, #1
	str	w0, [sp, 136]
.L10:
	ldr	w0, [sp, 136]
	cmp	w0, 0
	bge	.L11
	mov	w0, 10
	bl	putchar
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
.L2:
	ldr	w0, [sp, 120]
	ldr	w1, [sp, 140]
	cmp	w1, w0
	blt	.L12
	mov	w0, 0
	ldp	x29, x30, [sp], 144
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
