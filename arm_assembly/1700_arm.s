	.arch armv8-a
	.file	"1700.c"
	.text
	.global	speed
	.bss
	.align	3
	.type	speed, %object
	.size	speed, 4000
speed:
	.zero	4000
	.global	n
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.text
	.align	2
	.global	cmp
	.type	cmp, %function
cmp:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 28]
	ldr	x0, [sp]
	ldr	w0, [x0]
	str	w0, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L2
	mov	w0, -1
	b	.L3
.L2:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L4
	mov	w0, 1
	b	.L3
.L4:
	mov	w0, 0
.L3:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	cmp, .-cmp
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
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
	b	.L6
.L15:
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 24]
	b	.L7
.L8:
	ldrsw	x0, [sp, 24]
	lsl	x1, x0, 2
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L7:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L8
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x1, w0
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 4
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	bl	qsort
	str	wzr, [sp, 20]
	b	.L9
.L11:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w1, w0, #2
	adrp	x0, n
	add	x0, x0, :lo12:n
	str	w1, [x0]
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	ldr	w1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w2, [x0]
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	add	w1, w1, w0
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	ldr	w0, [x0, 4]
	lsl	w0, w0, 1
	cmp	w1, w0
	ble	.L10
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	ldr	w1, [x0]
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	ldr	w0, [x0, 4]
	add	w1, w1, w0
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	ldr	w0, [x0, 4]
	add	w1, w1, w0
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	add	w0, w1, w0
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	b	.L9
.L10:
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	ldr	w0, [x0]
	lsl	w1, w0, 1
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w2, [x0]
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	add	w1, w1, w0
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	add	w0, w1, w0
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
.L9:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 3
	bgt	.L11
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 3
	bne	.L12
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	ldr	w1, [x0]
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	ldr	w0, [x0, 4]
	add	w1, w1, w0
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	ldr	w0, [x0, 8]
	add	w0, w1, w0
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	b	.L13
.L12:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 2
	bne	.L14
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	ldr	w0, [x0, 4]
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	b	.L13
.L14:
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
.L13:
	ldr	w1, [sp, 20]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L6:
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L15
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
