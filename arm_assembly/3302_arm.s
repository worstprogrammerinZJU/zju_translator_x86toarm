	.arch armv8-a
	.file	"3302.c"
	.text
	.global	s
	.bss
	.align	3
	.type	s, %object
	.size	s, 200
s:
	.zero	200
	.global	t
	.align	3
	.type	t, %object
	.size	t, 200
t:
	.zero	200
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.align	3
.LC1:
	.string	"%s%s"
	.align	3
.LC2:
	.string	"YES"
	.align	3
.LC3:
	.string	"NO"
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
	str	wzr, [sp, 28]
	b	.L2
.L14:
	adrp	x0, t
	add	x2, x0, :lo12:t
	adrp	x0, s
	add	x1, x0, :lo12:s
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 24]
	str	wzr, [sp, 20]
	b	.L3
.L6:
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 24]
	ldrb	w1, [x1, x0]
	adrp	x0, t
	add	x2, x0, :lo12:t
	ldrsw	x0, [sp, 20]
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bne	.L4
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L4:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L3:
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 24]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	beq	.L5
	adrp	x0, t
	add	x1, x0, :lo12:t
	ldrsw	x0, [sp, 20]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L6
.L5:
	adrp	x0, t
	add	x1, x0, :lo12:t
	ldrsw	x0, [sp, 20]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L7
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
	b	.L8
.L7:
	str	wzr, [sp, 20]
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	b	.L9
.L12:
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 24]
	ldrb	w1, [x1, x0]
	adrp	x0, t
	add	x2, x0, :lo12:t
	ldrsw	x0, [sp, 20]
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bne	.L10
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L10:
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
.L9:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	blt	.L11
	adrp	x0, t
	add	x1, x0, :lo12:t
	ldrsw	x0, [sp, 20]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L12
.L11:
	adrp	x0, t
	add	x1, x0, :lo12:t
	ldrsw	x0, [sp, 20]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L13
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
	b	.L8
.L13:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
.L8:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L14
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
