	.arch armv8-a
	.file	"3047.c"
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"%d%d%d"
	.align	3
.LC2:
	.string	"monday"
	.align	3
.LC3:
	.string	"tuesday"
	.align	3
.LC4:
	.string	"wednesday"
	.align	3
.LC5:
	.string	"thursday"
	.align	3
.LC6:
	.string	"friday"
	.align	3
.LC7:
	.string	"saturday"
	.align	3
.LC8:
	.string	"sunday"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 24
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	add	x2, sp, 76
	add	x1, sp, 80
	add	x0, sp, 84
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 84]
	sub	w1, w0, #1
	mov	w0, 365
	mul	w0, w1, w0
	str	w0, [sp, 88]
	ldr	w0, [sp, 84]
	sub	w0, w0, #1
	add	w1, w0, 3
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 2
	mov	w2, w0
	ldr	w0, [sp, 84]
	sub	w0, w0, #1
	mov	w1, 34079
	movk	w1, 0x51eb, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 5
	asr	w0, w0, 31
	sub	w0, w0, w1
	add	w1, w2, w0
	ldr	w0, [sp, 84]
	sub	w0, w0, #1
	mov	w2, 34079
	movk	w2, 0x51eb, lsl 16
	smull	x2, w0, w2
	lsr	x2, x2, 32
	asr	w2, w2, 7
	asr	w0, w0, 31
	sub	w0, w2, w0
	add	w0, w1, w0
	ldr	w1, [sp, 88]
	add	w0, w1, w0
	str	w0, [sp, 88]
	str	wzr, [sp, 92]
	b	.L2
.L3:
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 88]
	add	w0, w1, w0
	str	w0, [sp, 88]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
.L2:
	ldr	w0, [sp, 80]
	sub	w0, w0, #1
	ldr	w1, [sp, 92]
	cmp	w1, w0
	blt	.L3
	ldr	w0, [sp, 80]
	cmp	w0, 2
	ble	.L4
	ldr	w0, [sp, 84]
	and	w0, w0, 3
	cmp	w0, 0
	bne	.L5
	ldr	w1, [sp, 84]
	mov	w0, 34079
	movk	w0, 0x51eb, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 5
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 100
	mul	w0, w0, w2
	sub	w0, w1, w0
	cmp	w0, 0
	bne	.L6
.L5:
	ldr	w1, [sp, 84]
	mov	w0, 34079
	movk	w0, 0x51eb, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 7
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 400
	mul	w0, w0, w2
	sub	w0, w1, w0
	cmp	w0, 0
	bne	.L4
.L6:
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
.L4:
	ldr	w0, [sp, 76]
	sub	w0, w0, #1
	ldr	w1, [sp, 88]
	add	w0, w1, w0
	str	w0, [sp, 88]
	ldr	w0, [sp, 88]
	mov	w1, 9363
	movk	w1, 0x9249, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	add	w1, w0, w1
	asr	w2, w1, 2
	asr	w1, w0, 31
	sub	w2, w2, w1
	mov	w1, w2
	lsl	w1, w1, 3
	sub	w1, w1, w2
	sub	w0, w0, w1
	str	w0, [sp, 88]
	ldr	w0, [sp, 88]
	cmp	w0, 6
	beq	.L7
	ldr	w0, [sp, 88]
	cmp	w0, 6
	bgt	.L8
	ldr	w0, [sp, 88]
	cmp	w0, 5
	beq	.L9
	ldr	w0, [sp, 88]
	cmp	w0, 5
	bgt	.L8
	ldr	w0, [sp, 88]
	cmp	w0, 4
	beq	.L10
	ldr	w0, [sp, 88]
	cmp	w0, 4
	bgt	.L8
	ldr	w0, [sp, 88]
	cmp	w0, 3
	beq	.L11
	ldr	w0, [sp, 88]
	cmp	w0, 3
	bgt	.L8
	ldr	w0, [sp, 88]
	cmp	w0, 2
	beq	.L12
	ldr	w0, [sp, 88]
	cmp	w0, 2
	bgt	.L8
	ldr	w0, [sp, 88]
	cmp	w0, 0
	beq	.L13
	ldr	w0, [sp, 88]
	cmp	w0, 1
	beq	.L14
	b	.L8
.L13:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
	b	.L8
.L14:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
	b	.L8
.L12:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	puts
	b	.L8
.L11:
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	puts
	b	.L8
.L10:
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	puts
	b	.L8
.L9:
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	puts
	b	.L8
.L7:
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	puts
	nop
.L8:
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	31
	.word	28
	.word	31
	.word	30
	.word	31
	.word	30
	.word	31
	.word	31
	.word	30
	.word	31
	.word	30
	.word	31
	.text
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
