	.arch armv8-a
	.file	"1833.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d %d"
	.align	3
.LC2:
	.string	"%d "
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
	mov	x12, 4160
	sub	sp, sp, x12
	.cfi_def_cfa_offset 4160
	stp	x29, x30, [sp]
	.cfi_offset 29, -4160
	.cfi_offset 30, -4152
	mov	x29, sp
	add	x0, sp, 4096
	add	x0, x0, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 4156]
	b	.L2
.L20:
	add	x1, sp, 4096
	add	x1, x1, 24
	add	x0, sp, 4096
	add	x0, x0, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 4152]
	b	.L3
.L4:
	add	x1, sp, 24
	ldrsw	x0, [sp, 4152]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 4152]
	add	w0, w0, 1
	str	w0, [sp, 4152]
.L3:
	ldr	w0, [sp, 4124]
	ldr	w1, [sp, 4152]
	cmp	w1, w0
	blt	.L4
	mov	w0, 1
	str	w0, [sp, 4148]
	b	.L5
.L17:
	ldr	w0, [sp, 4124]
	sub	w0, w0, #1
	str	w0, [sp, 4144]
	b	.L6
.L9:
	ldr	w0, [sp, 4144]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 4144]
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	cmp	w1, w0
	blt	.L22
	ldr	w0, [sp, 4144]
	sub	w0, w0, #1
	str	w0, [sp, 4144]
.L6:
	ldr	w0, [sp, 4144]
	cmp	w0, 0
	bgt	.L9
	b	.L8
.L22:
	nop
.L8:
	ldr	w0, [sp, 4144]
	cmp	w0, 0
	beq	.L10
	ldr	w0, [sp, 4124]
	sub	w0, w0, #1
	str	w0, [sp, 4140]
	b	.L11
.L14:
	ldr	w0, [sp, 4144]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 4140]
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	cmp	w1, w0
	blt	.L23
	ldr	w0, [sp, 4140]
	sub	w0, w0, #1
	str	w0, [sp, 4140]
.L11:
	ldr	w0, [sp, 4140]
	cmp	w0, 0
	bge	.L14
	b	.L13
.L23:
	nop
.L13:
	ldr	w0, [sp, 4144]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	str	w0, [sp, 4132]
	ldr	w0, [sp, 4144]
	sub	w3, w0, #1
	ldrsw	x0, [sp, 4140]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [x1, x0]
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 4140]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [sp, 4132]
	str	w2, [x1, x0]
.L10:
	ldr	w0, [sp, 4144]
	str	w0, [sp, 4136]
	b	.L15
.L16:
	ldrsw	x0, [sp, 4136]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	str	w0, [sp, 4132]
	ldr	w1, [sp, 4124]
	ldr	w0, [sp, 4144]
	add	w1, w1, w0
	ldr	w0, [sp, 4136]
	sub	w0, w1, w0
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [x1, x0]
	ldrsw	x0, [sp, 4136]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	ldr	w1, [sp, 4124]
	ldr	w0, [sp, 4144]
	add	w1, w1, w0
	ldr	w0, [sp, 4136]
	sub	w0, w1, w0
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [sp, 4132]
	str	w2, [x1, x0]
	ldr	w0, [sp, 4136]
	add	w0, w0, 1
	str	w0, [sp, 4136]
.L15:
	ldr	w1, [sp, 4124]
	ldr	w0, [sp, 4144]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 4136]
	cmp	w0, w1
	blt	.L16
	ldr	w0, [sp, 4148]
	add	w0, w0, 1
	str	w0, [sp, 4148]
.L5:
	ldr	w0, [sp, 4120]
	ldr	w1, [sp, 4148]
	cmp	w1, w0
	ble	.L17
	str	wzr, [sp, 4152]
	b	.L18
.L19:
	ldrsw	x0, [sp, 4152]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 4152]
	add	w0, w0, 1
	str	w0, [sp, 4152]
.L18:
	ldr	w0, [sp, 4124]
	sub	w0, w0, #1
	ldr	w1, [sp, 4152]
	cmp	w1, w0
	blt	.L19
	ldrsw	x0, [sp, 4152]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 4156]
	add	w0, w0, 1
	str	w0, [sp, 4156]
.L2:
	ldr	w0, [sp, 4128]
	ldr	w1, [sp, 4156]
	cmp	w1, w0
	ble	.L20
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 4160
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
