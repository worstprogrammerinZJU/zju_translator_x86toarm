	.arch armv8-a
	.file	"2498.c"
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"%d"
	.align	3
.LC2:
	.string	"%s"
	.align	3
.LC3:
	.string	"Scenario #%d:\n%s\n\n"
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
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 24
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 60]
	b	.L2
.L14:
	str	wzr, [sp, 48]
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	str	wzr, [sp, 56]
	b	.L3
.L4:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L3:
	ldrsw	x0, [sp, 56]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L4
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	str	w0, [sp, 56]
	str	wzr, [sp, 52]
	b	.L5
.L9:
	ldrsw	x0, [sp, 56]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 63
	bne	.L6
	ldr	w0, [sp, 56]
	str	w0, [sp, 44]
	ldr	w0, [sp, 52]
	add	w1, w0, 1
	str	w1, [sp, 52]
	str	w0, [sp, 40]
	b	.L7
.L6:
	ldrsw	x0, [sp, 56]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	sub	w1, w0, #48
	ldr	w0, [sp, 52]
	add	w2, w0, 1
	str	w2, [sp, 52]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	mul	w0, w1, w0
	ldr	w1, [sp, 48]
	add	w0, w1, w0
	str	w0, [sp, 48]
.L7:
	ldr	w0, [sp, 52]
	cmp	w0, 3
	bne	.L8
	str	wzr, [sp, 52]
.L8:
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	str	w0, [sp, 56]
.L5:
	ldr	w0, [sp, 56]
	cmp	w0, 0
	bge	.L9
	ldr	w1, [sp, 48]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 2
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 2
	add	w0, w0, w2
	lsl	w0, w0, 1
	sub	w0, w1, w0
	str	w0, [sp, 48]
	ldr	w0, [sp, 48]
	cmp	w0, 0
	bne	.L10
	ldrsw	x0, [sp, 44]
	add	x1, sp, 16
	mov	w2, 48
	strb	w2, [x1, x0]
	b	.L11
.L10:
	mov	w1, 10
	ldr	w0, [sp, 48]
	sub	w0, w1, w0
	str	w0, [sp, 48]
	b	.L12
.L13:
	ldr	w0, [sp, 48]
	add	w0, w0, 10
	str	w0, [sp, 48]
.L12:
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 48]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L13
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 48]
	sdiv	w0, w1, w0
	and	w0, w0, 255
	add	w0, w0, 48
	and	w2, w0, 255
	ldrsw	x0, [sp, 44]
	add	x1, sp, 16
	strb	w2, [x1, x0]
.L11:
	add	x0, sp, 16
	mov	x2, x0
	ldr	w1, [sp, 60]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L2:
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	ble	.L14
	mov	w0, 0
	ldp	x29, x30, [sp], 64
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
	.word	9
	.word	3
	.word	7
	.text
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
