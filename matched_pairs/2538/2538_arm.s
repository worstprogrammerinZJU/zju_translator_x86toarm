	.arch armv8-a
	.file	"2538.c"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -256]!
	.cfi_def_cfa_offset 256
	.cfi_offset 29, -256
	.cfi_offset 30, -248
	mov	x29, sp
	stp	xzr, xzr, [sp, 120]
	add	x0, sp, 136
	movi	v0.4s, 0
	stp	q0, q0, [x0]
	stp	q0, q0, [x0, 32]
	stp	q0, q0, [x0, 64]
	str	q0, [x0, 96]
	mov	w0, 96
	strb	w0, [sp, 169]
	mov	w0, 49
	strb	w0, [sp, 170]
	mov	w0, 50
	strb	w0, [sp, 171]
	mov	w0, 51
	strb	w0, [sp, 172]
	mov	w0, 52
	strb	w0, [sp, 173]
	mov	w0, 53
	strb	w0, [sp, 174]
	mov	w0, 54
	strb	w0, [sp, 175]
	mov	w0, 55
	strb	w0, [sp, 176]
	mov	w0, 56
	strb	w0, [sp, 177]
	mov	w0, 57
	strb	w0, [sp, 168]
	mov	w0, 48
	strb	w0, [sp, 165]
	mov	w0, 45
	strb	w0, [sp, 181]
	mov	w0, 81
	strb	w0, [sp, 207]
	mov	w0, 87
	strb	w0, [sp, 189]
	mov	w0, 69
	strb	w0, [sp, 202]
	mov	w0, 82
	strb	w0, [sp, 204]
	mov	w0, 84
	strb	w0, [sp, 209]
	mov	w0, 89
	strb	w0, [sp, 205]
	mov	w0, 85
	strb	w0, [sp, 193]
	mov	w0, 73
	strb	w0, [sp, 199]
	mov	w0, 79
	strb	w0, [sp, 200]
	mov	w0, 80
	strb	w0, [sp, 211]
	mov	w0, 91
	strb	w0, [sp, 213]
	mov	w0, 93
	strb	w0, [sp, 212]
	mov	w0, 65
	strb	w0, [sp, 203]
	mov	w0, 83
	strb	w0, [sp, 188]
	mov	w0, 68
	strb	w0, [sp, 190]
	mov	w0, 70
	strb	w0, [sp, 191]
	mov	w0, 71
	strb	w0, [sp, 192]
	mov	w0, 72
	strb	w0, [sp, 194]
	mov	w0, 74
	strb	w0, [sp, 195]
	mov	w0, 75
	strb	w0, [sp, 196]
	mov	w0, 76
	strb	w0, [sp, 179]
	mov	w0, 59
	strb	w0, [sp, 159]
	mov	w0, 90
	strb	w0, [sp, 208]
	mov	w0, 88
	strb	w0, [sp, 187]
	mov	w0, 67
	strb	w0, [sp, 206]
	mov	w0, 86
	strb	w0, [sp, 186]
	mov	w0, 66
	strb	w0, [sp, 198]
	mov	w0, 78
	strb	w0, [sp, 197]
	mov	w0, 77
	strb	w0, [sp, 164]
	mov	w0, 44
	strb	w0, [sp, 166]
	mov	w0, 46
	strb	w0, [sp, 167]
	b	.L2
.L7:
	str	wzr, [sp, 252]
	b	.L3
.L6:
	ldrsw	x0, [sp, 252]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	sxtw	x0, w0
	add	x1, sp, 120
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L4
	ldrsw	x0, [sp, 252]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	bl	putchar
	b	.L5
.L4:
	ldrsw	x0, [sp, 252]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	sxtw	x0, w0
	add	x1, sp, 120
	ldrb	w0, [x1, x0]
	bl	putchar
.L5:
	ldr	w0, [sp, 252]
	add	w0, w0, 1
	str	w0, [sp, 252]
.L3:
	ldrsw	x0, [sp, 252]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L6
	mov	w0, 10
	bl	putchar
.L2:
	add	x0, sp, 16
	bl	gets
	cmp	w0, 0
	bne	.L7
	mov	w0, 0
	ldp	x29, x30, [sp], 256
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
