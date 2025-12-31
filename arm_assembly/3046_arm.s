	.arch armv8-a
	.file	"3046.c"
	.text
	.global	family
	.bss
	.align	3
	.type	family, %object
	.size	family, 4004
family:
	.zero	4004
	.global	coefficient
	.align	3
	.type	coefficient, %object
	.size	coefficient, 400004
coefficient:
	.zero	400004
	.global	temp
	.align	3
	.type	temp, %object
	.size	temp, 400004
temp:
	.zero	400004
	.global	T
	.align	2
	.type	T, %object
	.size	T, 4
T:
	.zero	4
	.global	A
	.align	2
	.type	A, %object
	.size	A, 4
A:
	.zero	4
	.global	S
	.align	2
	.type	S, %object
	.size	S, 4
S:
	.zero	4
	.global	B
	.align	2
	.type	B, %object
	.size	B, 4
B:
	.zero	4
	.global	Q
	.align	2
	.type	Q, %object
	.size	Q, 4
Q:
	.zero	4
	.text
	.align	2
	.global	multiply
	.type	multiply, %function
multiply:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	wzr, [sp, 28]
	b	.L2
.L3:
	adrp	x0, coefficient
	add	x0, x0, :lo12:coefficient
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, temp
	add	x0, x0, :lo12:temp
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L3
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L4
.L7:
	str	wzr, [sp, 24]
	b	.L5
.L6:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	add	w1, w1, w0
	adrp	x0, temp
	add	x0, x0, :lo12:temp
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, coefficient
	add	x0, x0, :lo12:coefficient
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	ldr	w3, [sp, 24]
	ldr	w2, [sp, 28]
	add	w3, w3, w2
	add	w2, w1, w0
	adrp	x0, temp
	add	x0, x0, :lo12:temp
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L5:
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	ble	.L6
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L4:
	adrp	x0, family
	add	x0, x0, :lo12:family
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L7
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldr	w1, [x0]
	adrp	x0, B
	add	x0, x0, :lo12:B
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L8
	adrp	x0, family
	add	x0, x0, :lo12:family
	ldrsw	x1, [sp, 12]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	str	w1, [x0]
	b	.L9
.L8:
	adrp	x0, B
	add	x0, x0, :lo12:B
	ldr	w1, [x0]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	str	w1, [x0]
.L9:
	str	wzr, [sp, 28]
	b	.L10
.L11:
	adrp	x0, temp
	add	x0, x0, :lo12:temp
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, 56963
	movk	w0, 0x431b, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 18
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 16960
	movk	w2, 0xf, lsl 16
	mul	w0, w0, w2
	sub	w0, w1, w0
	adrp	x1, coefficient
	add	x1, x1, :lo12:coefficient
	ldrsw	x2, [sp, 28]
	str	w0, [x1, x2, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L10:
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L11
	nop
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	multiply, .-multiply
	.section	.rodata
	.align	3
.LC0:
	.string	"%d%d%d%d"
	.align	3
.LC1:
	.string	"%d"
	.align	3
.LC2:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, B
	add	x4, x0, :lo12:B
	adrp	x0, S
	add	x3, x0, :lo12:S
	adrp	x0, A
	add	x2, x0, :lo12:A
	adrp	x0, T
	add	x1, x0, :lo12:T
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L13
.L14:
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w3, [sp, 24]
	adrp	x0, family
	add	x0, x0, :lo12:family
	sxtw	x1, w3
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, family
	add	x0, x0, :lo12:family
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L13:
	adrp	x0, A
	add	x0, x0, :lo12:A
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L14
	adrp	x0, family
	add	x0, x0, :lo12:family
	ldr	w1, [x0, 4]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	str	w1, [x0]
	str	wzr, [sp, 28]
	b	.L15
.L16:
	adrp	x0, coefficient
	add	x0, x0, :lo12:coefficient
	ldrsw	x1, [sp, 28]
	mov	w2, 1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L15:
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L16
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L17
.L18:
	ldr	w0, [sp, 28]
	bl	multiply
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L17:
	adrp	x0, T
	add	x0, x0, :lo12:T
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L18
	adrp	x0, S
	add	x0, x0, :lo12:S
	ldr	w0, [x0]
	str	w0, [sp, 28]
	str	wzr, [sp, 24]
	b	.L19
.L20:
	adrp	x0, coefficient
	add	x0, x0, :lo12:coefficient
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w1, [sp, 24]
	mov	w0, 56963
	movk	w0, 0x431b, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 18
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 16960
	movk	w2, 0xf, lsl 16
	mul	w0, w0, w2
	sub	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L19:
	adrp	x0, B
	add	x0, x0, :lo12:B
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L20
	ldr	w0, [sp, 24]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
