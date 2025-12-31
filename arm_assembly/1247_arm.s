	.arch armv8-a
	.file	"1247.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"Sam stops at position %d and Ella stops at position %d.\n"
	.align	3
.LC2:
	.string	"No equal partitioning."
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -160]!
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp
	b	.L2
.L10:
	str	wzr, [sp, 148]
	mov	w0, 1
	str	w0, [sp, 156]
	b	.L3
.L4:
	add	x1, sp, 16
	ldrsw	x0, [sp, 156]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldrsw	x0, [sp, 156]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 148]
	add	w0, w1, w0
	str	w0, [sp, 148]
	ldr	w0, [sp, 156]
	add	w0, w0, 1
	str	w0, [sp, 156]
.L3:
	ldr	w0, [sp, 144]
	ldr	w1, [sp, 156]
	cmp	w1, w0
	ble	.L4
	str	wzr, [sp, 152]
	mov	w0, 1
	str	w0, [sp, 156]
	b	.L5
.L8:
	ldrsw	x0, [sp, 156]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 152]
	add	w0, w1, w0
	str	w0, [sp, 152]
	ldr	w0, [sp, 152]
	lsl	w0, w0, 1
	ldr	w1, [sp, 148]
	cmp	w1, w0
	beq	.L12
	ldr	w0, [sp, 156]
	add	w0, w0, 1
	str	w0, [sp, 156]
.L5:
	ldr	w0, [sp, 144]
	ldr	w1, [sp, 156]
	cmp	w1, w0
	ble	.L8
	b	.L7
.L12:
	nop
.L7:
	ldr	w0, [sp, 144]
	ldr	w1, [sp, 156]
	cmp	w1, w0
	bgt	.L9
	ldr	w0, [sp, 156]
	add	w0, w0, 1
	mov	w2, w0
	ldr	w1, [sp, 156]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L2
.L9:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
.L2:
	add	x0, sp, 144
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 144]
	cmp	w0, 0
	bne	.L10
	mov	w0, 0
	ldp	x29, x30, [sp], 160
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
