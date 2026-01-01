	.arch armv8-a
	.file	"2159.c"
	.text
	.global	s
	.bss
	.align	3
	.type	s, %object
	.size	s, 104
s:
	.zero	104
	.global	t
	.align	3
	.type	t, %object
	.size	t, 104
t:
	.zero	104
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
	.string	"%s"
	.align	3
.LC1:
	.string	"YES"
	.align	3
.LC2:
	.string	"NO"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 140]
	b	.L6
.L7:
	ldrsw	x0, [sp, 140]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	sub	w3, w0, #65
	adrp	x0, s
	add	x0, x0, :lo12:s
	sxtw	x1, w3
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, s
	add	x0, x0, :lo12:s
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
.L6:
	ldrsw	x0, [sp, 140]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L7
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 140]
	b	.L8
.L9:
	ldrsw	x0, [sp, 140]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	sub	w3, w0, #65
	adrp	x0, t
	add	x0, x0, :lo12:t
	sxtw	x1, w3
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, t
	add	x0, x0, :lo12:t
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
.L8:
	ldrsw	x0, [sp, 140]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L9
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 4
	mov	x1, 26
	adrp	x0, s
	add	x0, x0, :lo12:s
	bl	qsort
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 4
	mov	x1, 26
	adrp	x0, t
	add	x0, x0, :lo12:t
	bl	qsort
	str	wzr, [sp, 140]
	b	.L10
.L13:
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrsw	x1, [sp, 140]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, t
	add	x0, x0, :lo12:t
	ldrsw	x2, [sp, 140]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bne	.L17
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
.L10:
	ldr	w0, [sp, 140]
	cmp	w0, 25
	ble	.L13
	b	.L12
.L17:
	nop
.L12:
	ldr	w0, [sp, 140]
	cmp	w0, 26
	bne	.L14
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
	b	.L15
.L14:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
.L15:
	mov	w0, 0
	ldp	x29, x30, [sp], 144
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
