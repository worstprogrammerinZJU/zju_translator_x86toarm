	.arch armv8-a
	.file	"2845.c"
	.text
	.global	s
	.bss
	.align	3
	.type	s, %object
	.size	s, 100
s:
	.zero	100
	.global	t
	.align	3
	.type	t, %object
	.size	t, 100
t:
	.zero	100
	.global	r
	.align	3
	.type	r, %object
	.size	r, 100
r:
	.zero	100
	.text
	.align	2
	.global	reverse
	.type	reverse, %function
reverse:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	strlen
	sub	w0, w0, #1
	str	w0, [sp, 44]
	str	wzr, [sp, 40]
	b	.L2
.L3:
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 39]
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldrsw	x0, [sp, 40]
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [sp, 39]
	strb	w1, [x0]
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L2:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	blt	.L3
	nop
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	reverse, .-reverse
	.align	2
	.global	addition
	.type	addition, %function
addition:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, s
	add	x0, x0, :lo12:s
	bl	strlen
	str	w0, [sp, 20]
	adrp	x0, t
	add	x0, x0, :lo12:t
	bl	strlen
	str	w0, [sp, 16]
	str	wzr, [sp, 24]
	str	wzr, [sp, 28]
	b	.L5
.L9:
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 28]
	ldrb	w1, [x1, x0]
	ldr	w0, [sp, 24]
	and	w0, w0, 255
	add	w0, w1, w0
	and	w1, w0, 255
	adrp	x0, t
	add	x2, x0, :lo12:t
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x2, x0]
	add	w0, w1, w0
	and	w0, w0, 255
	sub	w0, w0, #48
	and	w2, w0, 255
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	strb	w2, [x1, x0]
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 49
	bls	.L6
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	sub	w0, w0, #2
	and	w2, w0, 255
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	strb	w2, [x1, x0]
	mov	w0, 1
	str	w0, [sp, 24]
	b	.L7
.L6:
	str	wzr, [sp, 24]
.L7:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L5:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	bge	.L10
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	blt	.L9
	b	.L10
.L13:
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 28]
	ldrb	w1, [x1, x0]
	ldr	w0, [sp, 24]
	and	w0, w0, 255
	add	w0, w1, w0
	and	w2, w0, 255
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	strb	w2, [x1, x0]
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 49
	bls	.L11
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	sub	w0, w0, #2
	and	w2, w0, 255
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	strb	w2, [x1, x0]
	mov	w0, 1
	str	w0, [sp, 24]
	b	.L12
.L11:
	str	wzr, [sp, 24]
.L12:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L10:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L13
	b	.L14
.L17:
	adrp	x0, t
	add	x1, x0, :lo12:t
	ldrsw	x0, [sp, 28]
	ldrb	w1, [x1, x0]
	ldr	w0, [sp, 24]
	and	w0, w0, 255
	add	w0, w1, w0
	and	w2, w0, 255
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	strb	w2, [x1, x0]
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 49
	bls	.L15
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	sub	w0, w0, #2
	and	w2, w0, 255
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	strb	w2, [x1, x0]
	mov	w0, 1
	str	w0, [sp, 24]
	b	.L16
.L15:
	str	wzr, [sp, 24]
.L16:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L14:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	blt	.L17
	ldr	w0, [sp, 24]
	cmp	w0, 1
	bne	.L20
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	str	w1, [sp, 28]
	adrp	x1, r
	add	x1, x1, :lo12:r
	sxtw	x0, w0
	mov	w2, 49
	strb	w2, [x1, x0]
	b	.L19
.L21:
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	str	w0, [sp, 28]
.L20:
	ldr	w0, [sp, 28]
	cmp	w0, 1
	ble	.L19
	ldr	w0, [sp, 28]
	sub	w2, w0, #1
	adrp	x0, r
	add	x1, x0, :lo12:r
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 48
	beq	.L21
.L19:
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	strb	wzr, [x1, x0]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	addition, .-addition
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%s%s"
	.align	3
.LC2:
	.string	"%d %s\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L23
.L24:
	adrp	x0, t
	add	x2, x0, :lo12:t
	adrp	x0, s
	add	x1, x0, :lo12:s
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	adrp	x0, s
	add	x0, x0, :lo12:s
	bl	reverse
	adrp	x0, t
	add	x0, x0, :lo12:t
	bl	reverse
	bl	addition
	adrp	x0, r
	add	x0, x0, :lo12:r
	bl	reverse
	adrp	x0, r
	add	x2, x0, :lo12:r
	ldr	w1, [sp, 28]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L23:
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L24
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
