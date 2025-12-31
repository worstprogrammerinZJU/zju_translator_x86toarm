	.arch armv8-a
	.file	"1102.c"
	.text
	.section	.rodata
	.align	3
.LC2:
	.string	"%d %s"
	.align	3
.LC3:
	.string	"  "
	.align	3
.LC4:
	.string	"%c "
	.align	3
.LC5:
	.string	"\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 64
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 14]
	str	q0, [x0, 14]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 24
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	add	x1, sp, 96
	add	x0, sp, 112
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	b	.L2
.L27:
	str	wzr, [sp, 124]
	b	.L3
.L6:
	mov	w0, 32
	bl	putchar
	str	wzr, [sp, 120]
	b	.L4
.L5:
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	add	x1, sp, 64
	ldrb	w0, [x1, x0]
	bl	putchar
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
.L4:
	ldr	w0, [sp, 112]
	ldr	w1, [sp, 120]
	cmp	w1, w0
	blt	.L5
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
.L3:
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L6
	mov	w0, 10
	bl	putchar
	str	wzr, [sp, 120]
	b	.L7
.L12:
	str	wzr, [sp, 124]
	b	.L8
.L11:
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	lsl	x0, x0, 1
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	bl	putchar
	str	wzr, [sp, 116]
	b	.L9
.L10:
	mov	w0, 32
	bl	putchar
	ldr	w0, [sp, 116]
	add	w0, w0, 1
	str	w0, [sp, 116]
.L9:
	ldr	w0, [sp, 112]
	ldr	w1, [sp, 116]
	cmp	w1, w0
	blt	.L10
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	lsl	x0, x0, 1
	add	x1, sp, 25
	ldrb	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
.L8:
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L11
	mov	w0, 10
	bl	putchar
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
.L7:
	ldr	w0, [sp, 112]
	ldr	w1, [sp, 120]
	cmp	w1, w0
	blt	.L12
	str	wzr, [sp, 124]
	b	.L13
.L16:
	mov	w0, 32
	bl	putchar
	str	wzr, [sp, 120]
	b	.L14
.L15:
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	add	x1, sp, 74
	ldrb	w0, [x1, x0]
	bl	putchar
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
.L14:
	ldr	w0, [sp, 112]
	ldr	w1, [sp, 120]
	cmp	w1, w0
	blt	.L15
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
.L13:
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L16
	mov	w0, 10
	bl	putchar
	str	wzr, [sp, 120]
	b	.L17
.L22:
	str	wzr, [sp, 124]
	b	.L18
.L21:
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	add	x0, x0, 10
	lsl	x0, x0, 1
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	bl	putchar
	str	wzr, [sp, 116]
	b	.L19
.L20:
	mov	w0, 32
	bl	putchar
	ldr	w0, [sp, 116]
	add	w0, w0, 1
	str	w0, [sp, 116]
.L19:
	ldr	w0, [sp, 112]
	ldr	w1, [sp, 116]
	cmp	w1, w0
	blt	.L20
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	lsl	x0, x0, 1
	add	x1, sp, 45
	ldrb	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
.L18:
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L21
	mov	w0, 10
	bl	putchar
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
.L17:
	ldr	w0, [sp, 112]
	ldr	w1, [sp, 120]
	cmp	w1, w0
	blt	.L22
	str	wzr, [sp, 124]
	b	.L23
.L26:
	mov	w0, 32
	bl	putchar
	str	wzr, [sp, 120]
	b	.L24
.L25:
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	add	x1, sp, 84
	ldrb	w0, [x1, x0]
	bl	putchar
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
.L24:
	ldr	w0, [sp, 112]
	ldr	w1, [sp, 120]
	cmp	w1, w0
	blt	.L25
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
.L23:
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L26
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	puts
	add	x1, sp, 96
	add	x0, sp, 112
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
.L2:
	ldr	w0, [sp, 112]
	cmp	w0, 0
	bne	.L27
	ldrb	w0, [sp, 96]
	cmp	w0, 48
	bne	.L27
	mov	w0, 0
	ldp	x29, x30, [sp], 128
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
	.ascii	"- -- -----"
	.ascii	"  ----- --"
	.ascii	"- -- -- --"
	.align	3
.LC1:
	.ascii	"||"
	.ascii	" |"
	.ascii	" |"
	.ascii	" |"
	.ascii	"||"
	.ascii	"| "
	.ascii	"| "
	.ascii	" |"
	.ascii	"||"
	.ascii	"||"
	.ascii	"||"
	.ascii	" |"
	.ascii	"| "
	.ascii	" |"
	.ascii	" |"
	.ascii	" |"
	.ascii	"||"
	.ascii	" |"
	.ascii	"||"
	.ascii	" |"
	.text
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
