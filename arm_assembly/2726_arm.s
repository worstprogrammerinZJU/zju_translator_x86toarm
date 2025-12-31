	.arch armv8-a
	.file	"2726.c"
	.text
	.global	d
	.bss
	.align	3
	.type	d, %object
	.size	d, 40000
d:
	.zero	40000
	.global	c
	.align	3
	.type	c, %object
	.size	c, 40000
c:
	.zero	40000
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
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
.L12:
	str	wzr, [sp, 44]
	b	.L3
.L4:
	ldrsw	x0, [sp, 44]
	lsl	x1, x0, 2
	adrp	x0, d
	add	x0, x0, :lo12:d
	add	x3, x1, x0
	ldrsw	x0, [sp, 44]
	lsl	x1, x0, 2
	adrp	x0, c
	add	x0, x0, :lo12:c
	add	x0, x1, x0
	mov	x2, x0
	mov	x1, x3
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L3:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	mov	w1, w0
	mov	w0, 0
	bl	quick
	str	wzr, [sp, 36]
	mov	w0, 10001
	str	w0, [sp, 32]
	str	wzr, [sp, 44]
	b	.L5
.L11:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 40]
	b	.L6
.L9:
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 40]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x2, [sp, 44]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L7
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 40]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 44]
	str	w2, [x0, x1, lsl 2]
.L7:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L6:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bge	.L8
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 44]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x2, [sp, 40]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	beq	.L9
.L8:
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	ble	.L10
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 32]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L10:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L5:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L11
	ldr	w1, [sp, 36]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L2:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L12
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.global	quick
	.type	quick, %function
quick:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L23
	ldr	w0, [sp, 28]
	str	w0, [sp, 44]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L17:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x2, [sp, 44]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	ble	.L19
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bne	.L17
.L19:
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	str	w0, [sp, 40]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x2, [sp, 40]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L18
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L19
.L18:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bge	.L24
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	bl	swap
	b	.L17
.L24:
	nop
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 28]
	bl	swap
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	quick
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	ldr	w1, [sp, 24]
	bl	quick
.L23:
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	quick, .-quick
	.align	2
	.global	swap
	.type	swap, %function
swap:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 28]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 8]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 12]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 8]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 28]
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 8]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 12]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 8]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	swap, .-swap
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
