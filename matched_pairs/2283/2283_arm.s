	.arch armv8-a
	.file	"2283.c"
	.text
	.global	x
	.bss
	.align	3
	.type	x, %object
	.size	x, 524288
x:
	.zero	524288
	.global	q
	.align	3
	.type	q, %object
	.size	q, 524288
q:
	.zero	524288
	.global	p
	.align	3
	.type	p, %object
	.size	p, 524288
p:
	.zero	524288
	.text
	.align	2
	.global	bfs
	.type	bfs, %function
bfs:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #65536
	.cfi_def_cfa_offset 65536
	str	xzr, [sp, 1024]
	sub	sp, sp, #48
	.cfi_def_cfa_offset 65584
	stp	x29, x30, [sp]
	.cfi_offset 29, -65584
	.cfi_offset 30, -65576
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	w2, [sp, 20]
	str	w3, [sp, 16]
	add	x0, sp, 65536
	str	wzr, [x0, 44]
	mov	w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 40]
	add	x0, sp, 65536
	str	wzr, [x0, 36]
	stp	xzr, xzr, [sp, 32]
	add	x0, sp, 48
	mov	x1, 65520
	mov	x2, x1
	mov	w1, 0
	bl	memset
	adrp	x0, q
	add	x0, x0, :lo12:q
	str	wzr, [x0]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L3
	mov	w0, 2
	add	x1, sp, 65536
	str	w0, [x1, 44]
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w1, [sp, 24]
	str	w1, [x0, 8]
	mov	w0, 3
	add	x1, sp, 65536
	str	w0, [x1, 40]
	mov	w0, 1
	strb	w0, [sp, 32]
	adrp	x0, p
	add	x0, x0, :lo12:p
	str	wzr, [x0, 8]
	b	.L3
.L8:
	adrp	x0, q
	add	x0, x0, :lo12:q
	add	x1, sp, 65536
	ldrsw	x1, [x1, 44]
	ldr	w0, [x0, x1, lsl 2]
	sxtw	x0, w0
	add	x1, sp, 32
	ldrb	w0, [x1, x0]
	cmp	w0, 1
	bne	.L4
	add	x0, sp, 65536
	ldr	w0, [x0, 44]
	add	w0, w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 44]
	b	.L3
.L4:
	adrp	x0, q
	add	x0, x0, :lo12:q
	add	x1, sp, 65536
	ldrsw	x1, [x1, 44]
	ldr	w0, [x0, x1, lsl 2]
	sxtw	x0, w0
	add	x1, sp, 32
	mov	w2, 1
	strb	w2, [x1, x0]
	adrp	x0, q
	add	x0, x0, :lo12:q
	add	x1, sp, 65536
	ldrsw	x1, [x1, 44]
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	ldr	w1, [sp, 20]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 20]
	mul	w1, w2, w1
	sub	w2, w0, w1
	adrp	x0, q
	add	x0, x0, :lo12:q
	add	x1, sp, 65536
	ldrsw	x1, [x1, 40]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, p
	add	x0, x0, :lo12:p
	add	x1, sp, 65536
	ldrsw	x1, [x1, 40]
	add	x2, sp, 65536
	ldr	w2, [x2, 44]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, q
	add	x0, x0, :lo12:q
	add	x1, sp, 65536
	ldrsw	x1, [x1, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	beq	.L16
	add	x0, sp, 65536
	ldr	w0, [x0, 40]
	add	w0, w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 40]
	adrp	x0, q
	add	x0, x0, :lo12:q
	add	x1, sp, 65536
	ldrsw	x1, [x1, 44]
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	ldr	w1, [sp, 20]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 20]
	mul	w1, w2, w1
	sub	w2, w0, w1
	adrp	x0, q
	add	x0, x0, :lo12:q
	add	x1, sp, 65536
	ldrsw	x1, [x1, 40]
	str	w2, [x0, x1, lsl 2]
	add	x0, sp, 65536
	ldr	w0, [x0, 44]
	add	w1, w0, 1
	add	x2, sp, 65536
	str	w1, [x2, 44]
	adrp	x1, p
	add	x1, x1, :lo12:p
	add	x2, sp, 65536
	ldrsw	x2, [x2, 40]
	str	w0, [x1, x2, lsl 2]
	adrp	x0, q
	add	x0, x0, :lo12:q
	add	x1, sp, 65536
	ldrsw	x1, [x1, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	beq	.L17
	add	x0, sp, 65536
	ldr	w0, [x0, 40]
	add	w0, w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 40]
.L3:
	add	x0, sp, 65536
	ldr	w1, [x0, 44]
	add	x0, sp, 65536
	ldr	w0, [x0, 40]
	cmp	w1, w0
	blt	.L8
	b	.L6
.L16:
	nop
	b	.L6
.L17:
	nop
.L6:
	add	x0, sp, 65536
	ldr	w1, [x0, 44]
	add	x0, sp, 65536
	ldr	w0, [x0, 40]
	cmp	w1, w0
	bge	.L9
	add	x0, sp, 65536
	str	wzr, [x0, 36]
	b	.L10
.L13:
	add	x0, sp, 65536
	ldr	w0, [x0, 40]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L11
	adrp	x0, x
	add	x0, x0, :lo12:x
	add	x1, sp, 65536
	ldrsw	x1, [x1, 36]
	ldrsw	x2, [sp, 16]
	lsl	x2, x2, 16
	add	x1, x2, x1
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	b	.L12
.L11:
	adrp	x0, x
	add	x0, x0, :lo12:x
	add	x1, sp, 65536
	ldrsw	x1, [x1, 36]
	ldrsw	x2, [sp, 16]
	lsl	x2, x2, 16
	add	x1, x2, x1
	ldr	w2, [sp, 24]
	str	w2, [x0, x1, lsl 2]
.L12:
	adrp	x0, p
	add	x0, x0, :lo12:p
	add	x1, sp, 65536
	ldrsw	x1, [x1, 40]
	ldr	w0, [x0, x1, lsl 2]
	add	x1, sp, 65536
	str	w0, [x1, 40]
	add	x0, sp, 65536
	ldr	w0, [x0, 36]
	add	w0, w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 36]
.L10:
	add	x0, sp, 65536
	ldr	w0, [x0, 40]
	cmp	w0, 0
	bne	.L13
	add	x0, sp, 65536
	ldr	w0, [x0, 36]
	sub	w0, w0, #1
	b	.L15
.L9:
	mov	w0, -1
.L15:
	ldp	x29, x30, [sp]
	.cfi_restore 29
	.cfi_restore 30
	add	sp, sp, 48
	.cfi_def_cfa_offset 65536
	add	sp, sp, 65536
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	bfs, .-bfs
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	add	x0, sp, 68
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L19
.L42:
	ldr	w0, [sp, 68]
	str	w0, [sp, 24]
	str	wzr, [sp, 92]
	mov	w0, 1
	str	w0, [sp, 88]
	b	.L20
.L25:
	ldr	w0, [sp, 88]
	str	w0, [sp, 84]
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 2
	add	x1, sp, 24
	mov	w2, 1
	str	w2, [x1, x0]
	b	.L21
.L23:
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 84]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w1, w0, w1
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 88]
	add	w0, w0, w1
	str	w0, [sp, 84]
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
.L21:
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 68]
	cmp	w1, w0
	bge	.L22
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 84]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L23
.L22:
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	cmp	w1, w0
	bge	.L24
	ldr	w0, [sp, 88]
	str	w0, [sp, 92]
.L24:
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
.L20:
	ldr	w0, [sp, 88]
	cmp	w0, 9
	ble	.L25
	ldr	w0, [sp, 92]
	cmp	w0, 0
	beq	.L26
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	str	w0, [sp, 84]
	b	.L27
.L28:
	ldr	w1, [sp, 92]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 84]
	sub	w0, w0, #1
	str	w0, [sp, 84]
.L27:
	ldr	w0, [sp, 84]
	cmp	w0, 0
	bgt	.L28
	b	.L29
.L26:
	ldr	w0, [sp, 68]
	str	w0, [sp, 76]
	str	wzr, [sp, 72]
	str	wzr, [sp, 88]
	b	.L30
.L39:
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 84]
	b	.L31
.L38:
	ldr	w0, [sp, 68]
	ldr	w3, [sp, 72]
	mov	w2, w0
	ldr	w1, [sp, 84]
	ldr	w0, [sp, 88]
	bl	bfs
	str	w0, [sp, 92]
	ldr	w0, [sp, 92]
	cmn	w0, #1
	beq	.L32
	ldr	w1, [sp, 92]
	ldr	w0, [sp, 76]
	cmp	w1, w0
	bge	.L32
	mov	w1, 1
	ldr	w0, [sp, 72]
	sub	w0, w1, w0
	str	w0, [sp, 72]
	ldr	w0, [sp, 92]
	str	w0, [sp, 76]
	b	.L33
.L32:
	ldr	w1, [sp, 92]
	ldr	w0, [sp, 76]
	cmp	w1, w0
	bne	.L33
	ldr	w0, [sp, 76]
	str	w0, [sp, 80]
	b	.L34
.L37:
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 80]
	ldrsw	x2, [sp, 72]
	lsl	x2, x2, 16
	add	x1, x2, x1
	ldr	w1, [x0, x1, lsl 2]
	mov	w2, 1
	ldr	w0, [sp, 72]
	sub	w3, w2, w0
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x2, [sp, 80]
	sxtw	x3, w3
	lsl	x3, x3, 16
	add	x2, x3, x2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L35
	mov	w1, 1
	ldr	w0, [sp, 72]
	sub	w0, w1, w0
	str	w0, [sp, 72]
	b	.L33
.L35:
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 80]
	ldrsw	x2, [sp, 72]
	lsl	x2, x2, 16
	add	x1, x2, x1
	ldr	w1, [x0, x1, lsl 2]
	mov	w2, 1
	ldr	w0, [sp, 72]
	sub	w3, w2, w0
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x2, [sp, 80]
	sxtw	x3, w3
	lsl	x3, x3, 16
	add	x2, x3, x2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bgt	.L44
	ldr	w0, [sp, 80]
	sub	w0, w0, #1
	str	w0, [sp, 80]
.L34:
	ldr	w0, [sp, 80]
	cmp	w0, 0
	bge	.L37
	b	.L33
.L44:
	nop
.L33:
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
.L31:
	ldr	w0, [sp, 84]
	cmp	w0, 9
	ble	.L38
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
.L30:
	ldr	w0, [sp, 88]
	cmp	w0, 9
	ble	.L39
	ldr	w0, [sp, 76]
	str	w0, [sp, 88]
	b	.L40
.L41:
	mov	w1, 1
	ldr	w0, [sp, 72]
	sub	w2, w1, w0
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 88]
	sxtw	x2, w2
	lsl	x2, x2, 16
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 88]
	sub	w0, w0, #1
	str	w0, [sp, 88]
.L40:
	ldr	w0, [sp, 88]
	cmp	w0, 0
	bge	.L41
.L29:
	mov	w0, 10
	bl	putchar
	add	x0, sp, 68
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L19:
	ldr	w0, [sp, 68]
	cmp	w0, 0
	bne	.L42
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
