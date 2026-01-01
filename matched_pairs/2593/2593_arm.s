	.arch armv8-a
	.file	"2593.c"
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
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
.L13:
	str	wzr, [sp, 52]
	str	wzr, [sp, 48]
	mov	w0, -1001
	str	w0, [sp, 60]
	str	wzr, [sp, 56]
	mov	w0, -1001
	str	w0, [sp, 40]
	mov	w0, -1001
	str	w0, [sp, 36]
	str	wzr, [sp, 44]
	b	.L3
.L10:
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bge	.L4
	ldr	w0, [sp, 40]
	str	w0, [sp, 36]
	ldr	w0, [sp, 28]
	str	w0, [sp, 40]
	b	.L5
.L4:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bge	.L5
	ldr	w0, [sp, 28]
	str	w0, [sp, 36]
.L5:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 52]
	add	w0, w1, w0
	str	w0, [sp, 52]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 48]
	add	w0, w1, w0
	str	w0, [sp, 48]
	ldr	w0, [sp, 48]
	cmp	w0, 0
	ble	.L6
	str	wzr, [sp, 48]
.L6:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bge	.L7
	ldr	w0, [sp, 48]
	str	w0, [sp, 56]
.L7:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 56]
	sub	w0, w1, w0
	ldr	w1, [sp, 60]
	cmp	w1, w0
	bge	.L8
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 56]
	sub	w0, w1, w0
	str	w0, [sp, 60]
.L8:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bgt	.L9
	str	wzr, [sp, 52]
	str	wzr, [sp, 48]
	str	wzr, [sp, 56]
.L9:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L3:
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L10
	ldr	w0, [sp, 60]
	cmp	w0, 0
	beq	.L11
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bne	.L12
.L11:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	add	w0, w1, w0
	str	w0, [sp, 60]
.L12:
	ldr	w1, [sp, 60]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L2:
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bne	.L13
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
