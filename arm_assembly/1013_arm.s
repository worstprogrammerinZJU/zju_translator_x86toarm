	.arch armv8-a
	.file	"1013.c"
	.text
	.global	coin
	.bss
	.align	3
	.type	coin, %object
	.size	coin, 48
coin:
	.zero	48
	.section	.rodata
	.align	3
.LC0:
	.string	"even"
	.align	3
.LC1:
	.string	"up"
	.align	3
.LC2:
	.string	"down"
	.text
	.align	2
	.global	balance
	.type	balance, %function
balance:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	wzr, [sp, 60]
	str	wzr, [sp, 56]
	str	wzr, [sp, 52]
	b	.L2
.L3:
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w1, w0, #65
	adrp	x0, coin
	add	x0, x0, :lo12:coin
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 60]
	add	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L2:
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L3
	str	wzr, [sp, 52]
	b	.L4
.L5:
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w1, w0, #65
	adrp	x0, coin
	add	x0, x0, :lo12:coin
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 56]
	add	w0, w1, w0
	str	w0, [sp, 56]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L4:
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L5
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	bne	.L6
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bne	.L6
	mov	w0, 1
	b	.L7
.L6:
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	bne	.L8
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	ble	.L8
	mov	w0, 1
	b	.L7
.L8:
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	bne	.L9
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bge	.L9
	mov	w0, 1
	b	.L7
.L9:
	mov	w0, 0
.L7:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	balance, .-balance
	.section	.rodata
	.align	3
.LC3:
	.string	"%d"
	.align	3
.LC4:
	.string	"%s%s%s"
	.align	3
.LC5:
	.string	"%c is the counterfeit coin and it is "
	.align	3
.LC6:
	.string	"light."
	.align	3
.LC7:
	.string	"heavy."
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	add	x0, sp, 124
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__isoc99_scanf
	str	wzr, [sp, 140]
	b	.L11
.L28:
	str	wzr, [sp, 136]
	b	.L12
.L13:
	add	x2, sp, 88
	ldrsw	x1, [sp, 136]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x4, x2, x0
	add	x2, sp, 56
	ldrsw	x1, [sp, 136]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x5, x2, x0
	add	x2, sp, 24
	ldrsw	x1, [sp, 136]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x2, x0
	mov	x3, x0
	mov	x2, x5
	mov	x1, x4
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__isoc99_scanf
	ldr	w0, [sp, 136]
	add	w0, w0, 1
	str	w0, [sp, 136]
.L12:
	ldr	w0, [sp, 136]
	cmp	w0, 2
	ble	.L13
	mov	w0, -1
	str	w0, [sp, 136]
	b	.L14
.L25:
	str	wzr, [sp, 132]
	b	.L15
.L22:
	mov	x2, 48
	mov	w1, 0
	adrp	x0, coin
	add	x0, x0, :lo12:coin
	bl	memset
	adrp	x0, coin
	add	x0, x0, :lo12:coin
	ldrsw	x1, [sp, 132]
	ldr	w2, [sp, 136]
	str	w2, [x0, x1, lsl 2]
	str	wzr, [sp, 128]
	b	.L16
.L19:
	add	x2, sp, 88
	ldrsw	x1, [sp, 128]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x3, x2, x0
	add	x2, sp, 56
	ldrsw	x1, [sp, 128]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x4, x2, x0
	add	x2, sp, 24
	ldrsw	x1, [sp, 128]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x2, x0
	mov	x2, x0
	mov	x1, x4
	mov	x0, x3
	bl	balance
	cmp	w0, 0
	beq	.L30
	ldr	w0, [sp, 128]
	add	w0, w0, 1
	str	w0, [sp, 128]
.L16:
	ldr	w0, [sp, 128]
	cmp	w0, 2
	ble	.L19
	b	.L18
.L30:
	nop
.L18:
	ldr	w0, [sp, 128]
	cmp	w0, 3
	beq	.L31
	ldr	w0, [sp, 132]
	add	w0, w0, 1
	str	w0, [sp, 132]
.L15:
	ldr	w0, [sp, 132]
	cmp	w0, 11
	ble	.L22
	b	.L21
.L31:
	nop
.L21:
	ldr	w0, [sp, 132]
	cmp	w0, 11
	ble	.L32
	ldr	w0, [sp, 136]
	add	w0, w0, 2
	str	w0, [sp, 136]
.L14:
	ldr	w0, [sp, 136]
	cmp	w0, 1
	ble	.L25
	b	.L24
.L32:
	nop
.L24:
	ldr	w0, [sp, 132]
	add	w0, w0, 65
	mov	w1, w0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	ldr	w0, [sp, 136]
	cmn	w0, #1
	bne	.L26
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	puts
	b	.L27
.L26:
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	puts
.L27:
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
.L11:
	ldr	w0, [sp, 124]
	ldr	w1, [sp, 140]
	cmp	w1, w0
	blt	.L28
	mov	w0, 0
	ldp	x29, x30, [sp], 144
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
