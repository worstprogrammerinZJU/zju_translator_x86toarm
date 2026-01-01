	.arch armv8-a
	.file	"1740.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"0"
	.align	3
.LC2:
	.string	"1"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	add	x0, sp, 112
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
.L15:
	str	wzr, [sp, 120]
	str	wzr, [sp, 116]
	str	wzr, [sp, 124]
	b	.L3
.L9:
	ldrsw	x0, [sp, 124]
	lsl	x0, x0, 2
	add	x1, sp, 24
	mov	w2, 1
	str	w2, [x1, x0]
	add	x0, sp, 108
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 120]
	b	.L4
.L7:
	ldrsw	x0, [sp, 120]
	lsl	x0, x0, 2
	add	x1, sp, 64
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 108]
	cmp	w1, w0
	bne	.L5
	ldrsw	x0, [sp, 120]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	ldrsw	x0, [sp, 120]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	b	.L6
.L5:
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
.L4:
	ldr	w1, [sp, 120]
	ldr	w0, [sp, 116]
	cmp	w1, w0
	blt	.L7
.L6:
	ldr	w1, [sp, 120]
	ldr	w0, [sp, 116]
	cmp	w1, w0
	bne	.L8
	ldr	w0, [sp, 116]
	add	w1, w0, 1
	str	w1, [sp, 116]
	ldr	w2, [sp, 108]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 64
	str	w2, [x1, x0]
.L8:
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
.L3:
	ldr	w0, [sp, 112]
	ldr	w1, [sp, 124]
	cmp	w1, w0
	blt	.L9
	str	wzr, [sp, 124]
	str	wzr, [sp, 120]
	b	.L10
.L12:
	ldrsw	x0, [sp, 124]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L11
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
.L11:
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
.L10:
	ldr	w1, [sp, 124]
	ldr	w0, [sp, 116]
	cmp	w1, w0
	blt	.L12
	ldr	w0, [sp, 120]
	cmp	w0, 0
	bne	.L13
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
	b	.L14
.L13:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
.L14:
	add	x0, sp, 112
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L2:
	ldr	w0, [sp, 112]
	cmp	w0, 0
	bne	.L15
	mov	w0, 0
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
