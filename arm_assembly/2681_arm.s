	.arch armv8-a
	.file	"2681.c"
	.text
	.global	t
	.bss
	.align	3
	.type	t, %object
	.size	t, 104
t:
	.zero	104
	.global	r
	.align	3
	.type	r, %object
	.size	r, 104
r:
	.zero	104
	.global	s
	.align	3
	.type	s, %object
	.size	s, 100
s:
	.zero	100
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.align	3
.LC1:
	.string	"Case #%d:  %d\n"
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
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L2
.L11:
	mov	x2, 104
	mov	w1, 0
	adrp	x0, t
	add	x0, x0, :lo12:t
	bl	memset
	mov	x2, 104
	mov	w1, 0
	adrp	x0, r
	add	x0, x0, :lo12:r
	bl	memset
	adrp	x0, s
	add	x0, x0, :lo12:s
	bl	gets
	str	wzr, [sp, 24]
	b	.L3
.L4:
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 24]
	ldrb	w0, [x1, x0]
	sub	w3, w0, #97
	adrp	x0, t
	add	x0, x0, :lo12:t
	sxtw	x1, w3
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, t
	add	x0, x0, :lo12:t
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L3:
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 24]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L4
	adrp	x0, s
	add	x0, x0, :lo12:s
	bl	gets
	str	wzr, [sp, 24]
	b	.L5
.L6:
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 24]
	ldrb	w0, [x1, x0]
	sub	w3, w0, #97
	adrp	x0, r
	add	x0, x0, :lo12:r
	sxtw	x1, w3
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, r
	add	x0, x0, :lo12:r
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L5:
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 24]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L6
	str	wzr, [sp, 24]
	str	wzr, [sp, 20]
	b	.L7
.L10:
	adrp	x0, t
	add	x0, x0, :lo12:t
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	ble	.L8
	adrp	x0, t
	add	x0, x0, :lo12:t
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	sub	w0, w1, w0
	b	.L9
.L8:
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, t
	add	x0, x0, :lo12:t
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	sub	w0, w1, w0
.L9:
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L7:
	ldr	w0, [sp, 24]
	cmp	w0, 25
	ble	.L10
	ldr	w2, [sp, 20]
	ldr	w1, [sp, 28]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
