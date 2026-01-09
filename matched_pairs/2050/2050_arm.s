n:
doc:
l:
lines:
num:
words:
step:
Term:
cmp:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [sp, 40]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	str	w0, [sp, 36]
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, Term
	add	x1, x1, :lo12:Term
	add	x2, x0, x1
	ldrsw	x1, [sp, 36]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, Term
	add	x1, x1, :lo12:Term
	add	x0, x0, x1
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L2
	adrp	x0, Term
	add	x2, x0, :lo12:Term
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w2, [x0, 104]
	adrp	x0, Term
	add	x3, x0, :lo12:Term
	ldrsw	x1, [sp, 36]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	ldr	w0, [x0, 104]
	sub	w0, w2, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	ret
input:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, l
	add	x0, x0, :lo12:l
	ldr	w2, [x0]
	adrp	x0, doc
	add	x0, x0, :lo12:doc
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	b	.L5
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w1, [x0]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w2, [x0]
	adrp	x0, words
	add	x0, x0, :lo12:words
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	str	wzr, [sp, 40]
	str	wzr, [sp, 44]
	b	.L6
	adrp	x0, l
	add	x0, x0, :lo12:l
	ldr	w1, [x0]
	adrp	x0, lines
	add	x3, x0, :lo12:lines
	ldrsw	x2, [sp, 44]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	sub	x1, x1, x0
	lsl	x0, x1, 1
	mov	x1, x0
	add	x0, x3, x1
	add	x0, x0, x2
	ldrb	w0, [x0]
	bl	isalpha
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 40]
	cmp	w0, 0
	beq	.L8
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w1, [x0]
	adrp	x0, Term
	add	x2, x0, :lo12:Term
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [sp, 28]
	str	w1, [x0, 100]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w1, [x0]
	adrp	x0, l
	add	x0, x0, :lo12:l
	ldr	w2, [x0]
	adrp	x0, Term
	add	x3, x0, :lo12:Term
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	str	w2, [x0, 104]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, num
	add	x0, x0, :lo12:num
	str	w1, [x0]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w1, [x0]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w2, [x0]
	adrp	x0, words
	add	x0, x0, :lo12:words
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	str	wzr, [sp, 40]
	b	.L8
	adrp	x0, l
	add	x0, x0, :lo12:l
	ldr	w1, [x0]
	adrp	x0, lines
	add	x3, x0, :lo12:lines
	ldrsw	x2, [sp, 44]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	sub	x1, x1, x0
	lsl	x0, x1, 1
	mov	x1, x0
	add	x0, x3, x1
	add	x0, x0, x2
	ldrb	w0, [x0]
	bl	tolower
	mov	w2, w0
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w5, [x0]
	ldr	w0, [sp, 40]
	add	w1, w0, 1
	str	w1, [sp, 40]
	and	w4, w2, 255
	adrp	x1, Term
	add	x3, x1, :lo12:Term
	sxtw	x2, w0
	sxtw	x1, w5
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, w4
	strb	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, l
	add	x0, x0, :lo12:l
	ldr	w1, [x0]
	adrp	x0, lines
	add	x3, x0, :lo12:lines
	ldrsw	x2, [sp, 44]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	sub	x1, x1, x0
	lsl	x0, x1, 1
	mov	x1, x0
	add	x0, x3, x1
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L9
	ldr	w0, [sp, 40]
	cmp	w0, 0
	beq	.L10
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w1, [x0]
	adrp	x0, Term
	add	x2, x0, :lo12:Term
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [sp, 28]
	str	w1, [x0, 100]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w1, [x0]
	adrp	x0, l
	add	x0, x0, :lo12:l
	ldr	w2, [x0]
	adrp	x0, Term
	add	x3, x0, :lo12:Term
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	str	w2, [x0, 104]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, num
	add	x0, x0, :lo12:num
	str	w1, [x0]
	adrp	x0, l
	add	x0, x0, :lo12:l
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, l
	add	x0, x0, :lo12:l
	str	w1, [x0]
	adrp	x0, l
	add	x0, x0, :lo12:l
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	sub	x1, x1, x0
	lsl	x0, x1, 1
	mov	x1, x0
	adrp	x0, lines
	add	x0, x0, :lo12:lines
	add	x0, x1, x0
	bl	gets
	adrp	x0, l
	add	x0, x0, :lo12:l
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	sub	x1, x1, x0
	lsl	x0, x1, 1
	mov	x1, x0
	adrp	x0, lines
	add	x0, x0, :lo12:lines
	add	x2, x1, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L11
	nop
	nop
	ldp	x29, x30, [sp], 48
	ret
search:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	wzr, [sp, 44]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w0, [x0]
	sub	w0, w0, #1
	str	w0, [sp, 40]
	adrp	x0, step
	add	x0, x0, :lo12:step
	mov	w1, -1
	str	w1, [x0]
	b	.L13
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 36]
	adrp	x0, words
	add	x0, x0, :lo12:words
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, Term
	add	x1, x1, :lo12:Term
	add	x0, x0, x1
	ldr	x1, [sp, 24]
	bl	strcmp
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bge	.L14
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 44]
	b	.L13
	ldr	w0, [sp, 32]
	cmp	w0, 0
	ble	.L23
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	str	w0, [sp, 40]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	ble	.L17
	b	.L16
	nop
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bgt	.L18
	ldr	w0, [sp, 36]
	add	w1, w0, 1
	adrp	x0, step
	add	x0, x0, :lo12:step
	str	w1, [x0]
	b	.L19
	adrp	x0, step
	add	x0, x0, :lo12:step
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, step
	add	x0, x0, :lo12:step
	str	w1, [x0]
	adrp	x0, step
	add	x0, x0, :lo12:step
	ldr	w1, [x0]
	adrp	x0, words
	add	x0, x0, :lo12:words
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, Term
	add	x1, x1, :lo12:Term
	add	x0, x0, x1
	ldr	x1, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	beq	.L20
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	str	w0, [sp, 36]
	adrp	x0, words
	add	x0, x0, :lo12:words
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, Term
	add	x1, x1, :lo12:Term
	add	x0, x0, x1
	ldr	x1, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	beq	.L21
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	b	.L22
	mov	w0, -1
	ldp	x29, x30, [sp], 48
	ret
AndOr:
	mov	x12, 8896
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	str	w0, [sp, 44]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	wzr, [sp, 8884]
	add	x0, sp, 4096
	add	x0, x0, 3960
	mov	x1, 808
	mov	x2, x1
	mov	w1, 0
	bl	memset
	add	x0, sp, 56
	mov	x1, 8000
	mov	x2, x1
	mov	w1, 0
	bl	memset
	ldr	x0, [sp, 32]
	bl	search
	str	w0, [sp, 8880]
	adrp	x0, step
	add	x0, x0, :lo12:step
	ldr	w0, [x0]
	str	w0, [sp, 8876]
	ldr	x0, [sp, 24]
	bl	search
	str	w0, [sp, 8872]
	adrp	x0, step
	add	x0, x0, :lo12:step
	ldr	w0, [x0]
	str	w0, [sp, 8868]
	ldr	w0, [sp, 8880]
	str	w0, [sp, 8892]
	b	.L25
	adrp	x0, words
	add	x0, x0, :lo12:words
	ldrsw	x1, [sp, 8892]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Term
	add	x2, x0, :lo12:Term
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 100]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 4096
	add	x1, x1, 3960
	mov	w2, 1
	str	w2, [x1, x0]
	ldr	w0, [sp, 8892]
	add	w0, w0, 1
	str	w0, [sp, 8892]
	ldr	w1, [sp, 8892]
	ldr	w0, [sp, 8876]
	cmp	w1, w0
	blt	.L26
	ldr	w0, [sp, 8872]
	str	w0, [sp, 8892]
	b	.L27
	adrp	x0, words
	add	x0, x0, :lo12:words
	ldrsw	x1, [sp, 8892]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Term
	add	x2, x0, :lo12:Term
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 100]
	sxtw	x0, w0
	add	x0, x0, 101
	lsl	x0, x0, 2
	add	x1, sp, 4096
	add	x1, x1, 3960
	mov	w2, 1
	str	w2, [x1, x0]
	ldr	w0, [sp, 8892]
	add	w0, w0, 1
	str	w0, [sp, 8892]
	ldr	w1, [sp, 8892]
	ldr	w0, [sp, 8868]
	cmp	w1, w0
	blt	.L28
	ldr	w0, [sp, 8880]
	str	w0, [sp, 8892]
	b	.L29
	adrp	x0, words
	add	x0, x0, :lo12:words
	ldrsw	x1, [sp, 8892]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Term
	add	x2, x0, :lo12:Term
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 100]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 4096
	add	x1, x1, 3960
	ldr	w2, [x1, x0]
	adrp	x0, words
	add	x0, x0, :lo12:words
	ldrsw	x1, [sp, 8892]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Term
	add	x3, x0, :lo12:Term
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	ldr	w0, [x0, 100]
	sxtw	x0, w0
	add	x0, x0, 101
	lsl	x0, x0, 2
	add	x1, sp, 4096
	add	x1, x1, 3960
	ldr	w0, [x1, x0]
	add	w1, w2, w0
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	cmp	w0, 1
	ble	.L30
	mov	w0, 1
	str	w0, [sp, 8884]
	adrp	x0, words
	add	x0, x0, :lo12:words
	ldrsw	x1, [sp, 8892]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Term
	add	x2, x0, :lo12:Term
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 104]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 56
	mov	w2, 1
	str	w2, [x1, x0]
	ldr	w0, [sp, 8892]
	add	w0, w0, 1
	str	w0, [sp, 8892]
	ldr	w1, [sp, 8892]
	ldr	w0, [sp, 8876]
	cmp	w1, w0
	blt	.L31
	ldr	w0, [sp, 8872]
	str	w0, [sp, 8892]
	b	.L32
	adrp	x0, words
	add	x0, x0, :lo12:words
	ldrsw	x1, [sp, 8892]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Term
	add	x2, x0, :lo12:Term
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 100]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 4096
	add	x1, x1, 3960
	ldr	w2, [x1, x0]
	adrp	x0, words
	add	x0, x0, :lo12:words
	ldrsw	x1, [sp, 8892]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Term
	add	x3, x0, :lo12:Term
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	ldr	w0, [x0, 100]
	sxtw	x0, w0
	add	x0, x0, 101
	lsl	x0, x0, 2
	add	x1, sp, 4096
	add	x1, x1, 3960
	ldr	w0, [x1, x0]
	add	w1, w2, w0
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	cmp	w0, 1
	ble	.L33
	mov	w0, 1
	str	w0, [sp, 8884]
	adrp	x0, words
	add	x0, x0, :lo12:words
	ldrsw	x1, [sp, 8892]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Term
	add	x2, x0, :lo12:Term
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 104]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 56
	mov	w2, 1
	str	w2, [x1, x0]
	ldr	w0, [sp, 8892]
	add	w0, w0, 1
	str	w0, [sp, 8892]
	ldr	w1, [sp, 8892]
	ldr	w0, [sp, 8868]
	cmp	w1, w0
	blt	.L34
	ldr	w0, [sp, 8884]
	cmp	w0, 0
	bne	.L35
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
	b	.L24
	str	wzr, [sp, 8884]
	str	wzr, [sp, 8892]
	b	.L37
	ldrsw	x0, [sp, 8892]
	lsl	x0, x0, 2
	add	x1, sp, 4096
	add	x1, x1, 3960
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 8892]
	add	x0, x0, 101
	lsl	x0, x0, 2
	add	x2, sp, 4096
	add	x2, x2, 3960
	ldr	w0, [x2, x0]
	add	w1, w1, w0
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	cmp	w0, 1
	ble	.L45
	ldr	w0, [sp, 8884]
	cmp	w0, 1
	bne	.L40
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
	mov	w0, 1
	str	w0, [sp, 8884]
	adrp	x0, doc
	add	x0, x0, :lo12:doc
	ldrsw	x1, [sp, 8892]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 8888]
	b	.L41
	ldrsw	x0, [sp, 8888]
	lsl	x0, x0, 2
	add	x1, sp, 56
	ldr	w0, [x1, x0]
	cmp	w0, 1
	bne	.L42
	ldrsw	x1, [sp, 8888]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	sub	x1, x1, x0
	lsl	x0, x1, 1
	mov	x1, x0
	adrp	x0, lines
	add	x0, x0, :lo12:lines
	add	x0, x1, x0
	bl	puts
	ldr	w0, [sp, 8888]
	add	w0, w0, 1
	str	w0, [sp, 8888]
	ldr	w0, [sp, 8892]
	add	w1, w0, 1
	adrp	x0, doc
	add	x0, x0, :lo12:doc
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 8888]
	cmp	w1, w0
	blt	.L43
	b	.L39
	nop
	ldr	w0, [sp, 8892]
	add	w0, w0, 1
	str	w0, [sp, 8892]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 8892]
	cmp	w1, w0
	blt	.L44
	ldp	x29, x30, [sp]
	mov	x12, 8896
	add	sp, sp, x12
	ret
query:
	sub	sp, sp, #1056
	stp	x29, x30, [sp]
	mov	x29, sp
	str	wzr, [sp, 1040]
	add	x0, sp, 624
	mov	x1, 404
	mov	x2, x1
	mov	w1, 0
	bl	memset
	add	x0, sp, 424
	bl	gets
	str	wzr, [sp, 1052]
	str	wzr, [sp, 1048]
	b	.L47
	ldrsw	x0, [sp, 1052]
	add	x1, sp, 424
	ldrb	w2, [x1, x0]
	ldrsw	x0, [sp, 1048]
	add	x1, sp, 224
	strb	w2, [x1, x0]
	ldr	w0, [sp, 1052]
	add	w0, w0, 1
	str	w0, [sp, 1052]
	ldr	w0, [sp, 1048]
	add	w0, w0, 1
	str	w0, [sp, 1048]
	ldrsw	x0, [sp, 1052]
	add	x1, sp, 424
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	beq	.L48
	ldrsw	x0, [sp, 1052]
	add	x1, sp, 424
	ldrb	w0, [x1, x0]
	cmp	w0, 32
	bne	.L49
	ldrsw	x0, [sp, 1048]
	add	x1, sp, 224
	strb	wzr, [x1, x0]
	add	x0, sp, 224
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	strcmp
	cmp	w0, 0
	bne	.L50
	ldr	w0, [sp, 1052]
	add	w0, w0, 1
	str	w0, [sp, 1052]
	str	wzr, [sp, 1048]
	b	.L51
	ldrsw	x0, [sp, 1052]
	add	x1, sp, 424
	ldrb	w2, [x1, x0]
	ldrsw	x0, [sp, 1048]
	add	x1, sp, 224
	strb	w2, [x1, x0]
	ldr	w0, [sp, 1052]
	add	w0, w0, 1
	str	w0, [sp, 1052]
	ldr	w0, [sp, 1048]
	add	w0, w0, 1
	str	w0, [sp, 1048]
	ldrsw	x0, [sp, 1052]
	add	x1, sp, 424
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L52
	ldrsw	x0, [sp, 1048]
	add	x1, sp, 224
	strb	wzr, [x1, x0]
	add	x0, sp, 224
	bl	search
	str	w0, [sp, 1044]
	b	.L53
	adrp	x0, words
	add	x0, x0, :lo12:words
	ldrsw	x1, [sp, 1044]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Term
	add	x2, x0, :lo12:Term
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 100]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 624
	mov	w2, 1
	str	w2, [x1, x0]
	ldr	w0, [sp, 1044]
	add	w0, w0, 1
	str	w0, [sp, 1044]
	adrp	x0, step
	add	x0, x0, :lo12:step
	ldr	w0, [x0]
	ldr	w1, [sp, 1044]
	cmp	w1, w0
	blt	.L54
	str	wzr, [sp, 1052]
	b	.L55
	ldrsw	x0, [sp, 1052]
	lsl	x0, x0, 2
	add	x1, sp, 624
	ldr	w0, [x1, x0]
	cmp	w0, 1
	beq	.L78
	ldr	w0, [sp, 1040]
	cmp	w0, 1
	bne	.L58
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
	adrp	x0, doc
	add	x0, x0, :lo12:doc
	ldrsw	x1, [sp, 1052]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 1048]
	b	.L59
	ldrsw	x1, [sp, 1048]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	sub	x1, x1, x0
	lsl	x0, x1, 1
	mov	x1, x0
	adrp	x0, lines
	add	x0, x0, :lo12:lines
	add	x0, x1, x0
	bl	puts
	ldr	w0, [sp, 1048]
	add	w0, w0, 1
	str	w0, [sp, 1048]
	ldr	w0, [sp, 1052]
	add	w1, w0, 1
	adrp	x0, doc
	add	x0, x0, :lo12:doc
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 1048]
	cmp	w1, w0
	blt	.L60
	mov	w0, 1
	str	w0, [sp, 1040]
	b	.L57
	nop
	ldr	w0, [sp, 1052]
	add	w0, w0, 1
	str	w0, [sp, 1052]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 1052]
	cmp	w1, w0
	blt	.L61
	b	.L46
	ldrsw	x0, [sp, 1052]
	add	x1, sp, 424
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L63
	add	x0, sp, 224
	bl	search
	str	w0, [sp, 1044]
	ldr	w0, [sp, 1044]
	cmn	w0, #1
	bne	.L64
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
	b	.L46
	adrp	x0, words
	add	x0, x0, :lo12:words
	ldrsw	x1, [sp, 1044]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Term
	add	x2, x0, :lo12:Term
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 100]
	str	w0, [sp, 1032]
	adrp	x0, words
	add	x0, x0, :lo12:words
	ldrsw	x1, [sp, 1044]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Term
	add	x2, x0, :lo12:Term
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 104]
	str	w0, [sp, 1028]
	ldrsw	x1, [sp, 1028]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	sub	x1, x1, x0
	lsl	x0, x1, 1
	mov	x1, x0
	adrp	x0, lines
	add	x0, x0, :lo12:lines
	add	x0, x1, x0
	bl	puts
	ldr	w0, [sp, 1044]
	add	w0, w0, 1
	str	w0, [sp, 1052]
	b	.L66
	adrp	x0, words
	add	x0, x0, :lo12:words
	ldrsw	x1, [sp, 1052]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Term
	add	x2, x0, :lo12:Term
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 100]
	ldr	w1, [sp, 1032]
	cmp	w1, w0
	beq	.L67
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
	adrp	x0, words
	add	x0, x0, :lo12:words
	ldrsw	x1, [sp, 1052]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Term
	add	x2, x0, :lo12:Term
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 100]
	str	w0, [sp, 1032]
	b	.L68
	adrp	x0, words
	add	x0, x0, :lo12:words
	ldrsw	x1, [sp, 1052]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Term
	add	x2, x0, :lo12:Term
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 104]
	ldr	w1, [sp, 1028]
	cmp	w1, w0
	beq	.L79
	adrp	x0, words
	add	x0, x0, :lo12:words
	ldrsw	x1, [sp, 1052]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Term
	add	x2, x0, :lo12:Term
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 104]
	str	w0, [sp, 1028]
	ldrsw	x1, [sp, 1028]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	sub	x1, x1, x0
	lsl	x0, x1, 1
	mov	x1, x0
	adrp	x0, lines
	add	x0, x0, :lo12:lines
	add	x0, x1, x0
	bl	puts
	b	.L69
	nop
	ldr	w0, [sp, 1052]
	add	w0, w0, 1
	str	w0, [sp, 1052]
	adrp	x0, step
	add	x0, x0, :lo12:step
	ldr	w0, [x0]
	ldr	w1, [sp, 1052]
	cmp	w1, w0
	blt	.L70
	b	.L46
	ldr	w0, [sp, 1052]
	add	w0, w0, 1
	str	w0, [sp, 1052]
	str	wzr, [sp, 1048]
	b	.L71
	ldrsw	x0, [sp, 1052]
	add	x1, sp, 424
	ldrb	w2, [x1, x0]
	ldrsw	x0, [sp, 1048]
	add	x1, sp, 24
	strb	w2, [x1, x0]
	ldr	w0, [sp, 1052]
	add	w0, w0, 1
	str	w0, [sp, 1052]
	ldr	w0, [sp, 1048]
	add	w0, w0, 1
	str	w0, [sp, 1048]
	ldrsw	x0, [sp, 1052]
	add	x1, sp, 424
	ldrb	w0, [x1, x0]
	cmp	w0, 32
	bne	.L72
	ldrsw	x0, [sp, 1048]
	add	x1, sp, 24
	strb	wzr, [x1, x0]
	add	x2, sp, 24
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L73
	str	wzr, [sp, 1036]
	b	.L74
	mov	w0, 1
	str	w0, [sp, 1036]
	ldr	w0, [sp, 1052]
	add	w0, w0, 1
	str	w0, [sp, 1052]
	str	wzr, [sp, 1048]
	b	.L75
	ldrsw	x0, [sp, 1052]
	add	x1, sp, 424
	ldrb	w2, [x1, x0]
	ldrsw	x0, [sp, 1048]
	add	x1, sp, 24
	strb	w2, [x1, x0]
	ldr	w0, [sp, 1052]
	add	w0, w0, 1
	str	w0, [sp, 1052]
	ldr	w0, [sp, 1048]
	add	w0, w0, 1
	str	w0, [sp, 1048]
	ldrsw	x0, [sp, 1052]
	add	x1, sp, 424
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L76
	ldrsw	x0, [sp, 1048]
	add	x1, sp, 24
	strb	wzr, [x1, x0]
	add	x1, sp, 24
	add	x0, sp, 224
	mov	x2, x1
	mov	x1, x0
	ldr	w0, [sp, 1036]
	bl	AndOr
	ldp	x29, x30, [sp]
	add	sp, sp, 1056
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L81
	ldr	w0, [sp, 28]
	bl	input
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L82
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, l
	add	x0, x0, :lo12:l
	ldr	w2, [x0]
	adrp	x0, doc
	add	x0, x0, :lo12:doc
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w0, [x0]
	sxtw	x1, w0
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 4
	adrp	x0, words
	add	x0, x0, :lo12:words
	bl	qsort
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L83
	bl	query
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	puts
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L84
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret