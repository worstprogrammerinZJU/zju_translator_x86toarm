	.arch armv8-a
	.file	"2993.c"
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"%s\n%s\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -496]!
	.cfi_def_cfa_offset 496
	.cfi_offset 29, -496
	.cfi_offset 30, -488
	mov	x29, sp
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 120
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldrh	w1, [x1, 32]
	strh	w1, [x0, 32]
	str	wzr, [sp, 154]
	strh	wzr, [sp, 158]
	str	wzr, [sp, 492]
	b	.L2
.L9:
	str	wzr, [sp, 488]
	b	.L3
.L4:
	ldrsw	x2, [sp, 488]
	ldrsw	x1, [sp, 492]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, 496
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, 124
	strb	w1, [x0, 3760]
	ldr	w0, [sp, 488]
	add	w0, w0, 4
	str	w0, [sp, 488]
.L3:
	ldr	w0, [sp, 488]
	cmp	w0, 33
	ble	.L4
	ldr	w0, [sp, 492]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	lsl	w0, w0, 2
	add	w0, w0, 1
	str	w0, [sp, 488]
	b	.L5
.L6:
	ldrsw	x2, [sp, 488]
	ldrsw	x1, [sp, 492]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, 496
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, 46
	strb	w1, [x0, 3760]
	ldr	w0, [sp, 488]
	add	w0, w0, 1
	sxtw	x2, w0
	ldrsw	x1, [sp, 492]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, 496
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, 46
	strb	w1, [x0, 3760]
	ldr	w0, [sp, 488]
	add	w0, w0, 2
	sxtw	x2, w0
	ldrsw	x1, [sp, 492]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, 496
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, 46
	strb	w1, [x0, 3760]
	ldr	w0, [sp, 488]
	add	w0, w0, 8
	str	w0, [sp, 488]
.L5:
	ldr	w0, [sp, 488]
	cmp	w0, 33
	ble	.L6
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	lsl	w0, w0, 2
	add	w0, w0, 1
	str	w0, [sp, 488]
	b	.L7
.L8:
	ldrsw	x2, [sp, 488]
	ldrsw	x1, [sp, 492]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, 496
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, 58
	strb	w1, [x0, 3760]
	ldr	w0, [sp, 488]
	add	w0, w0, 1
	sxtw	x2, w0
	ldrsw	x1, [sp, 492]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, 496
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, 58
	strb	w1, [x0, 3760]
	ldr	w0, [sp, 488]
	add	w0, w0, 2
	sxtw	x2, w0
	ldrsw	x1, [sp, 492]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, 496
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, 58
	strb	w1, [x0, 3760]
	ldr	w0, [sp, 488]
	add	w0, w0, 8
	str	w0, [sp, 488]
.L7:
	ldr	w0, [sp, 488]
	cmp	w0, 33
	ble	.L8
	ldrsw	x1, [sp, 492]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x1, sp, 193
	strb	wzr, [x1, x0]
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	str	w0, [sp, 492]
.L2:
	ldr	w0, [sp, 492]
	cmp	w0, 7
	ble	.L9
	add	x0, sp, 16
	bl	gets
	mov	w0, 6
	str	w0, [sp, 492]
	b	.L10
.L14:
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 75
	beq	.L11
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 81
	beq	.L11
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 82
	beq	.L11
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 66
	beq	.L11
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 78
	bne	.L12
.L11:
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	sub	w0, w0, #97
	lsl	w0, w0, 2
	add	w0, w0, 2
	str	w0, [sp, 484]
	ldr	w0, [sp, 492]
	add	w0, w0, 2
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	mov	w1, w0
	mov	w0, 56
	sub	w0, w0, w1
	str	w0, [sp, 488]
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w3, [x1, x0]
	ldrsw	x2, [sp, 484]
	ldrsw	x1, [sp, 488]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, 496
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, w3
	strb	w1, [x0, 3760]
	ldr	w0, [sp, 492]
	add	w0, w0, 2
	str	w0, [sp, 492]
	b	.L13
.L12:
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 44
	bne	.L13
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 96
	bls	.L13
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 104
	bhi	.L13
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	sub	w0, w0, #97
	lsl	w0, w0, 2
	add	w0, w0, 2
	str	w0, [sp, 484]
	ldr	w0, [sp, 492]
	add	w0, w0, 2
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	mov	w1, w0
	mov	w0, 56
	sub	w0, w0, w1
	str	w0, [sp, 488]
	ldrsw	x2, [sp, 484]
	ldrsw	x1, [sp, 488]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, 496
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, 80
	strb	w1, [x0, 3760]
	ldr	w0, [sp, 492]
	add	w0, w0, 2
	str	w0, [sp, 492]
.L13:
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	str	w0, [sp, 492]
.L10:
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L14
	add	x0, sp, 16
	bl	gets
	mov	w0, 6
	str	w0, [sp, 492]
	b	.L15
.L19:
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 75
	beq	.L16
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 81
	beq	.L16
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 82
	beq	.L16
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 66
	beq	.L16
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 78
	bne	.L17
.L16:
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	sub	w0, w0, #97
	lsl	w0, w0, 2
	add	w0, w0, 2
	str	w0, [sp, 484]
	ldr	w0, [sp, 492]
	add	w0, w0, 2
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	mov	w1, w0
	mov	w0, 56
	sub	w0, w0, w1
	str	w0, [sp, 488]
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	add	w0, w0, 32
	and	w3, w0, 255
	ldrsw	x2, [sp, 484]
	ldrsw	x1, [sp, 488]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, 496
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, w3
	strb	w1, [x0, 3760]
	ldr	w0, [sp, 492]
	add	w0, w0, 2
	str	w0, [sp, 492]
	b	.L18
.L17:
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 44
	bne	.L18
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 96
	bls	.L18
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 104
	bhi	.L18
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	sub	w0, w0, #97
	lsl	w0, w0, 2
	add	w0, w0, 2
	str	w0, [sp, 484]
	ldr	w0, [sp, 492]
	add	w0, w0, 2
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	mov	w1, w0
	mov	w0, 56
	sub	w0, w0, w1
	str	w0, [sp, 488]
	ldrsw	x2, [sp, 484]
	ldrsw	x1, [sp, 488]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, 496
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, 112
	strb	w1, [x0, 3760]
	ldr	w0, [sp, 492]
	add	w0, w0, 2
	str	w0, [sp, 492]
.L18:
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	str	w0, [sp, 492]
.L15:
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L19
	str	wzr, [sp, 492]
	b	.L20
.L21:
	add	x2, sp, 160
	ldrsw	x1, [sp, 492]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x1, x2, x0
	add	x0, sp, 120
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	str	w0, [sp, 492]
.L20:
	ldr	w0, [sp, 492]
	cmp	w0, 7
	ble	.L21
	add	x0, sp, 120
	bl	puts
	mov	w0, 0
	ldp	x29, x30, [sp], 496
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
	.string	"+---+---+---+---+---+---+---+---+"
	.zero	6
	.text
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
