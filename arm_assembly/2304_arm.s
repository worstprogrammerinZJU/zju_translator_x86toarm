	.arch armv8-a
	.file	"2304.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.align	3
.LC1:
	.string	"%d%d%d%d"
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
	b	.L2
.L9:
	str	wzr, [sp, 44]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	bge	.L3
	ldr	w0, [sp, 44]
	add	w0, w0, 40
	str	w0, [sp, 44]
.L3:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	ble	.L4
	ldr	w0, [sp, 44]
	add	w0, w0, 40
	str	w0, [sp, 44]
.L4:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bge	.L5
	ldr	w0, [sp, 44]
	add	w0, w0, 40
	str	w0, [sp, 44]
.L5:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	mov	w0, w1
	lsl	w0, w0, 3
	add	w0, w0, w1
	add	w0, w0, 1080
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
.L2:
	add	x3, sp, 28
	add	x2, sp, 32
	add	x1, sp, 36
	add	x0, sp, 40
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L7
.L6:
	mov	w0, 1
	b	.L8
.L7:
	mov	w0, 0
.L8:
	cmp	w0, 0
	bne	.L9
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
