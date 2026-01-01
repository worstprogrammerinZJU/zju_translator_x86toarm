	.arch armv8-a
	.file	"2407.c"
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
	b	.L2
.L11:
	str	wzr, [sp, 40]
	ldr	w0, [sp, 28]
	str	w0, [sp, 32]
	ldr	w0, [sp, 28]
	str	w0, [sp, 44]
	ldr	w0, [sp, 32]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 44]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 44]
.L4:
	ldr	w0, [sp, 32]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L4
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L5
.L3:
	str	wzr, [sp, 40]
.L5:
	mov	w0, 3
	str	w0, [sp, 36]
	b	.L6
.L9:
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 36]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 36]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L7
	mov	w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 36]
	sdiv	w0, w1, w0
	ldr	w1, [sp, 44]
	sub	w0, w1, w0
	str	w0, [sp, 44]
.L8:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 36]
	sdiv	w0, w1, w0
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 36]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 36]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L8
.L7:
	ldr	w0, [sp, 36]
	add	w0, w0, 2
	str	w0, [sp, 36]
.L6:
	ldr	w0, [sp, 32]
	cmp	w0, 1
	bgt	.L9
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L10
	ldr	w0, [sp, 28]
	cmp	w0, 1
	beq	.L10
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
.L10:
	ldr	w1, [sp, 44]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L2:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L11
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
