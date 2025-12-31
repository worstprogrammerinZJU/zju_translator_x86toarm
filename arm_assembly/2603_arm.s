	.arch armv8-a
	.file	"2603.c"
	.text
	.global	prime
	.data
	.align	3
	.type	prime, %object
	.size	prime, 4916
prime:
	.word	2
	.word	3
	.zero	4908
	.global	q
	.align	2
	.type	q, %object
	.size	q, 4
q:
	.word	2
	.global	num
	.bss
	.align	3
	.type	num, %object
	.size	num, 4916
num:
	.zero	4916
	.text
	.align	2
	.global	add
	.type	add, %function
add:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	wzr, [sp, 28]
	b	.L2
.L4:
	adrp	x0, prime
	add	x0, x0, :lo12:prime
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 12]
	sdiv	w0, w1, w0
	str	w0, [sp, 12]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
.L3:
	adrp	x0, prime
	add	x0, x0, :lo12:prime
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 12]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L4
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w0, [sp, 12]
	cmp	w0, 1
	bgt	.L3
	nop
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	add, .-add
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
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	mov	w0, 5
	str	w0, [sp, 28]
	b	.L7
.L13:
	mov	w0, 1
	str	w0, [sp, 24]
	b	.L8
.L11:
	ldr	w1, [sp, 24]
	adrp	x0, prime
	add	x0, x0, :lo12:prime
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L19
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L8:
	ldr	w1, [sp, 24]
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w0, [x0]
	cmp	w1, w0
	blt	.L11
	b	.L10
.L19:
	nop
.L10:
	ldr	w1, [sp, 24]
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L12
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x1, q
	add	x1, x1, :lo12:q
	str	w2, [x1]
	adrp	x1, prime
	add	x1, x1, :lo12:prime
	sxtw	x0, w0
	ldr	w2, [sp, 28]
	str	w2, [x1, x0, lsl 2]
.L12:
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
.L7:
	ldr	w1, [sp, 28]
	mov	w0, 9999
	cmp	w1, w0
	ble	.L13
	str	wzr, [sp, 28]
	b	.L14
.L15:
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	bl	add
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L14:
	ldr	w0, [sp, 28]
	cmp	w0, 9
	ble	.L15
	str	wzr, [sp, 28]
	mov	w0, 1
	str	w0, [sp, 24]
	b	.L16
.L17:
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	add	w1, w0, 1
	ldr	w0, [sp, 24]
	mul	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L16:
	ldr	w0, [sp, 28]
	cmp	w0, 1228
	ble	.L17
	ldr	w2, [sp, 24]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 2
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	sub	w1, w2, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
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
