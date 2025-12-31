	.arch armv8-a
	.file	"2773.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.align	3
.LC1:
	.string	"%d%d"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	b	.L2
.L21:
	ldr	w0, [sp, 64]
	str	w0, [sp, 72]
	ldr	w0, [sp, 64]
	str	w0, [sp, 92]
	ldr	w0, [sp, 72]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L3
	mov	w0, 2
	str	w0, [sp, 16]
	ldr	w0, [sp, 92]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 92]
.L4:
	ldr	w0, [sp, 72]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 72]
	ldr	w0, [sp, 72]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L4
	mov	w0, 1
	str	w0, [sp, 88]
	b	.L5
.L3:
	str	wzr, [sp, 88]
.L5:
	mov	w0, 3
	str	w0, [sp, 84]
	b	.L6
.L9:
	ldr	w0, [sp, 72]
	ldr	w1, [sp, 84]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 84]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 88]
	add	w1, w0, 1
	str	w1, [sp, 88]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w2, [sp, 84]
	str	w2, [x1, x0]
	ldr	w1, [sp, 92]
	ldr	w0, [sp, 84]
	sdiv	w0, w1, w0
	ldr	w1, [sp, 92]
	sub	w0, w1, w0
	str	w0, [sp, 92]
.L8:
	ldr	w1, [sp, 72]
	ldr	w0, [sp, 84]
	sdiv	w0, w1, w0
	str	w0, [sp, 72]
	ldr	w0, [sp, 72]
	ldr	w1, [sp, 84]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 84]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L8
.L7:
	ldr	w0, [sp, 84]
	add	w0, w0, 2
	str	w0, [sp, 84]
.L6:
	ldr	w0, [sp, 72]
	cmp	w0, 1
	bgt	.L9
	ldr	w0, [sp, 88]
	cmp	w0, 0
	bne	.L10
	ldr	w0, [sp, 88]
	add	w1, w0, 1
	str	w1, [sp, 88]
	ldr	w2, [sp, 64]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 16
	str	w2, [x1, x0]
	ldr	w0, [sp, 64]
	cmp	w0, 1
	beq	.L10
	ldr	w0, [sp, 92]
	sub	w0, w0, #1
	str	w0, [sp, 92]
.L10:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 92]
	sdiv	w1, w1, w0
	ldr	w0, [sp, 64]
	mul	w0, w1, w0
	str	w0, [sp, 68]
	ldr	w0, [sp, 60]
	ldr	w1, [sp, 92]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 92]
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	cmp	w0, 0
	bne	.L11
	ldr	w0, [sp, 92]
	str	w0, [sp, 60]
	ldr	w0, [sp, 64]
	ldr	w1, [sp, 68]
	sub	w0, w1, w0
	str	w0, [sp, 68]
.L11:
	mov	w0, 1
	str	w0, [sp, 76]
	mov	w0, 1
	str	w0, [sp, 84]
	b	.L12
.L20:
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L19:
	str	wzr, [sp, 80]
	b	.L13
.L16:
	ldrsw	x0, [sp, 80]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 76]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L24
	ldr	w0, [sp, 80]
	add	w0, w0, 1
	str	w0, [sp, 80]
.L13:
	ldr	w1, [sp, 80]
	ldr	w0, [sp, 88]
	cmp	w1, w0
	blt	.L16
	b	.L15
.L24:
	nop
.L15:
	ldr	w1, [sp, 80]
	ldr	w0, [sp, 88]
	cmp	w1, w0
	beq	.L25
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	b	.L19
.L25:
	nop
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
.L12:
	ldr	w0, [sp, 60]
	ldr	w1, [sp, 84]
	cmp	w1, w0
	blt	.L20
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 76]
	add	w0, w1, w0
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
.L2:
	add	x1, sp, 60
	add	x0, sp, 64
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L21
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
