	.arch armv8-a
	.file	"2039.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #2032
	.cfi_def_cfa_offset 2032
	stp	x29, x30, [sp]
	.cfi_offset 29, -2032
	.cfi_offset 30, -2024
	mov	x29, sp
	add	x0, sp, 2016
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
.L10:
	bl	getchar
	str	wzr, [sp, 2028]
	str	wzr, [sp, 2024]
	mov	w0, 1
	str	w0, [sp, 2020]
	b	.L3
.L5:
	ldr	w1, [sp, 2024]
	ldr	w0, [sp, 2020]
	add	w0, w1, w0
	str	w0, [sp, 2024]
	ldr	w0, [sp, 2016]
	ldr	w1, [sp, 2024]
	cmp	w1, w0
	beq	.L4
	ldr	w0, [sp, 2024]
	cmn	w0, #1
	bne	.L3
.L4:
	ldr	w0, [sp, 2020]
	neg	w0, w0
	str	w0, [sp, 2020]
	ldr	w1, [sp, 2024]
	ldr	w0, [sp, 2020]
	add	w0, w1, w0
	str	w0, [sp, 2024]
	ldr	w0, [sp, 2028]
	add	w0, w0, 1
	str	w0, [sp, 2028]
.L3:
	bl	getchar
	and	w3, w0, 255
	ldrsw	x2, [sp, 2024]
	ldrsw	x1, [sp, 2028]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, 2032
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, w3
	strb	w1, [x0, 2080]
	ldrsw	x2, [sp, 2024]
	ldrsw	x1, [sp, 2028]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, 2032
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	ldrb	w0, [x0, 2080]
	cmp	w0, 10
	bne	.L5
	str	wzr, [sp, 2024]
	b	.L6
.L9:
	str	wzr, [sp, 2020]
	b	.L7
.L8:
	ldrsw	x2, [sp, 2024]
	ldrsw	x1, [sp, 2020]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, 2032
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	ldrb	w0, [x0, 2080]
	bl	putchar
	ldr	w0, [sp, 2020]
	add	w0, w0, 1
	str	w0, [sp, 2020]
.L7:
	ldr	w1, [sp, 2020]
	ldr	w0, [sp, 2028]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 2024]
	add	w0, w0, 1
	str	w0, [sp, 2024]
.L6:
	ldr	w0, [sp, 2016]
	ldr	w1, [sp, 2024]
	cmp	w1, w0
	blt	.L9
	mov	w0, 10
	bl	putchar
	add	x0, sp, 2016
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L2:
	ldr	w0, [sp, 2016]
	cmp	w0, 0
	bne	.L10
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 2032
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
