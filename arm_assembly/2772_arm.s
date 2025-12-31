	.arch armv8-a
	.file	"2772.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d%d%d"
	.align	3
.LC2:
	.string	"%d%d"
	.align	3
.LC3:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #4064
	.cfi_def_cfa_offset 4064
	stp	x29, x30, [sp]
	.cfi_offset 29, -4064
	.cfi_offset 30, -4056
	mov	x29, sp
	add	x0, sp, 4028
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 4060]
	b	.L2
.L15:
	add	x2, sp, 4036
	add	x1, sp, 4032
	add	x0, sp, 4040
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 4044]
	str	wzr, [sp, 4056]
	b	.L3
.L7:
	add	x1, sp, 24
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x0, x1, x0
	add	x1, sp, 20
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L4
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L4
	ldr	w0, [sp, 4036]
	cmp	w0, 0
	ble	.L4
	ldr	w0, [sp, 4036]
	sub	w0, w0, #1
	str	w0, [sp, 4036]
	mov	w0, 1
	str	w0, [sp, 20]
.L4:
	ldr	w0, [sp, 20]
	cmp	w0, 1
	bne	.L5
	ldr	w1, [sp, 4032]
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	sub	w0, w1, w0
	ldr	w1, [sp, 4044]
	cmp	w1, w0
	bge	.L6
	ldr	w1, [sp, 4032]
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	sub	w0, w1, w0
	str	w0, [sp, 4044]
.L6:
	ldr	w0, [sp, 4032]
	lsl	w1, w0, 1
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	sub	w2, w1, w0
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
.L5:
	ldr	w0, [sp, 4056]
	add	w0, w0, 1
	str	w0, [sp, 4056]
.L3:
	ldr	w0, [sp, 4040]
	ldr	w1, [sp, 4056]
	cmp	w1, w0
	blt	.L7
	ldr	w1, [sp, 4036]
	ldr	w0, [sp, 4040]
	sdiv	w1, w1, w0
	ldr	w0, [sp, 4032]
	mul	w0, w1, w0
	lsl	w0, w0, 1
	str	w0, [sp, 4048]
	ldr	w0, [sp, 4036]
	ldr	w1, [sp, 4040]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 4036]
	ldr	w0, [sp, 4036]
	cmp	w0, 0
	beq	.L8
	str	wzr, [sp, 4056]
	b	.L9
.L13:
	ldr	w0, [sp, 4056]
	add	w0, w0, 1
	str	w0, [sp, 4052]
	b	.L10
.L12:
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 4052]
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	cmp	w1, w0
	ble	.L11
	ldrsw	x0, [sp, 4052]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	str	w0, [sp, 20]
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [x1, x0]
	ldrsw	x0, [sp, 4052]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	ldr	w2, [sp, 20]
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
.L11:
	ldr	w0, [sp, 4052]
	add	w0, w0, 1
	str	w0, [sp, 4052]
.L10:
	ldr	w0, [sp, 4040]
	ldr	w1, [sp, 4052]
	cmp	w1, w0
	blt	.L12
	ldr	w0, [sp, 4056]
	add	w0, w0, 1
	str	w0, [sp, 4056]
.L9:
	ldr	w0, [sp, 4036]
	ldr	w1, [sp, 4056]
	cmp	w1, w0
	blt	.L13
	ldr	w0, [sp, 4036]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 4032]
	add	w0, w1, w0
	ldr	w1, [sp, 4048]
	add	w0, w1, w0
	str	w0, [sp, 4048]
	b	.L14
.L8:
	ldr	w1, [sp, 4048]
	ldr	w0, [sp, 4044]
	add	w0, w1, w0
	str	w0, [sp, 4048]
.L14:
	ldr	w1, [sp, 4048]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 4060]
	add	w0, w0, 1
	str	w0, [sp, 4060]
.L2:
	ldr	w0, [sp, 4028]
	ldr	w1, [sp, 4060]
	cmp	w1, w0
	blt	.L15
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 4064
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
