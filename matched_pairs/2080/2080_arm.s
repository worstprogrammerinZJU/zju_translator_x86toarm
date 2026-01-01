	.arch armv8-a
	.file	"2080.c"
	.text
	.align	2
	.global	leap
	.type	leap, %function
leap:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	and	w0, w0, 3
	cmp	w0, 0
	bne	.L2
	ldr	w1, [sp, 12]
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
	bne	.L3
	ldr	w1, [sp, 12]
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
	bne	.L2
.L3:
	mov	w0, 1
	b	.L4
.L2:
	mov	w0, 0
.L4:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	leap, .-leap
	.section	.rodata
	.align	3
.LC4:
	.string	"%d"
	.align	3
.LC5:
	.string	"%d-%s-%s %s\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -336]!
	.cfi_def_cfa_offset 336
	.cfi_offset 29, -336
	.cfi_offset 30, -328
	mov	x29, sp
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 272
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 224
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 112
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldp	q0, q1, [x1, 64]
	stp	q0, q1, [x0, 64]
	ldr	q0, [x1, 89]
	str	q0, [x0, 89]
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 16
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldp	q0, q1, [x1, 64]
	stp	q0, q1, [x0, 64]
	add	x0, sp, 320
	mov	x1, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__isoc99_scanf
	b	.L6
.L20:
	ldr	w0, [sp, 320]
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
	str	w0, [sp, 324]
	mov	w0, 2000
	str	w0, [sp, 332]
	b	.L7
.L8:
	ldr	w0, [sp, 332]
	bl	leap
	add	w0, w0, 365
	ldr	w1, [sp, 320]
	sub	w0, w1, w0
	str	w0, [sp, 320]
	ldr	w0, [sp, 332]
	add	w0, w0, 1
	str	w0, [sp, 332]
.L7:
	ldr	w0, [sp, 332]
	bl	leap
	add	w1, w0, 364
	ldr	w0, [sp, 320]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 320]
	add	w0, w0, 1
	str	w0, [sp, 320]
	ldr	w0, [sp, 332]
	bl	leap
	cmp	w0, 0
	beq	.L9
	mov	w0, 1
	str	w0, [sp, 328]
	b	.L10
.L14:
	ldrsw	x0, [sp, 328]
	lsl	x0, x0, 2
	add	x1, sp, 224
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 320]
	cmp	w1, w0
	bge	.L22
	ldr	w1, [sp, 320]
	ldrsw	x0, [sp, 328]
	lsl	x0, x0, 2
	add	x2, sp, 224
	ldr	w0, [x2, x0]
	sub	w0, w1, w0
	str	w0, [sp, 320]
	ldr	w0, [sp, 328]
	add	w0, w0, 1
	str	w0, [sp, 328]
.L10:
	ldr	w0, [sp, 328]
	cmp	w0, 11
	ble	.L14
	b	.L15
.L9:
	mov	w0, 1
	str	w0, [sp, 328]
	b	.L16
.L19:
	ldrsw	x0, [sp, 328]
	lsl	x0, x0, 2
	add	x1, sp, 272
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 320]
	cmp	w1, w0
	bge	.L23
	ldr	w1, [sp, 320]
	ldrsw	x0, [sp, 328]
	lsl	x0, x0, 2
	add	x2, sp, 272
	ldr	w0, [x2, x0]
	sub	w0, w1, w0
	str	w0, [sp, 320]
	ldr	w0, [sp, 328]
	add	w0, w0, 1
	str	w0, [sp, 328]
.L16:
	ldr	w0, [sp, 328]
	cmp	w0, 11
	ble	.L19
	b	.L15
.L22:
	nop
	b	.L15
.L23:
	nop
.L15:
	add	x2, sp, 16
	ldrsw	x1, [sp, 328]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	add	x5, x2, x0
	ldr	w0, [sp, 320]
	add	x2, sp, 16
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	add	x3, x2, x0
	add	x2, sp, 112
	ldrsw	x1, [sp, 324]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	add	x0, x2, x0
	mov	x4, x0
	mov	x2, x5
	ldr	w1, [sp, 332]
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	add	x0, sp, 320
	mov	x1, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__isoc99_scanf
.L6:
	ldr	w0, [sp, 320]
	cmn	w0, #1
	bne	.L20
	mov	w0, 0
	ldp	x29, x30, [sp], 336
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	0
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
	.align	3
.LC1:
	.word	0
	.word	31
	.word	29
	.word	31
	.word	30
	.word	31
	.word	30
	.word	31
	.word	31
	.word	30
	.word	31
	.word	30
	.align	3
.LC2:
	.string	"Saturday"
	.zero	6
	.string	"Sunday"
	.zero	8
	.string	"Monday"
	.zero	8
	.string	"Tuesday"
	.zero	7
	.string	"Wednesday"
	.zero	5
	.string	"Thursday"
	.zero	6
	.string	"Friday"
	.zero	8
	.align	3
.LC3:
	.string	"00"
	.string	"01"
	.string	"02"
	.string	"03"
	.string	"04"
	.string	"05"
	.string	"06"
	.string	"07"
	.string	"08"
	.string	"09"
	.string	"10"
	.string	"11"
	.string	"12"
	.string	"13"
	.string	"14"
	.string	"15"
	.string	"16"
	.string	"17"
	.string	"18"
	.string	"19"
	.string	"20"
	.string	"21"
	.string	"22"
	.string	"23"
	.string	"24"
	.string	"25"
	.string	"26"
	.string	"27"
	.string	"28"
	.string	"29"
	.string	"30"
	.string	"31"
	.text
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
