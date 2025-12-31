	.arch armv8-a
	.file	"2141.c"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	add	x0, sp, 24
	bl	gets
	str	wzr, [sp, 140]
	b	.L2
.L3:
	ldrsw	x0, [sp, 140]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	sub	w0, w0, #97
	and	w2, w0, 255
	ldrsw	x0, [sp, 140]
	add	x1, sp, 112
	strb	w2, [x1, x0]
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
.L2:
	ldr	w0, [sp, 140]
	cmp	w0, 25
	ble	.L3
	add	x0, sp, 24
	bl	gets
	str	wzr, [sp, 140]
	b	.L4
.L8:
	ldrsw	x0, [sp, 140]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 96
	bls	.L5
	ldrsw	x0, [sp, 140]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 122
	bhi	.L5
	ldrsw	x0, [sp, 140]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	sub	w0, w0, #97
	sxtw	x0, w0
	add	x1, sp, 112
	ldrb	w0, [x1, x0]
	add	w0, w0, 97
	bl	putchar
	b	.L6
.L5:
	ldrsw	x0, [sp, 140]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 64
	bls	.L7
	ldrsw	x0, [sp, 140]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 90
	bhi	.L7
	ldrsw	x0, [sp, 140]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	sub	w0, w0, #65
	sxtw	x0, w0
	add	x1, sp, 112
	ldrb	w0, [x1, x0]
	add	w0, w0, 65
	bl	putchar
	b	.L6
.L7:
	ldrsw	x0, [sp, 140]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	bl	putchar
.L6:
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
.L4:
	ldrsw	x0, [sp, 140]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L8
	mov	w0, 10
	bl	putchar
	mov	w0, 0
	ldp	x29, x30, [sp], 144
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
