	.arch armv8-a
	.file	"1543.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Cube = %d, Triple = (%d,%d,%d)\n"
	.text
	.align	2
	.global	cude
	.type	cude, %function
cude:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	mul	w0, w0, w0
	ldr	w1, [sp, 28]
	mul	w0, w1, w0
	str	w0, [sp, 48]
	mov	w0, 2
	str	w0, [sp, 60]
	b	.L2
.L12:
	ldr	w0, [sp, 60]
	mul	w0, w0, w0
	ldr	w1, [sp, 60]
	mul	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 56]
	b	.L3
.L11:
	ldr	w0, [sp, 56]
	mul	w1, w0, w0
	ldr	w0, [sp, 56]
	mul	w0, w1, w0
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	bge	.L13
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 52]
	b	.L6
.L10:
	ldr	w0, [sp, 52]
	mul	w1, w0, w0
	ldr	w0, [sp, 52]
	mul	w0, w1, w0
	ldr	w1, [sp, 40]
	add	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	bne	.L7
	ldr	w4, [sp, 52]
	ldr	w3, [sp, 56]
	ldr	w2, [sp, 60]
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L8
.L7:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	bgt	.L14
.L8:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L6:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L10
	b	.L9
.L14:
	nop
.L9:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L3:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L11
	b	.L5
.L13:
	nop
.L5:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L2:
	ldr	w0, [sp, 28]
	sub	w0, w0, #2
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L12
	nop
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	cude, .-cude
	.section	.rodata
	.align	3
.LC1:
	.string	"%d"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	mov	w0, 6
	str	w0, [sp, 28]
	b	.L16
.L17:
	ldr	w0, [sp, 28]
	bl	cude
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L16:
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L17
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
