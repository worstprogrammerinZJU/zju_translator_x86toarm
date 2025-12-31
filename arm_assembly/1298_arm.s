	.arch armv8-a
	.file	"1298.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"END"
	.align	3
.LC1:
	.string	"START"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -224]!
	.cfi_def_cfa_offset 224
	.cfi_offset 29, -224
	.cfi_offset 30, -216
	mov	x29, sp
	add	x0, sp, 16
	bl	gets
	b	.L2
.L10:
	add	x0, sp, 16
	bl	gets
	b	.L3
.L9:
	str	wzr, [sp, 220]
	b	.L4
.L8:
	ldrsw	x0, [sp, 220]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 69
	bls	.L5
	ldrsw	x0, [sp, 220]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 90
	bhi	.L5
	ldrsw	x0, [sp, 220]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	sub	w0, w0, #5
	bl	putchar
	b	.L6
.L5:
	ldrsw	x0, [sp, 220]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 64
	bls	.L7
	ldrsw	x0, [sp, 220]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 69
	bhi	.L7
	ldrsw	x0, [sp, 220]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	add	w0, w0, 21
	bl	putchar
	b	.L6
.L7:
	ldrsw	x0, [sp, 220]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	bl	putchar
.L6:
	ldr	w0, [sp, 220]
	add	w0, w0, 1
	str	w0, [sp, 220]
.L4:
	ldrsw	x0, [sp, 220]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L8
	mov	w0, 10
	bl	putchar
	add	x0, sp, 16
	bl	gets
.L3:
	add	x2, sp, 16
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L9
	add	x0, sp, 16
	bl	gets
.L2:
	add	x2, sp, 16
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L10
	mov	w0, 0
	ldp	x29, x30, [sp], 224
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
