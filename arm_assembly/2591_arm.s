	.arch armv8-a
	.file	"2591.c"
	.text
	.global	p
	.data
	.align	3
	.type	p, %object
	.size	p, 40000000
p:
	.word	1
	.zero	39999996
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
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
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	wzr, [sp, 28]
	str	wzr, [sp, 24]
	mov	w0, 1
	str	w0, [sp, 20]
	b	.L2
.L6:
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	lsl	w2, w0, 1
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	cmp	w2, w0
	bcs	.L3
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	lsl	w0, w0, 1
	add	w1, w0, 1
	ldr	w0, [sp, 20]
	sub	w2, w0, #1
	adrp	x0, p
	add	x0, x0, :lo12:p
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bne	.L4
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	b	.L2
.L4:
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	str	w1, [sp, 28]
	adrp	x1, p
	add	x1, x1, :lo12:p
	sxtw	x0, w0
	ldr	w0, [x1, x0, lsl 2]
	lsl	w1, w0, 1
	ldr	w0, [sp, 20]
	add	w2, w0, 1
	str	w2, [sp, 20]
	add	w2, w1, 1
	adrp	x1, p
	add	x1, x1, :lo12:p
	sxtw	x0, w0
	str	w2, [x1, x0, lsl 2]
	b	.L2
.L3:
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w1, w0, 1
	ldr	w0, [sp, 20]
	sub	w2, w0, #1
	adrp	x0, p
	add	x0, x0, :lo12:p
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bne	.L5
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	b	.L2
.L5:
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	str	w1, [sp, 24]
	adrp	x1, p
	add	x1, x1, :lo12:p
	sxtw	x0, w0
	ldr	w1, [x1, x0, lsl 2]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w1, w0, w1
	ldr	w0, [sp, 20]
	add	w2, w0, 1
	str	w2, [sp, 20]
	add	w2, w1, 1
	adrp	x1, p
	add	x1, x1, :lo12:p
	sxtw	x0, w0
	str	w2, [x1, x0, lsl 2]
.L2:
	ldr	w1, [sp, 20]
	mov	w0, 38527
	movk	w0, 0x98, lsl 16
	cmp	w1, w0
	ble	.L6
	b	.L7
.L8:
	ldr	w0, [sp, 20]
	sub	w1, w0, #1
	adrp	x0, p
	add	x0, x0, :lo12:p
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
.L7:
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L8
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
