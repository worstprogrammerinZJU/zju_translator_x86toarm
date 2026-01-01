	.arch armv8-a
	.file	"2606.c"
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
	sub	sp, sp, #1648
	.cfi_def_cfa_offset 1648
	stp	x29, x30, [sp]
	.cfi_offset 29, -1648
	.cfi_offset 30, -1640
	mov	x29, sp
	mov	w0, 2
	str	w0, [sp, 1628]
	add	x0, sp, 1616
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 1644]
	b	.L2
.L3:
	add	x1, sp, 816
	ldrsw	x0, [sp, 1644]
	lsl	x0, x0, 2
	add	x3, x1, x0
	add	x1, sp, 16
	ldrsw	x0, [sp, 1644]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x2, x0
	mov	x1, x3
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 1644]
	add	w0, w0, 1
	str	w0, [sp, 1644]
.L2:
	ldr	w0, [sp, 1616]
	ldr	w1, [sp, 1644]
	cmp	w1, w0
	blt	.L3
	str	wzr, [sp, 1644]
	b	.L4
.L11:
	ldr	w0, [sp, 1644]
	add	w0, w0, 1
	str	w0, [sp, 1640]
	b	.L5
.L10:
	mov	w0, 2
	str	w0, [sp, 1632]
	ldrsw	x0, [sp, 1640]
	lsl	x0, x0, 2
	add	x1, sp, 816
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 1644]
	lsl	x0, x0, 2
	add	x2, sp, 816
	ldr	w0, [x2, x0]
	sub	w0, w1, w0
	str	w0, [sp, 1624]
	ldrsw	x0, [sp, 1640]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 1644]
	lsl	x0, x0, 2
	add	x2, sp, 16
	ldr	w0, [x2, x0]
	sub	w0, w1, w0
	str	w0, [sp, 1620]
	ldr	w0, [sp, 1640]
	add	w0, w0, 1
	str	w0, [sp, 1636]
	b	.L6
.L8:
	ldrsw	x0, [sp, 1636]
	lsl	x0, x0, 2
	add	x1, sp, 816
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 1644]
	lsl	x0, x0, 2
	add	x2, sp, 816
	ldr	w0, [x2, x0]
	sub	w1, w1, w0
	ldr	w0, [sp, 1620]
	mul	w1, w1, w0
	ldrsw	x0, [sp, 1636]
	lsl	x0, x0, 2
	add	x2, sp, 16
	ldr	w2, [x2, x0]
	ldrsw	x0, [sp, 1644]
	lsl	x0, x0, 2
	add	x3, sp, 16
	ldr	w0, [x3, x0]
	sub	w2, w2, w0
	ldr	w0, [sp, 1624]
	mul	w0, w2, w0
	cmp	w1, w0
	bne	.L7
	ldr	w0, [sp, 1632]
	add	w0, w0, 1
	str	w0, [sp, 1632]
.L7:
	ldr	w0, [sp, 1636]
	add	w0, w0, 1
	str	w0, [sp, 1636]
.L6:
	ldr	w0, [sp, 1616]
	ldr	w1, [sp, 1636]
	cmp	w1, w0
	blt	.L8
	ldr	w1, [sp, 1632]
	ldr	w0, [sp, 1628]
	cmp	w1, w0
	ble	.L9
	ldr	w0, [sp, 1632]
	str	w0, [sp, 1628]
.L9:
	ldr	w0, [sp, 1640]
	add	w0, w0, 1
	str	w0, [sp, 1640]
.L5:
	ldr	w0, [sp, 1616]
	ldr	w1, [sp, 1640]
	cmp	w1, w0
	blt	.L10
	ldr	w0, [sp, 1644]
	add	w0, w0, 1
	str	w0, [sp, 1644]
.L4:
	ldr	w0, [sp, 1616]
	ldr	w1, [sp, 1644]
	cmp	w1, w0
	blt	.L11
	ldr	w1, [sp, 1628]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 1648
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
