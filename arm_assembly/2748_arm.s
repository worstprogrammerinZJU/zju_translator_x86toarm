	.arch armv8-a
	.file	"2748.c"
	.text
	.global	dp
	.data
	.align	3
	.type	dp, %object
	.size	dp, 300004
dp:
	.word	0
	.word	1
	.word	2
	.zero	299992
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
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	mov	w0, 3
	str	w0, [sp, 28]
	b	.L2
.L4:
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w1, w0, w1
	ldr	w0, [sp, 28]
	sub	w2, w0, #2
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	sub	w2, w1, w0
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bge	.L3
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, 34464
	movk	w0, 0x1, lsl 16
	add	w2, w1, w0
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
.L3:
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, 46473
	movk	w0, 0x14f8, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 13
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 34464
	movk	w2, 0x1, lsl 16
	mul	w0, w0, w2
	sub	w0, w1, w0
	adrp	x1, dp
	add	x1, x1, :lo12:dp
	ldrsw	x2, [sp, 28]
	str	w0, [x1, x2, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w1, [sp, 28]
	mov	w0, 9464
	movk	w0, 0x1, lsl 16
	cmp	w1, w0
	ble	.L4
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L5
.L7:
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w1, [sp, 20]
	mov	w0, 7557
	movk	w0, 0x6fd9, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 15
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 9464
	movk	w2, 0x1, lsl 16
	mul	w0, w0, w2
	sub	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L6
	mov	w0, 9464
	movk	w0, 0x1, lsl 16
	str	w0, [sp, 20]
.L6:
	ldr	w1, [sp, 20]
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L5:
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L7
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
