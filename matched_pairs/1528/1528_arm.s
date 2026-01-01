	.arch armv8-a
	.file	"1528.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"PERFECTION OUTPUT"
	.align	3
.LC2:
	.string	"%5d  "
	.align	3
.LC3:
	.string	"PERFECT"
	.align	3
.LC4:
	.string	"ABUNDANT"
	.align	3
.LC5:
	.string	"DEFICIENT"
	.align	3
.LC6:
	.string	"END OF OUTPUT"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
	b	.L2
.L12:
	ldr	w0, [sp, 16]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L3
	mov	w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 16]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	add	w0, w0, 3
	str	w0, [sp, 28]
	b	.L4
.L3:
	mov	w0, 2
	str	w0, [sp, 24]
	mov	w0, 1
	str	w0, [sp, 28]
.L4:
	mov	w0, 3
	str	w0, [sp, 20]
	b	.L5
.L7:
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 20]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 20]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L6
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 20]
	sdiv	w1, w1, w0
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	ldr	w1, [sp, 28]
	add	w0, w1, w0
	str	w0, [sp, 28]
.L6:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 20]
.L5:
	ldr	w0, [sp, 20]
	mul	w1, w0, w0
	ldr	w0, [sp, 16]
	cmp	w1, w0
	ble	.L7
	ldr	w0, [sp, 16]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 16]
	cmp	w0, 1
	bne	.L8
	str	wzr, [sp, 28]
.L8:
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bne	.L9
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
	b	.L10
.L9:
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L11
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	puts
	b	.L10
.L11:
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	puts
.L10:
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L2:
	ldr	w0, [sp, 16]
	cmp	w0, 0
	bne	.L12
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	puts
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
