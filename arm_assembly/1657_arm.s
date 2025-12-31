	.arch armv8-a
	.file	"1657.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%s%s"
	.align	3
.LC2:
	.string	"%d %d %d "
	.align	3
.LC3:
	.string	"Inf"
	.align	3
.LC4:
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
	str	wzr, [sp, 48]
	b	.L2
.L16:
	add	x1, sp, 16
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldrb	w1, [sp, 24]
	ldrb	w0, [sp, 16]
	cmp	w1, w0
	bls	.L3
	ldrb	w0, [sp, 24]
	mov	w1, w0
	ldrb	w0, [sp, 16]
	sub	w0, w1, w0
	str	w0, [sp, 44]
	b	.L4
.L3:
	ldrb	w0, [sp, 16]
	mov	w1, w0
	ldrb	w0, [sp, 24]
	sub	w0, w1, w0
	str	w0, [sp, 44]
.L4:
	ldrb	w1, [sp, 25]
	ldrb	w0, [sp, 17]
	cmp	w1, w0
	bls	.L5
	ldrb	w0, [sp, 25]
	mov	w1, w0
	ldrb	w0, [sp, 17]
	sub	w0, w1, w0
	str	w0, [sp, 40]
	b	.L6
.L5:
	ldrb	w0, [sp, 17]
	mov	w1, w0
	ldrb	w0, [sp, 25]
	sub	w0, w1, w0
	str	w0, [sp, 40]
.L6:
	ldr	w0, [sp, 44]
	ldr	w2, [sp, 40]
	ldr	w1, [sp, 40]
	cmp	w2, w0
	csel	w0, w1, w0, ge
	str	w0, [sp, 36]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L7
	str	wzr, [sp, 60]
	str	wzr, [sp, 56]
	str	wzr, [sp, 52]
	b	.L8
.L7:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w1, w0
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L9
	mov	w0, -1
	str	w0, [sp, 52]
	mov	w0, 2
	str	w0, [sp, 60]
	b	.L10
.L9:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bne	.L11
	mov	w0, 1
	str	w0, [sp, 52]
	mov	w0, 1
	str	w0, [sp, 60]
	b	.L10
.L11:
	mov	w0, 2
	str	w0, [sp, 52]
	mov	w0, 2
	str	w0, [sp, 60]
.L10:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	beq	.L12
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L13
.L12:
	mov	w0, 1
	str	w0, [sp, 56]
	mov	w0, 1
	str	w0, [sp, 60]
	b	.L8
.L13:
	mov	w0, 2
	str	w0, [sp, 56]
.L8:
	ldr	w3, [sp, 56]
	ldr	w2, [sp, 60]
	ldr	w1, [sp, 36]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 52]
	cmn	w0, #1
	bne	.L14
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
	b	.L15
.L14:
	ldr	w1, [sp, 52]
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
.L15:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L2:
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 48]
	cmp	w1, w0
	blt	.L16
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
