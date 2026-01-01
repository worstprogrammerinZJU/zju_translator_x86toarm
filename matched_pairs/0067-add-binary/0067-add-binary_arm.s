	.arch armv8-a
	.file	"0067-add-binary.c"
	.text
	.align	2
	.global	addBinary
	.type	addBinary, %function
addBinary:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -80
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	strlen
	mov	x19, x0
	ldr	x0, [sp, 32]
	bl	strlen
	cmp	x19, x0
	bls	.L2
	ldr	x0, [sp, 40]
	bl	strlen
	b	.L3
.L2:
	ldr	x0, [sp, 32]
	bl	strlen
.L3:
	str	w0, [sp, 84]
	ldr	w0, [sp, 84]
	add	w0, w0, 2
	sxtw	x0, w0
	bl	malloc
	str	x0, [sp, 72]
	ldr	w0, [sp, 84]
	add	w0, w0, 2
	sxtw	x0, w0
	mov	x2, x0
	mov	w1, 0
	ldr	x0, [sp, 72]
	bl	memset
	str	wzr, [sp, 92]
	str	wzr, [sp, 88]
	b	.L4
.L9:
	ldrsw	x19, [sp, 88]
	ldr	x0, [sp, 40]
	bl	strlen
	cmp	x19, x0
	bcs	.L5
	ldr	x0, [sp, 40]
	bl	strlen
	mov	x1, x0
	ldrsw	x0, [sp, 88]
	sub	x0, x1, x0
	sub	x0, x0, #1
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w0, w0, #48
	b	.L6
.L5:
	mov	w0, 0
.L6:
	str	w0, [sp, 68]
	ldrsw	x19, [sp, 88]
	ldr	x0, [sp, 32]
	bl	strlen
	cmp	x19, x0
	bcs	.L7
	ldr	x0, [sp, 32]
	bl	strlen
	mov	x1, x0
	ldrsw	x0, [sp, 88]
	sub	x0, x1, x0
	sub	x0, x0, #1
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w0, w0, #48
	b	.L8
.L7:
	mov	w0, 0
.L8:
	str	w0, [sp, 64]
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 64]
	add	w0, w1, w0
	ldr	w1, [sp, 92]
	add	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	and	w0, w0, 255
	and	w0, w0, 1
	and	w0, w0, 255
	add	w0, w0, 48
	strb	w0, [sp, 59]
	ldr	w0, [sp, 60]
	lsr	w0, w0, 1
	str	w0, [sp, 92]
	ldr	x0, [sp, 72]
	add	x19, x0, 1
	ldr	x0, [sp, 72]
	bl	strlen
	mov	x2, x0
	ldr	x1, [sp, 72]
	mov	x0, x19
	bl	memmove
	ldr	x0, [sp, 72]
	ldrb	w1, [sp, 59]
	strb	w1, [x0]
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
.L4:
	ldr	w1, [sp, 88]
	ldr	w0, [sp, 84]
	cmp	w1, w0
	blt	.L9
	ldr	w0, [sp, 92]
	cmp	w0, 0
	beq	.L10
	ldr	x0, [sp, 72]
	add	x19, x0, 1
	ldr	x0, [sp, 72]
	bl	strlen
	mov	x2, x0
	ldr	x1, [sp, 72]
	mov	x0, x19
	bl	memmove
	ldr	x0, [sp, 72]
	mov	w1, 49
	strb	w1, [x0]
.L10:
	ldr	x0, [sp, 72]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	addBinary, .-addBinary
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
