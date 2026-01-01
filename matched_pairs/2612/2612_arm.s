	.arch armv8-a
	.file	"2612.c"
	.text
	.global	n
	.bss
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	f
	.align	3
	.type	f, %object
	.size	f, 144
f:
	.zero	144
	.text
	.align	2
	.global	add
	.type	add, %function
add:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	sub	w4, w0, #1
	ldr	w0, [sp, 8]
	sub	w5, w0, #1
	adrp	x0, f
	add	x3, x0, :lo12:f
	sxtw	x2, w5
	sxtw	x1, w4
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	add	w0, w0, 1
	and	w6, w0, 255
	adrp	x0, f
	add	x3, x0, :lo12:f
	sxtw	x2, w5
	sxtw	x1, w4
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, w6
	strb	w1, [x0]
	ldr	w0, [sp, 12]
	sub	w4, w0, #1
	adrp	x0, f
	add	x3, x0, :lo12:f
	ldrsw	x2, [sp, 8]
	sxtw	x1, w4
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	add	w0, w0, 1
	and	w5, w0, 255
	adrp	x0, f
	add	x3, x0, :lo12:f
	ldrsw	x2, [sp, 8]
	sxtw	x1, w4
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, w5
	strb	w1, [x0]
	ldr	w0, [sp, 12]
	sub	w4, w0, #1
	ldr	w0, [sp, 8]
	add	w5, w0, 1
	adrp	x0, f
	add	x3, x0, :lo12:f
	sxtw	x2, w5
	sxtw	x1, w4
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	add	w0, w0, 1
	and	w6, w0, 255
	adrp	x0, f
	add	x3, x0, :lo12:f
	sxtw	x2, w5
	sxtw	x1, w4
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, w6
	strb	w1, [x0]
	ldr	w0, [sp, 8]
	sub	w4, w0, #1
	adrp	x0, f
	add	x3, x0, :lo12:f
	sxtw	x2, w4
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	add	w0, w0, 1
	and	w5, w0, 255
	adrp	x0, f
	add	x3, x0, :lo12:f
	sxtw	x2, w4
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, w5
	strb	w1, [x0]
	ldr	w0, [sp, 8]
	add	w4, w0, 1
	adrp	x0, f
	add	x3, x0, :lo12:f
	sxtw	x2, w4
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	add	w0, w0, 1
	and	w5, w0, 255
	adrp	x0, f
	add	x3, x0, :lo12:f
	sxtw	x2, w4
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, w5
	strb	w1, [x0]
	ldr	w0, [sp, 12]
	add	w4, w0, 1
	ldr	w0, [sp, 8]
	sub	w5, w0, #1
	adrp	x0, f
	add	x3, x0, :lo12:f
	sxtw	x2, w5
	sxtw	x1, w4
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	add	w0, w0, 1
	and	w6, w0, 255
	adrp	x0, f
	add	x3, x0, :lo12:f
	sxtw	x2, w5
	sxtw	x1, w4
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, w6
	strb	w1, [x0]
	ldr	w0, [sp, 12]
	add	w4, w0, 1
	adrp	x0, f
	add	x3, x0, :lo12:f
	ldrsw	x2, [sp, 8]
	sxtw	x1, w4
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	add	w0, w0, 1
	and	w5, w0, 255
	adrp	x0, f
	add	x3, x0, :lo12:f
	ldrsw	x2, [sp, 8]
	sxtw	x1, w4
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, w5
	strb	w1, [x0]
	ldr	w0, [sp, 12]
	add	w4, w0, 1
	ldr	w0, [sp, 8]
	add	w5, w0, 1
	adrp	x0, f
	add	x3, x0, :lo12:f
	sxtw	x2, w5
	sxtw	x1, w4
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	add	w0, w0, 1
	and	w6, w0, 255
	adrp	x0, f
	add	x3, x0, :lo12:f
	sxtw	x2, w5
	sxtw	x1, w4
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, w6
	strb	w1, [x0]
	adrp	x0, f
	add	x3, x0, :lo12:f
	ldrsw	x2, [sp, 8]
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 9
	strb	w1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	add, .-add
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -160]!
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp
	str	wzr, [sp, 148]
	add	x0, sp, 24
	movi	v0.4s, 0
	stp	q0, q0, [x0]
	stp	q0, q0, [x0, 32]
	stp	q0, q0, [x0, 64]
	str	q0, [x0, 96]
	str	q0, [x0, 105]
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 156]
	b	.L3
.L7:
	mov	w0, 1
	str	w0, [sp, 152]
	b	.L4
.L6:
	bl	getchar
	cmp	w0, 42
	bne	.L5
	ldr	w1, [sp, 152]
	ldr	w0, [sp, 156]
	bl	add
.L5:
	ldr	w0, [sp, 152]
	add	w0, w0, 1
	str	w0, [sp, 152]
.L4:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 152]
	cmp	w1, w0
	ble	.L6
	bl	getchar
	ldr	w0, [sp, 156]
	add	w0, w0, 1
	str	w0, [sp, 156]
.L3:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 156]
	cmp	w1, w0
	ble	.L7
	mov	w0, 1
	str	w0, [sp, 156]
	b	.L8
.L12:
	mov	w0, 1
	str	w0, [sp, 152]
	b	.L9
.L11:
	bl	getchar
	cmp	w0, 120
	bne	.L10
	ldrsw	x2, [sp, 152]
	ldrsw	x1, [sp, 156]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	add	x0, x0, 160
	add	x0, sp, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0, -136]
	adrp	x0, f
	add	x3, x0, :lo12:f
	ldrsw	x2, [sp, 152]
	ldrsw	x1, [sp, 156]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 8
	bls	.L10
	mov	w0, 1
	str	w0, [sp, 148]
.L10:
	ldr	w0, [sp, 152]
	add	w0, w0, 1
	str	w0, [sp, 152]
.L9:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 152]
	cmp	w1, w0
	ble	.L11
	bl	getchar
	ldr	w0, [sp, 156]
	add	w0, w0, 1
	str	w0, [sp, 156]
.L8:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 156]
	cmp	w1, w0
	ble	.L12
	mov	w0, 1
	str	w0, [sp, 156]
	b	.L13
.L19:
	mov	w0, 1
	str	w0, [sp, 152]
	b	.L14
.L18:
	adrp	x0, f
	add	x3, x0, :lo12:f
	ldrsw	x2, [sp, 152]
	ldrsw	x1, [sp, 156]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 8
	bls	.L15
	ldr	w0, [sp, 148]
	cmp	w0, 1
	bne	.L15
	mov	w0, 42
	bl	putchar
	b	.L16
.L15:
	ldrsw	x2, [sp, 152]
	ldrsw	x1, [sp, 156]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	add	x0, x0, 160
	add	x0, sp, x0
	add	x0, x0, x2
	ldrb	w0, [x0, -136]
	cmp	w0, 1
	bne	.L17
	adrp	x0, f
	add	x3, x0, :lo12:f
	ldrsw	x2, [sp, 152]
	ldrsw	x1, [sp, 156]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	add	w0, w0, 48
	bl	putchar
	b	.L16
.L17:
	mov	w0, 46
	bl	putchar
.L16:
	ldr	w0, [sp, 152]
	add	w0, w0, 1
	str	w0, [sp, 152]
.L14:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 152]
	cmp	w1, w0
	ble	.L18
	mov	w0, 10
	bl	putchar
	ldr	w0, [sp, 156]
	add	w0, w0, 1
	str	w0, [sp, 156]
.L13:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 156]
	cmp	w1, w0
	ble	.L19
	mov	w0, 0
	ldp	x29, x30, [sp], 160
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
