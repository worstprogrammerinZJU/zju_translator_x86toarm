	.arch armv8-a
	.file	"2136.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"* "
	.align	3
.LC1:
	.string	"  "
	.align	3
.LC2:
	.string	"*"
	.align	3
.LC3:
	.string	" "
	.align	3
.LC4:
	.string	"%c "
	.align	3
.LC5:
	.string	"Z"
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
	add	x0, sp, 104
	movi	v0.4s, 0
	stp	q0, q0, [x0]
	stp	q0, q0, [x0, 32]
	stp	q0, q0, [x0, 64]
	fmov	x1, d0
	str	x1, [x0, 96]
	str	wzr, [sp, 220]
	b	.L2
.L6:
	add	x0, sp, 24
	bl	gets
	str	wzr, [sp, 216]
	b	.L3
.L5:
	ldrsw	x0, [sp, 216]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 64
	bls	.L4
	ldrsw	x0, [sp, 216]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 90
	bhi	.L4
	ldrsw	x0, [sp, 216]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	sub	w3, w0, #65
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 104
	str	w2, [x1, x0]
.L4:
	ldr	w0, [sp, 216]
	add	w0, w0, 1
	str	w0, [sp, 216]
.L3:
	ldrsw	x0, [sp, 216]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L5
	ldr	w0, [sp, 220]
	add	w0, w0, 1
	str	w0, [sp, 220]
.L2:
	ldr	w0, [sp, 220]
	cmp	w0, 3
	ble	.L6
	ldr	w0, [sp, 104]
	str	w0, [sp, 216]
	mov	w0, 1
	str	w0, [sp, 220]
	b	.L7
.L9:
	ldrsw	x0, [sp, 220]
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 216]
	cmp	w1, w0
	bge	.L8
	ldrsw	x0, [sp, 220]
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w0, [x1, x0]
	str	w0, [sp, 216]
.L8:
	ldr	w0, [sp, 220]
	add	w0, w0, 1
	str	w0, [sp, 220]
.L7:
	ldr	w0, [sp, 220]
	cmp	w0, 25
	ble	.L9
	ldr	w0, [sp, 216]
	str	w0, [sp, 220]
	b	.L10
.L17:
	str	wzr, [sp, 212]
	b	.L11
.L14:
	ldrsw	x0, [sp, 212]
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 220]
	cmp	w1, w0
	bne	.L12
	ldrsw	x0, [sp, 212]
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w0, [x1, x0]
	sub	w2, w0, #1
	ldrsw	x0, [sp, 212]
	lsl	x0, x0, 2
	add	x1, sp, 104
	str	w2, [x1, x0]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L13
.L12:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
.L13:
	ldr	w0, [sp, 212]
	add	w0, w0, 1
	str	w0, [sp, 212]
.L11:
	ldr	w0, [sp, 212]
	cmp	w0, 24
	ble	.L14
	ldrsw	x0, [sp, 212]
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 220]
	cmp	w1, w0
	bne	.L15
	ldrsw	x0, [sp, 212]
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w0, [x1, x0]
	sub	w2, w0, #1
	ldrsw	x0, [sp, 212]
	lsl	x0, x0, 2
	add	x1, sp, 104
	str	w2, [x1, x0]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
	b	.L16
.L15:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
.L16:
	ldr	w0, [sp, 220]
	sub	w0, w0, #1
	str	w0, [sp, 220]
.L10:
	ldr	w0, [sp, 220]
	cmp	w0, 0
	bgt	.L17
	str	wzr, [sp, 220]
	b	.L18
.L19:
	ldr	w0, [sp, 220]
	add	w0, w0, 65
	mov	w1, w0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	ldr	w0, [sp, 220]
	add	w0, w0, 1
	str	w0, [sp, 220]
.L18:
	ldr	w0, [sp, 220]
	cmp	w0, 24
	ble	.L19
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	puts
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
