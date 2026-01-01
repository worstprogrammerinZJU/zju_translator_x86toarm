	.arch armv8-a
	.file	"2673.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d%d%d"
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
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	mov	w0, 16960
	movk	w0, 0xf, lsl 16
	str	w0, [sp, 44]
	add	x2, sp, 24
	add	x1, sp, 28
	add	x0, sp, 32
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 40]
	b	.L2
.L5:
	add	x1, sp, 16
	add	x0, sp, 20
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	sdiv	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 16]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	str	w0, [sp, 36]
.L3:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bge	.L4
	ldr	w0, [sp, 36]
	str	w0, [sp, 44]
.L4:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L2:
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bgt	.L6
	str	wzr, [sp, 40]
	b	.L7
.L6:
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L8
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 28]
	mul	w0, w1, w0
	str	w0, [sp, 40]
	b	.L7
.L8:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 44]
	mul	w1, w1, w0
	ldr	w2, [sp, 32]
	ldr	w0, [sp, 44]
	sub	w0, w2, w0
	lsr	w2, w0, 31
	add	w0, w2, w0
	asr	w0, w0, 1
	mov	w2, w0
	ldr	w0, [sp, 28]
	mul	w0, w2, w0
	add	w0, w1, w0
	str	w0, [sp, 40]
.L7:
	ldr	w1, [sp, 40]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
