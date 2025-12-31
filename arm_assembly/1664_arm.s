	.arch armv8-a
	.file	"1664.c"
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
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #528
	.cfi_def_cfa_offset 528
	stp	x29, x30, [sp]
	.cfi_offset 29, -528
	.cfi_offset 30, -520
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, 484
	mov	x2, x1
	mov	w1, 0
	bl	memset
	str	wzr, [sp, 524]
	b	.L2
.L3:
	ldrsw	x0, [sp, 524]
	lsl	x0, x0, 2
	add	x1, sp, 24
	mov	w2, 1
	str	w2, [x1, x0]
	ldrsw	x1, [sp, 524]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, sp, 24
	mov	w2, 1
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 524]
	add	x0, x0, 11
	lsl	x0, x0, 2
	add	x1, sp, 24
	mov	w2, 1
	str	w2, [x1, x0]
	ldrsw	x1, [sp, 524]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, sp, 28
	mov	w2, 1
	str	w2, [x1, x0]
	ldr	w0, [sp, 524]
	add	w0, w0, 1
	str	w0, [sp, 524]
.L2:
	ldr	w0, [sp, 524]
	cmp	w0, 10
	ble	.L3
	mov	w0, 2
	str	w0, [sp, 524]
	b	.L4
.L9:
	mov	w0, 2
	str	w0, [sp, 520]
	b	.L5
.L8:
	ldr	w1, [sp, 520]
	ldr	w0, [sp, 524]
	cmp	w1, w0
	ble	.L6
	ldrsw	x1, [sp, 524]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x1, sp, 24
	ldr	w2, [x1, x0]
	ldrsw	x3, [sp, 520]
	ldrsw	x1, [sp, 524]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	b	.L7
.L6:
	ldr	w0, [sp, 520]
	sub	w0, w0, #1
	sxtw	x2, w0
	ldrsw	x1, [sp, 524]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [x1, x0]
	ldr	w1, [sp, 524]
	ldr	w0, [sp, 520]
	sub	w0, w1, w0
	ldrsw	x3, [sp, 520]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	add	w2, w2, w0
	ldrsw	x3, [sp, 520]
	ldrsw	x1, [sp, 524]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
.L7:
	ldr	w0, [sp, 520]
	add	w0, w0, 1
	str	w0, [sp, 520]
.L5:
	ldr	w0, [sp, 520]
	cmp	w0, 10
	ble	.L8
	ldr	w0, [sp, 524]
	add	w0, w0, 1
	str	w0, [sp, 524]
.L4:
	ldr	w0, [sp, 524]
	cmp	w0, 10
	ble	.L9
	add	x0, sp, 516
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 524]
	b	.L10
.L11:
	add	x1, sp, 508
	add	x0, sp, 512
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 512]
	ldr	w1, [sp, 508]
	sxtw	x2, w1
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 524]
	add	w0, w0, 1
	str	w0, [sp, 524]
.L10:
	ldr	w0, [sp, 516]
	ldr	w1, [sp, 524]
	cmp	w1, w0
	blt	.L11
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 528
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
