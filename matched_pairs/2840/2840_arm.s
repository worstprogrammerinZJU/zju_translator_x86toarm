	.arch armv8-a
	.file	"2840.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%s"
	.align	3
.LC2:
	.string	"%d\n"
	.align	3
.LC3:
	.string	"0"
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
	str	wzr, [sp, 44]
	b	.L2
.L11:
	str	wzr, [sp, 36]
	str	wzr, [sp, 32]
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 40]
	b	.L3
.L4:
	ldr	w1, [sp, 36]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w2, w0
	ldrsw	x0, [sp, 40]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	add	w0, w2, w0
	sub	w0, w0, #48
	str	w0, [sp, 36]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L3:
	ldrsw	x0, [sp, 40]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 58
	bne	.L4
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	b	.L5
.L6:
	ldr	w1, [sp, 32]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w2, w0
	ldrsw	x0, [sp, 40]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	add	w0, w2, w0
	sub	w0, w0, #48
	str	w0, [sp, 32]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L5:
	ldrsw	x0, [sp, 40]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 36]
	add	w0, w0, 12
	str	w0, [sp, 36]
	ldr	w2, [sp, 36]
	mov	w0, 43691
	movk	w0, 0x2aaa, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 2
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	lsl	w0, w0, 3
	sub	w1, w2, w0
	cmp	w1, 0
	beq	.L8
	ldr	w2, [sp, 36]
	mov	w0, 43691
	movk	w0, 0x2aaa, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 2
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	lsl	w0, w0, 3
	sub	w1, w2, w0
	b	.L9
.L8:
	mov	w1, 24
.L9:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L10
.L7:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
.L10:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L11
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
