	.arch armv8-a
	.file	"3078.c"
	.text
	.global	s
	.bss
	.align	3
	.type	s, %object
	.size	s, 3000
s:
	.zero	3000
	.global	ans
	.align	3
	.type	ans, %object
	.size	ans, 3000
ans:
	.zero	3000
	.global	pos
	.align	3
	.type	pos, %object
	.size	pos, 120
pos:
	.zero	120
	.global	sign
	.align	3
	.type	sign, %object
	.size	sign, 120
sign:
	.zero	120
	.global	q
	.align	3
	.type	q, %object
	.size	q, 120
q:
	.zero	120
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d%d"
	.align	3
.LC2:
	.string	"%s"
	.align	3
.LC3:
	.string	"%s "
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
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 40]
	b	.L2
.L17:
	mov	x2, 120
	mov	w1, 0
	adrp	x0, pos
	add	x0, x0, :lo12:pos
	bl	memset
	mov	x2, 120
	mov	w1, 0
	adrp	x0, sign
	add	x0, x0, :lo12:sign
	bl	memset
	add	x1, sp, 24
	add	x0, sp, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L3
.L4:
	ldrsw	x1, [sp, 36]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, s
	add	x1, x1, :lo12:s
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L3:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	ble	.L4
	str	wzr, [sp, 36]
	b	.L5
.L6:
	add	x1, sp, 16
	add	x0, sp, 20
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w1, [sp, 20]
	ldr	w2, [sp, 16]
	adrp	x0, pos
	add	x0, x0, :lo12:pos
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 16]
	adrp	x0, sign
	add	x0, x0, :lo12:sign
	sxtw	x1, w1
	mov	w2, 1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L5:
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	blt	.L6
	str	wzr, [sp, 44]
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L7
.L9:
	adrp	x0, sign
	add	x0, x0, :lo12:sign
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 44]
	add	w1, w0, 1
	str	w1, [sp, 44]
	adrp	x1, q
	add	x1, x1, :lo12:q
	sxtw	x0, w0
	ldr	w2, [sp, 36]
	str	w2, [x1, x0, lsl 2]
.L8:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L7:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	ble	.L9
	str	wzr, [sp, 44]
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L10
.L12:
	adrp	x0, pos
	add	x0, x0, :lo12:pos
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bne	.L11
	ldr	w0, [sp, 44]
	add	w1, w0, 1
	str	w1, [sp, 44]
	adrp	x1, q
	add	x1, x1, :lo12:q
	sxtw	x0, w0
	ldr	w2, [x1, x0, lsl 2]
	adrp	x0, pos
	add	x0, x0, :lo12:pos
	ldrsw	x1, [sp, 36]
	str	w2, [x0, x1, lsl 2]
.L11:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L10:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	ble	.L12
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L13
.L14:
	adrp	x0, pos
	add	x0, x0, :lo12:pos
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, ans
	add	x1, x1, :lo12:ans
	add	x2, x0, x1
	ldrsw	x1, [sp, 36]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, s
	add	x1, x1, :lo12:s
	add	x0, x0, x1
	mov	x1, x0
	mov	x0, x2
	bl	strcpy
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L13:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	ble	.L14
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L15
.L16:
	ldrsw	x1, [sp, 36]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, ans
	add	x1, x1, :lo12:ans
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L15:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	ble	.L16
	mov	w0, 10
	bl	putchar
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L2:
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L17
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
