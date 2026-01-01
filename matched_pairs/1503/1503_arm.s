	.arch armv8-a
	.file	"1503.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%s"
	.align	3
.LC1:
	.string	"%d"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #576
	.cfi_def_cfa_offset 576
	stp	x29, x30, [sp]
	.cfi_offset 29, -576
	.cfi_offset 30, -568
	mov	x29, sp
	add	x0, sp, 136
	mov	x1, 420
	mov	x2, x1
	mov	w1, 0
	bl	memset
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
.L7:
	add	x0, sp, 24
	bl	strlen
	str	w0, [sp, 560]
	str	wzr, [sp, 568]
	ldr	w0, [sp, 560]
	sub	w0, w0, #1
	str	w0, [sp, 572]
	b	.L3
.L6:
	ldrsw	x0, [sp, 568]
	lsl	x0, x0, 2
	add	x1, sp, 136
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 572]
	add	x2, sp, 24
	ldrb	w0, [x2, x0]
	sub	w0, w0, #48
	add	w2, w1, w0
	ldrsw	x0, [sp, 568]
	lsl	x0, x0, 2
	add	x1, sp, 136
	str	w2, [x1, x0]
	ldr	w0, [sp, 568]
	str	w0, [sp, 564]
	b	.L4
.L5:
	ldr	w0, [sp, 564]
	add	w1, w0, 1
	str	w1, [sp, 564]
	sxtw	x1, w0
	lsl	x1, x1, 2
	add	x2, sp, 136
	ldr	w1, [x2, x1]
	sub	w2, w1, #10
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 136
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 564]
	lsl	x0, x0, 2
	add	x1, sp, 136
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	ldrsw	x0, [sp, 564]
	lsl	x0, x0, 2
	add	x1, sp, 136
	str	w2, [x1, x0]
.L4:
	ldrsw	x0, [sp, 564]
	lsl	x0, x0, 2
	add	x1, sp, 136
	ldr	w0, [x1, x0]
	cmp	w0, 9
	bgt	.L5
	ldr	w0, [sp, 568]
	add	w0, w0, 1
	str	w0, [sp, 568]
	ldr	w0, [sp, 572]
	sub	w0, w0, #1
	str	w0, [sp, 572]
.L3:
	ldr	w0, [sp, 572]
	cmp	w0, 0
	bge	.L6
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L2:
	ldrb	w0, [sp, 24]
	cmp	w0, 48
	bne	.L7
	ldrb	w0, [sp, 25]
	cmp	w0, 0
	bne	.L7
	mov	w0, 104
	str	w0, [sp, 572]
	b	.L8
.L10:
	ldr	w0, [sp, 572]
	sub	w0, w0, #1
	str	w0, [sp, 572]
.L8:
	ldr	w0, [sp, 572]
	cmp	w0, 0
	ble	.L11
	ldrsw	x0, [sp, 572]
	lsl	x0, x0, 2
	add	x1, sp, 136
	ldr	w0, [x1, x0]
	cmp	w0, 0
	beq	.L10
	b	.L11
.L12:
	ldr	w0, [sp, 572]
	sub	w1, w0, #1
	str	w1, [sp, 572]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 136
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
.L11:
	ldr	w0, [sp, 572]
	cmp	w0, 0
	bge	.L12
	mov	w0, 10
	bl	putchar
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 576
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
