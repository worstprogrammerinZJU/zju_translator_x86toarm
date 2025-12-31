	.arch armv8-a
	.file	"1363.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"No"
	.align	3
.LC2:
	.string	"Yes"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #4048
	.cfi_def_cfa_offset 4048
	stp	x29, x30, [sp]
	.cfi_offset 29, -4048
	.cfi_offset 30, -4040
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
.L19:
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L3
.L18:
	mov	w0, 1
	str	w0, [sp, 4044]
	b	.L4
.L5:
	add	x1, sp, 32
	ldrsw	x0, [sp, 4044]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 4044]
	add	w0, w0, 1
	str	w0, [sp, 4044]
.L4:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 4044]
	cmp	w1, w0
	blt	.L5
	str	wzr, [sp, 4044]
	b	.L6
.L15:
	ldrsw	x0, [sp, 4044]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	str	w0, [sp, 4036]
	ldr	w0, [sp, 4044]
	add	w0, w0, 1
	str	w0, [sp, 4040]
	b	.L7
.L12:
	ldrsw	x0, [sp, 4040]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 4044]
	lsl	x0, x0, 2
	add	x2, sp, 32
	ldr	w0, [x2, x0]
	cmp	w1, w0
	bgt	.L21
	ldrsw	x0, [sp, 4040]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 4036]
	cmp	w1, w0
	ble	.L22
	ldrsw	x0, [sp, 4040]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	str	w0, [sp, 4036]
	b	.L9
.L21:
	nop
.L9:
	ldr	w0, [sp, 4040]
	add	w0, w0, 1
	str	w0, [sp, 4040]
.L7:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 4040]
	cmp	w1, w0
	blt	.L12
	b	.L11
.L22:
	nop
.L11:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 4040]
	cmp	w1, w0
	blt	.L23
	ldr	w0, [sp, 4044]
	add	w0, w0, 1
	str	w0, [sp, 4044]
.L6:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 4044]
	cmp	w1, w0
	blt	.L15
	b	.L14
.L23:
	nop
.L14:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 4044]
	cmp	w1, w0
	bge	.L16
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
	b	.L17
.L16:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
.L17:
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L3:
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bne	.L18
	mov	w0, 10
	bl	putchar
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L2:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L19
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 4048
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
