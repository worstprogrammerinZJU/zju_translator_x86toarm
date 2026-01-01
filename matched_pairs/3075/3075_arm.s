	.arch armv8-a
	.file	"3075.c"
	.text
	.global	s
	.bss
	.align	3
	.type	s, %object
	.size	s, 20
s:
	.zero	20
	.text
	.align	2
	.global	find
	.type	find, %function
find:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, 15]
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L2
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 1]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L2
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 2]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L2
	mov	w0, 1
	b	.L3
.L2:
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 3]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L4
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 4]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L4
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 5]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L4
	mov	w0, 1
	b	.L3
.L4:
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 6]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L5
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 7]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L5
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 8]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L5
	mov	w0, 1
	b	.L3
.L5:
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L6
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 3]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L6
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 6]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L6
	mov	w0, 1
	b	.L3
.L6:
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 1]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L7
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 4]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L7
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 7]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L7
	mov	w0, 1
	b	.L3
.L7:
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 2]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L8
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 5]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L8
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 8]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L8
	mov	w0, 1
	b	.L3
.L8:
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L9
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 4]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L9
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 8]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L9
	mov	w0, 1
	b	.L3
.L9:
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 2]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L10
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 4]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L10
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 6]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L10
	mov	w0, 1
	b	.L3
.L10:
	mov	w0, 0
.L3:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	find, .-find
	.section	.rodata
	.align	3
.LC0:
	.string	"valid"
	.align	3
.LC1:
	.string	"invalid"
	.align	3
.LC2:
	.string	"%s"
	.align	3
.LC3:
	.string	"end"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	b	.L12
.L22:
	str	wzr, [sp, 36]
	ldr	w0, [sp, 36]
	str	w0, [sp, 40]
	str	wzr, [sp, 32]
	str	wzr, [sp, 44]
	b	.L13
.L16:
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 44]
	ldrb	w0, [x1, x0]
	cmp	w0, 88
	bne	.L14
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L14:
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 44]
	ldrb	w0, [x1, x0]
	cmp	w0, 79
	bne	.L15
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L15:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L13:
	ldr	w0, [sp, 44]
	cmp	w0, 8
	ble	.L16
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	beq	.L17
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bne	.L18
.L17:
	mov	w0, 88
	bl	find
	str	w0, [sp, 28]
	mov	w0, 79
	bl	find
	str	w0, [sp, 24]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	bne	.L19
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L19
	ldr	w0, [sp, 24]
	cmp	w0, 1
	bne	.L19
	mov	w0, 1
	str	w0, [sp, 32]
	b	.L18
.L19:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bne	.L20
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L20
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L20
	mov	w0, 1
	str	w0, [sp, 32]
	b	.L18
.L20:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	add	w0, w1, w0
	cmp	w0, 9
	bne	.L18
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L18
	mov	w0, 1
	str	w0, [sp, 32]
.L18:
	ldr	w0, [sp, 32]
	cmp	w0, 0
	beq	.L21
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	puts
	b	.L12
.L21:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
.L12:
	adrp	x0, s
	add	x1, x0, :lo12:s
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, s
	add	x0, x0, :lo12:s
	bl	strcmp
	cmp	w0, 0
	bne	.L22
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
