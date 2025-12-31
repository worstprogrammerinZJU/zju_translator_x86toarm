	.arch armv8-a
	.file	"1519.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%s"
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
	mov	x12, 10032
	sub	sp, sp, x12
	.cfi_def_cfa_offset 10032
	stp	x29, x30, [sp]
	.cfi_offset 29, -10032
	.cfi_offset 30, -10024
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
.L6:
	str	wzr, [sp, 10028]
	str	wzr, [sp, 10024]
	b	.L3
.L4:
	ldr	w0, [sp, 10024]
	add	w1, w0, 1
	str	w1, [sp, 10024]
	sxtw	x0, w0
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	ldr	w1, [sp, 10028]
	add	w0, w1, w0
	str	w0, [sp, 10028]
.L3:
	ldrsw	x0, [sp, 10024]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L4
	ldr	w1, [sp, 10028]
	mov	w0, 36409
	movk	w0, 0x38e3, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 1
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 3
	add	w0, w0, w2
	sub	w0, w1, w0
	str	w0, [sp, 10028]
	ldr	w0, [sp, 10028]
	cmp	w0, 0
	bne	.L5
	mov	w0, 9
	str	w0, [sp, 10028]
.L5:
	ldr	w1, [sp, 10028]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L2:
	ldrb	w0, [sp, 24]
	cmp	w0, 48
	bne	.L6
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 10032
	add	sp, sp, x12
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
