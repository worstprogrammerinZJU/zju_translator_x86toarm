	.arch armv8-a
	.file	"2460.c"
	.text
	.global	x
	.bss
	.align	3
	.type	x, %object
	.size	x, 800000
x:
	.zero	800000
	.global	y
	.align	3
	.type	y, %object
	.size	y, 800000
y:
	.zero	800000
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d%d"
	.align	3
.LC2:
	.string	"%d %d\n"
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
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
.L13:
	str	wzr, [sp, 44]
	b	.L3
.L4:
	ldrsw	x0, [sp, 44]
	lsl	x1, x0, 2
	adrp	x0, x
	add	x0, x0, :lo12:x
	add	x3, x1, x0
	ldrsw	x0, [sp, 44]
	lsl	x1, x0, 2
	adrp	x0, y
	add	x0, x0, :lo12:y
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
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 24]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	adrp	x0, x
	add	x0, x0, :lo12:x
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 32]
	ldr	w0, [sp, 24]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	adrp	x0, y
	add	x0, x0, :lo12:y
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 28]
	str	wzr, [sp, 44]
	str	wzr, [sp, 40]
	str	wzr, [sp, 36]
	b	.L5
.L12:
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	bge	.L6
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L7
.L6:
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	ble	.L8
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L8
.L7:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	b	.L9
.L8:
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	bge	.L10
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bgt	.L11
.L10:
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	ble	.L9
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bge	.L9
.L11:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L9:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L5:
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L12
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 40]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L2:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L13
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
