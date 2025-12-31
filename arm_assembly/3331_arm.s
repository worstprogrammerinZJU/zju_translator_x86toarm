	.arch armv8-a
	.file	"3331.c"
	.text
	.align	2
	.global	muil
	.type	muil, %function
muil:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #848
	.cfi_def_cfa_offset 848
	stp	x29, x30, [sp]
	.cfi_offset 29, -848
	.cfi_offset 30, -840
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	mov	x0, 49
	mov	x1, 0
	stp	x0, x1, [sp, 32]
	add	x0, sp, 48
	mov	x1, 784
	mov	x2, x1
	mov	w1, 0
	bl	memset
	mov	w0, 2
	str	w0, [sp, 844]
	b	.L2
.L10:
	add	x0, sp, 32
	bl	strlen
	sub	w0, w0, #1
	str	w0, [sp, 840]
	b	.L3
.L9:
	ldrsw	x0, [sp, 840]
	add	x1, sp, 32
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	ldr	w1, [sp, 844]
	mul	w0, w1, w0
	str	w0, [sp, 836]
	ldr	w0, [sp, 840]
	str	w0, [sp, 832]
	ldr	w1, [sp, 836]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 2
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 2
	add	w0, w0, w2
	lsl	w0, w0, 1
	sub	w2, w1, w0
	and	w1, w2, 255
	ldr	w0, [sp, 832]
	add	w2, w0, 1
	str	w2, [sp, 832]
	add	w1, w1, 48
	and	w2, w1, 255
	sxtw	x0, w0
	add	x1, sp, 32
	strb	w2, [x1, x0]
	ldr	w0, [sp, 836]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 836]
	b	.L4
.L8:
	ldrsw	x0, [sp, 832]
	add	x1, sp, 32
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L5
	ldr	w1, [sp, 836]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 2
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 2
	add	w0, w0, w2
	lsl	w0, w0, 1
	sub	w2, w1, w0
	and	w0, w2, 255
	add	w0, w0, 48
	and	w2, w0, 255
	ldrsw	x0, [sp, 832]
	add	x1, sp, 32
	strb	w2, [x1, x0]
	b	.L6
.L5:
	ldrsw	x0, [sp, 832]
	add	x1, sp, 32
	ldrb	w3, [x1, x0]
	ldr	w1, [sp, 836]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 2
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 2
	add	w0, w0, w2
	lsl	w0, w0, 1
	sub	w2, w1, w0
	and	w0, w2, 255
	add	w0, w3, w0
	and	w2, w0, 255
	ldrsw	x0, [sp, 832]
	add	x1, sp, 32
	strb	w2, [x1, x0]
.L6:
	ldr	w0, [sp, 836]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 836]
	ldrsw	x0, [sp, 832]
	add	x1, sp, 32
	ldrb	w0, [x1, x0]
	cmp	w0, 57
	bls	.L7
	ldrsw	x0, [sp, 832]
	add	x1, sp, 32
	ldrb	w0, [x1, x0]
	sub	w0, w0, #10
	and	w2, w0, 255
	ldrsw	x0, [sp, 832]
	add	x1, sp, 32
	strb	w2, [x1, x0]
	ldr	w0, [sp, 836]
	add	w0, w0, 1
	str	w0, [sp, 836]
.L7:
	ldr	w0, [sp, 832]
	add	w0, w0, 1
	str	w0, [sp, 832]
.L4:
	ldr	w0, [sp, 836]
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 840]
	sub	w0, w0, #1
	str	w0, [sp, 840]
.L3:
	ldr	w0, [sp, 840]
	cmp	w0, 0
	bge	.L9
	ldr	w0, [sp, 844]
	add	w0, w0, 1
	str	w0, [sp, 844]
.L2:
	ldr	w1, [sp, 844]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L10
	add	x0, sp, 32
	bl	strlen
	str	w0, [sp, 28]
	str	wzr, [sp, 844]
	str	wzr, [sp, 840]
	b	.L11
.L13:
	ldrsw	x0, [sp, 844]
	add	x1, sp, 32
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bne	.L12
	ldr	w0, [sp, 840]
	add	w0, w0, 1
	str	w0, [sp, 840]
.L12:
	ldr	w0, [sp, 844]
	add	w0, w0, 1
	str	w0, [sp, 844]
.L11:
	ldr	w1, [sp, 844]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L13
	ldr	w0, [sp, 840]
	ldp	x29, x30, [sp]
	add	sp, sp, 848
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	muil, .-muil
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d%d"
	.align	3
.LC2:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
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
	b	.L16
.L17:
	add	x1, sp, 20
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 20]
	bl	muil
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L16:
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L17
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
