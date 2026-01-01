	.arch armv8-a
	.file	"1804.c"
	.text
	.global	x
	.bss
	.align	3
	.type	x, %object
	.size	x, 4000
x:
	.zero	4000
	.global	z
	.align	3
	.type	z, %object
	.size	z, 4000
z:
	.zero	4000
	.global	reverse
	.align	2
	.type	reverse, %object
	.size	reverse, 4
reverse:
	.zero	4
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"Scenario #%d:\n%d\n\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L2
.L5:
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 24]
	b	.L3
.L4:
	ldrsw	x0, [sp, 24]
	lsl	x1, x0, 2
	adrp	x0, x
	add	x0, x0, :lo12:x
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L3:
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L4
	adrp	x0, reverse
	add	x0, x0, :lo12:reverse
	str	wzr, [x0]
	ldr	w0, [sp, 16]
	sub	w0, w0, #1
	mov	w1, w0
	mov	w0, 0
	bl	mergesort
	adrp	x0, reverse
	add	x0, x0, :lo12:reverse
	ldr	w0, [x0]
	mov	w2, w0
	ldr	w1, [sp, 28]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L5
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.global	merge
	.type	merge, %function
merge:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	w2, [sp, 4]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	ldr	w0, [sp, 8]
	add	w0, w0, 1
	str	w0, [sp, 24]
	str	wzr, [sp, 20]
	b	.L8
.L11:
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bgt	.L9
	ldr	w1, [sp, 28]
	add	w0, w1, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 20]
	add	w2, w0, 1
	str	w2, [sp, 20]
	adrp	x2, x
	add	x2, x2, :lo12:x
	sxtw	x1, w1
	ldr	w2, [x2, x1, lsl 2]
	adrp	x1, z
	add	x1, x1, :lo12:z
	sxtw	x0, w0
	str	w2, [x1, x0, lsl 2]
	b	.L8
.L9:
	ldr	w1, [sp, 24]
	add	w0, w1, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 20]
	add	w2, w0, 1
	str	w2, [sp, 20]
	adrp	x2, x
	add	x2, x2, :lo12:x
	sxtw	x1, w1
	ldr	w2, [x2, x1, lsl 2]
	adrp	x1, z
	add	x1, x1, :lo12:z
	sxtw	x0, w0
	str	w2, [x1, x0, lsl 2]
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	add	w1, w0, 1
	adrp	x0, reverse
	add	x0, x0, :lo12:reverse
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, reverse
	add	x0, x0, :lo12:reverse
	str	w1, [x0]
.L8:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	bgt	.L12
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	ble	.L11
	b	.L12
.L13:
	ldr	w1, [sp, 28]
	add	w0, w1, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 20]
	add	w2, w0, 1
	str	w2, [sp, 20]
	adrp	x2, x
	add	x2, x2, :lo12:x
	sxtw	x1, w1
	ldr	w2, [x2, x1, lsl 2]
	adrp	x1, z
	add	x1, x1, :lo12:z
	sxtw	x0, w0
	str	w2, [x1, x0, lsl 2]
.L12:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	ble	.L13
	b	.L14
.L15:
	ldr	w1, [sp, 24]
	add	w0, w1, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 20]
	add	w2, w0, 1
	str	w2, [sp, 20]
	adrp	x2, x
	add	x2, x2, :lo12:x
	sxtw	x1, w1
	ldr	w2, [x2, x1, lsl 2]
	adrp	x1, z
	add	x1, x1, :lo12:z
	sxtw	x0, w0
	str	w2, [x1, x0, lsl 2]
.L14:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	ble	.L15
	str	wzr, [sp, 28]
	b	.L16
.L17:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 28]
	add	w3, w1, w0
	adrp	x0, z
	add	x0, x0, :lo12:z
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, x
	add	x0, x0, :lo12:x
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L16:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L17
	nop
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	merge, .-merge
	.align	2
	.global	mergesort
	.type	mergesort, %function
mergesort:
.LFB2:
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
	bge	.L20
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 28]
	bl	mergesort
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	ldr	w1, [sp, 24]
	bl	mergesort
	ldr	w2, [sp, 24]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 28]
	bl	merge
.L20:
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	mergesort, .-mergesort
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
