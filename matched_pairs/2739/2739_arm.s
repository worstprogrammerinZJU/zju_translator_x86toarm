	.arch armv8-a
	.file	"2739.c"
	.text
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
	mov	x12, 4960
	sub	sp, sp, x12
	.cfi_def_cfa_offset 4960
	stp	x29, x30, [sp]
	.cfi_offset 29, -4960
	.cfi_offset 30, -4952
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, 4916
	mov	x2, x1
	mov	w1, 0
	bl	memset
	mov	w0, 2
	str	w0, [sp, 24]
	mov	w0, 3
	str	w0, [sp, 28]
	mov	w0, 2
	str	w0, [sp, 4948]
	mov	w0, 5
	str	w0, [sp, 4956]
	b	.L2
.L8:
	mov	w0, 1
	str	w0, [sp, 4952]
	b	.L3
.L6:
	ldrsw	x0, [sp, 4952]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 4956]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L22
	ldr	w0, [sp, 4952]
	add	w0, w0, 1
	str	w0, [sp, 4952]
.L3:
	ldr	w1, [sp, 4952]
	ldr	w0, [sp, 4948]
	cmp	w1, w0
	blt	.L6
	b	.L5
.L22:
	nop
.L5:
	ldr	w1, [sp, 4952]
	ldr	w0, [sp, 4948]
	cmp	w1, w0
	bne	.L7
	ldr	w0, [sp, 4948]
	add	w1, w0, 1
	str	w1, [sp, 4948]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [sp, 4956]
	str	w2, [x1, x0]
.L7:
	ldr	w0, [sp, 4956]
	add	w0, w0, 2
	str	w0, [sp, 4956]
.L2:
	ldr	w1, [sp, 4956]
	mov	w0, 9999
	cmp	w1, w0
	ble	.L8
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L9
.L20:
	str	wzr, [sp, 4944]
	str	wzr, [sp, 4956]
	str	wzr, [sp, 4948]
	str	wzr, [sp, 4952]
	b	.L10
.L11:
	ldrsw	x0, [sp, 4956]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 4948]
	add	w0, w1, w0
	str	w0, [sp, 4948]
	ldr	w0, [sp, 4956]
	add	w0, w0, 1
	str	w0, [sp, 4956]
.L10:
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 4948]
	cmp	w1, w0
	blt	.L11
	b	.L12
.L13:
	ldr	w0, [sp, 4952]
	add	w1, w0, 1
	str	w1, [sp, 4952]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 4948]
	sub	w0, w1, w0
	str	w0, [sp, 4948]
.L12:
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 4948]
	cmp	w1, w0
	bgt	.L13
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 4948]
	cmp	w1, w0
	bne	.L15
	ldr	w0, [sp, 4944]
	add	w0, w0, 1
	str	w0, [sp, 4944]
	b	.L15
.L19:
	ldrsw	x0, [sp, 4956]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 4948]
	add	w0, w1, w0
	str	w0, [sp, 4948]
	b	.L16
.L17:
	ldr	w0, [sp, 4952]
	add	w1, w0, 1
	str	w1, [sp, 4952]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 4948]
	sub	w0, w1, w0
	str	w0, [sp, 4948]
.L16:
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 4948]
	cmp	w1, w0
	bgt	.L17
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 4948]
	cmp	w1, w0
	bne	.L18
	ldr	w0, [sp, 4944]
	add	w0, w0, 1
	str	w0, [sp, 4944]
.L18:
	ldr	w0, [sp, 4956]
	add	w0, w0, 1
	str	w0, [sp, 4956]
.L15:
	ldrsw	x0, [sp, 4956]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	ble	.L19
	ldr	w1, [sp, 4944]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L9:
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L20
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 4960
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
