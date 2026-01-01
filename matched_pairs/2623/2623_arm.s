	.arch armv8-a
	.file	"2623.c"
	.text
	.global	median
	.bss
	.align	3
	.type	median, %object
	.size	median, 500004
median:
	.zero	500004
	.global	N
	.align	2
	.type	N, %object
	.size	N, 4
N:
	.zero	4
	.text
	.align	2
	.global	ADJUST
	.type	ADJUST, %function
ADJUST:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	lsl	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, median
	add	x0, x0, :lo12:median
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 24]
	b	.L2
.L6:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	bge	.L3
	adrp	x0, median
	add	x0, x0, :lo12:median
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w2, w0, 1
	adrp	x0, median
	add	x0, x0, :lo12:median
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L3
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L3:
	adrp	x0, median
	add	x0, x0, :lo12:median
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bge	.L7
	ldr	w0, [sp, 28]
	asr	w3, w0, 1
	adrp	x0, median
	add	x0, x0, :lo12:median
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, median
	add	x0, x0, :lo12:median
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	lsl	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	ble	.L6
	b	.L5
.L7:
	nop
.L5:
	ldr	w0, [sp, 28]
	asr	w1, w0, 1
	adrp	x0, median
	add	x0, x0, :lo12:median
	sxtw	x1, w1
	ldr	w2, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	ADJUST, .-ADJUST
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%.1lf\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	adrp	x0, N
	add	x1, x0, :lo12:N
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L9
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	add	w0, w0, 1
	str	w0, [sp, 40]
	b	.L10
.L9:
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	add	w0, w0, 1
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 40]
.L10:
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L11
.L12:
	ldrsw	x0, [sp, 44]
	lsl	x1, x0, 2
	adrp	x0, median
	add	x0, x0, :lo12:median
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L11:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	ble	.L12
	ldr	w0, [sp, 40]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 44]
	b	.L13
.L14:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	bl	ADJUST
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
.L13:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bgt	.L14
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w1, [x0]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	str	w0, [sp, 44]
	b	.L15
.L17:
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, median
	add	x0, x0, :lo12:median
	ldr	w1, [x0, 4]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L16
	ldr	w1, [sp, 28]
	adrp	x0, median
	add	x0, x0, :lo12:median
	str	w1, [x0, 4]
	ldr	w1, [sp, 40]
	mov	w0, 1
	bl	ADJUST
.L16:
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
.L15:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bgt	.L17
	adrp	x0, median
	add	x0, x0, :lo12:median
	ldr	w0, [x0, 4]
	scvtf	d0, w0
	str	d0, [sp, 32]
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L18
	adrp	x0, median
	add	x0, x0, :lo12:median
	ldr	w1, [x0, 8]
	adrp	x0, median
	add	x0, x0, :lo12:median
	ldr	w0, [x0, 12]
	cmp	w1, w0
	ble	.L19
	adrp	x0, median
	add	x0, x0, :lo12:median
	ldr	w0, [x0, 8]
	scvtf	d1, w0
	ldr	d0, [sp, 32]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 32]
	b	.L18
.L19:
	adrp	x0, median
	add	x0, x0, :lo12:median
	ldr	w0, [x0, 12]
	scvtf	d1, w0
	ldr	d0, [sp, 32]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 32]
.L18:
	ldr	d0, [sp, 32]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
