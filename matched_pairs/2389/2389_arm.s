	.arch armv8-a
	.file	"2389.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%c"
	.align	3
.LC1:
	.string	"%d"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -240]!
	.cfi_def_cfa_offset 240
	.cfi_offset 29, -240
	.cfi_offset 30, -232
	mov	x29, sp
	stp	xzr, xzr, [sp, 32]
	add	x0, sp, 48
	movi	v0.4s, 0
	stp	q0, q0, [x0]
	stp	q0, q0, [x0, 32]
	umov	w1, v0.b[0]
	strb	w1, [x0, 64]
	str	wzr, [sp, 228]
	b	.L2
.L4:
	add	x0, sp, 31
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldrb	w0, [sp, 31]
	cmp	w0, 47
	bls	.L3
	ldrb	w0, [sp, 31]
	cmp	w0, 57
	bhi	.L3
	ldrb	w0, [sp, 31]
	sub	w0, w0, #48
	and	w2, w0, 255
	ldrsw	x0, [sp, 228]
	add	x1, sp, 168
	strb	w2, [x1, x0]
	ldr	w0, [sp, 228]
	add	w0, w0, 1
	str	w0, [sp, 228]
.L2:
	ldr	w0, [sp, 228]
	cmp	w0, 40
	ble	.L4
.L3:
	str	wzr, [sp, 224]
	b	.L5
.L7:
	add	x0, sp, 31
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldrb	w0, [sp, 31]
	cmp	w0, 47
	bls	.L6
	ldrb	w0, [sp, 31]
	cmp	w0, 57
	bhi	.L6
	ldrb	w0, [sp, 31]
	sub	w0, w0, #48
	and	w2, w0, 255
	ldrsw	x0, [sp, 224]
	add	x1, sp, 120
	strb	w2, [x1, x0]
	ldr	w0, [sp, 224]
	add	w0, w0, 1
	str	w0, [sp, 224]
.L5:
	ldr	w0, [sp, 224]
	cmp	w0, 40
	ble	.L7
.L6:
	ldr	w0, [sp, 228]
	sub	w0, w0, #1
	str	w0, [sp, 236]
	b	.L8
.L13:
	ldr	w0, [sp, 228]
	sub	w1, w0, #1
	ldr	w0, [sp, 236]
	sub	w0, w1, w0
	str	w0, [sp, 220]
	ldr	w0, [sp, 224]
	sub	w0, w0, #1
	str	w0, [sp, 232]
	b	.L9
.L12:
	ldrsw	x0, [sp, 220]
	add	x1, sp, 32
	ldrb	w1, [x1, x0]
	ldrsw	x0, [sp, 236]
	add	x2, sp, 168
	ldrb	w2, [x2, x0]
	ldrsw	x0, [sp, 232]
	add	x3, sp, 120
	ldrb	w0, [x3, x0]
	mul	w0, w2, w0
	and	w0, w0, 255
	add	w0, w1, w0
	and	w2, w0, 255
	ldrsw	x0, [sp, 220]
	add	x1, sp, 32
	strb	w2, [x1, x0]
	ldr	w0, [sp, 220]
	str	w0, [sp, 216]
	b	.L10
.L11:
	ldr	w0, [sp, 216]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 32
	ldrb	w1, [x1, x0]
	ldrsw	x0, [sp, 216]
	add	x2, sp, 32
	ldrb	w2, [x2, x0]
	mov	w0, 52429
	movk	w0, 0xcccc, lsl 16
	umull	x0, w2, w0
	lsr	x0, x0, 32
	lsr	w0, w0, 3
	and	w0, w0, 255
	ldr	w2, [sp, 216]
	add	w3, w2, 1
	add	w0, w1, w0
	and	w2, w0, 255
	sxtw	x0, w3
	add	x1, sp, 32
	strb	w2, [x1, x0]
	ldrsw	x0, [sp, 216]
	add	x1, sp, 32
	ldrb	w1, [x1, x0]
	mov	w0, 52429
	movk	w0, 0xcccc, lsl 16
	umull	x0, w1, w0
	lsr	x0, x0, 32
	lsr	w2, w0, 3
	mov	w0, w2
	lsl	w0, w0, 2
	add	w0, w0, w2
	lsl	w0, w0, 1
	sub	w0, w1, w0
	and	w2, w0, 255
	ldrsw	x0, [sp, 216]
	add	x1, sp, 32
	strb	w2, [x1, x0]
	ldr	w0, [sp, 216]
	add	w0, w0, 1
	str	w0, [sp, 216]
.L10:
	ldrsw	x0, [sp, 216]
	add	x1, sp, 32
	ldrb	w0, [x1, x0]
	cmp	w0, 9
	bhi	.L11
	ldr	w0, [sp, 220]
	add	w0, w0, 1
	str	w0, [sp, 220]
	ldr	w0, [sp, 232]
	sub	w0, w0, #1
	str	w0, [sp, 232]
.L9:
	ldr	w0, [sp, 232]
	cmp	w0, 0
	bge	.L12
	ldr	w0, [sp, 236]
	sub	w0, w0, #1
	str	w0, [sp, 236]
.L8:
	ldr	w0, [sp, 236]
	cmp	w0, 0
	bge	.L13
	ldr	w1, [sp, 228]
	ldr	w0, [sp, 224]
	add	w0, w1, w0
	str	w0, [sp, 236]
	b	.L14
.L16:
	ldr	w0, [sp, 236]
	sub	w0, w0, #1
	str	w0, [sp, 236]
.L14:
	ldrsw	x0, [sp, 236]
	add	x1, sp, 32
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L15
	ldr	w0, [sp, 236]
	cmp	w0, 0
	bgt	.L16
.L15:
	ldr	w0, [sp, 236]
	str	w0, [sp, 232]
	b	.L17
.L18:
	ldrsw	x0, [sp, 232]
	add	x1, sp, 32
	ldrb	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 232]
	sub	w0, w0, #1
	str	w0, [sp, 232]
.L17:
	ldr	w0, [sp, 232]
	cmp	w0, 0
	bge	.L18
	mov	w0, 10
	bl	putchar
	mov	w0, 0
	ldp	x29, x30, [sp], 240
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
