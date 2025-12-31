	.arch armv8-a
	.file	"1852.c"
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
	.string	"%d %d\n"
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
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L2
.L9:
	add	x1, sp, 20
	add	x0, sp, 16
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 32]
	str	wzr, [sp, 36]
	str	wzr, [sp, 40]
	b	.L3
.L8:
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	lsl	w1, w0, 1
	ldr	w0, [sp, 16]
	cmp	w1, w0
	ble	.L4
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	b	.L5
.L4:
	ldr	w0, [sp, 24]
.L5:
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	bge	.L6
	ldr	w0, [sp, 24]
	str	w0, [sp, 32]
.L6:
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bge	.L7
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	str	w0, [sp, 36]
.L7:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L3:
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L8
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 32]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L9
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
