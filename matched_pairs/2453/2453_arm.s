	.arch armv8-a
	.file	"2453.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	xzr, xzr, [sp, 24]
	str	wzr, [sp, 40]
	strb	wzr, [sp, 44]
	add	x0, sp, 48
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
.L15:
	str	wzr, [sp, 60]
	b	.L3
.L4:
	ldr	w0, [sp, 48]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	and	w2, w0, 255
	ldrsw	x0, [sp, 60]
	add	x1, sp, 24
	strb	w2, [x1, x0]
	ldr	w0, [sp, 48]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 48]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L3:
	ldr	w0, [sp, 48]
	cmp	w0, 0
	bne	.L4
	str	wzr, [sp, 56]
	str	wzr, [sp, 48]
	b	.L5
.L8:
	ldr	w0, [sp, 48]
	sxtw	x0, w0
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 1
	bne	.L6
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	beq	.L17
.L6:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L5:
	ldr	w0, [sp, 48]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	bgt	.L8
	b	.L7
.L17:
	nop
.L7:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 24
	mov	w2, 1
	strb	w2, [x1, x0]
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	str	w0, [sp, 56]
	str	wzr, [sp, 52]
	b	.L9
.L10:
	ldrsw	x0, [sp, 52]
	add	x1, sp, 24
	mov	w2, 1
	strb	w2, [x1, x0]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L9:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	blt	.L10
	b	.L11
.L12:
	ldr	w0, [sp, 52]
	add	w1, w0, 1
	str	w1, [sp, 52]
	sxtw	x0, w0
	add	x1, sp, 24
	strb	wzr, [x1, x0]
.L11:
	ldr	w0, [sp, 48]
	ldr	w1, [sp, 52]
	cmp	w1, w0
	ble	.L12
	ldr	w0, [sp, 60]
	str	w0, [sp, 52]
	str	wzr, [sp, 56]
	b	.L13
.L14:
	ldr	w0, [sp, 56]
	lsl	w0, w0, 1
	str	w0, [sp, 56]
	ldrsw	x0, [sp, 52]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	mov	w1, w0
	ldr	w0, [sp, 56]
	add	w0, w0, w1
	str	w0, [sp, 56]
	ldrsw	x0, [sp, 52]
	add	x1, sp, 24
	strb	wzr, [x1, x0]
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	str	w0, [sp, 52]
.L13:
	ldr	w0, [sp, 52]
	cmp	w0, 0
	bge	.L14
	ldr	w1, [sp, 56]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 48
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L2:
	ldr	w0, [sp, 48]
	cmp	w0, 0
	bne	.L15
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
