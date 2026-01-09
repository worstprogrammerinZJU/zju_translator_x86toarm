n:
m:
LiMing:
score:
hash:
rank:
s:
student:
ELFhash:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	xzr, [sp, 24]
	b	.L2
	ldr	x0, [sp, 24]
	lsl	x1, x0, 4
	ldr	x0, [sp, 8]
	add	x2, x0, 1
	str	x2, [sp, 8]
	ldrb	w0, [x0]
	and	x0, x0, 255
	add	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	and	x0, x0, 4026531840
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L3
	ldr	x0, [sp, 16]
	lsr	x0, x0, 24
	ldr	x1, [sp, 24]
	eor	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	mvn	x0, x0
	ldr	x1, [sp, 24]
	and	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L4
	ldr	x0, [sp, 24]
	mov	x1, 38987
	movk	x1, 0x5499, lsl 16
	movk	x1, 0x12b3, lsl 32
	movk	x1, 0xa323, lsl 48
	umulh	x1, x0, x1
	sub	x2, x0, x1
	lsr	x2, x2, 1
	add	x1, x1, x2
	lsr	x1, x1, 13
	mov	x2, 10007
	mul	x1, x1, x2
	sub	x1, x0, x1
	mov	w0, w1
	add	sp, sp, 32
	ret
find:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	ELFhash
	str	w0, [sp, 44]
	adrp	x0, hash
	add	x0, x0, :lo12:hash
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 44]
	b	.L7
	adrp	x0, student
	add	x2, x0, :lo12:student
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 32]
	str	w0, [sp, 44]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, student
	add	x1, x1, :lo12:student
	add	x0, x0, x1
	ldr	x1, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	ret
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	mov	x2, 40028
	mov	w1, -1
	adrp	x0, hash
	add	x0, x0, :lo12:hash
	bl	memset
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 60]
	b	.L11
	ldrsw	x1, [sp, 60]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, student
	add	x1, x1, :lo12:student
	add	x0, x0, x1
	bl	gets
	adrp	x0, student
	add	x2, x0, :lo12:student
	ldrsw	x1, [sp, 60]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	mov	w1, -1
	str	w1, [x0, 32]
	ldrsw	x1, [sp, 60]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, student
	add	x1, x1, :lo12:student
	add	x0, x0, x1
	bl	ELFhash
	str	w0, [sp, 56]
	adrp	x0, hash
	add	x0, x0, :lo12:hash
	ldrsw	x1, [sp, 56]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 48]
	ldr	w0, [sp, 48]
	cmn	w0, #1
	bne	.L14
	adrp	x0, hash
	add	x0, x0, :lo12:hash
	ldrsw	x1, [sp, 56]
	ldr	w2, [sp, 60]
	str	w2, [x0, x1, lsl 2]
	b	.L13
	ldr	w1, [sp, 48]
	adrp	x0, student
	add	x2, x0, :lo12:student
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 32]
	str	w0, [sp, 48]
	ldr	w1, [sp, 48]
	adrp	x0, student
	add	x2, x0, :lo12:student
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 32]
	cmn	w0, #1
	bne	.L15
	ldr	w1, [sp, 48]
	adrp	x0, student
	add	x2, x0, :lo12:student
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [sp, 60]
	str	w1, [x0, 32]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L16
	adrp	x0, m
	add	x1, x0, :lo12:m
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 60]
	b	.L17
	str	wzr, [sp, 56]
	b	.L18
	add	x0, sp, 48
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	add	x0, sp, 16
	bl	gets
	add	x0, sp, 16
	bl	find
	str	w0, [sp, 52]
	adrp	x0, score
	add	x0, x0, :lo12:score
	ldrsw	x1, [sp, 52]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 48]
	add	w2, w1, w0
	adrp	x0, score
	add	x0, x0, :lo12:score
	ldrsw	x1, [sp, 52]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	blt	.L19
	adrp	x0, LiMing
	add	x0, x0, :lo12:LiMing
	ldr	w1, [x0]
	adrp	x0, score
	add	x0, x0, :lo12:score
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, s
	add	x0, x0, :lo12:s
	str	w1, [x0]
	str	wzr, [sp, 56]
	adrp	x0, rank
	add	x0, x0, :lo12:rank
	mov	w1, 1
	str	w1, [x0]
	b	.L20
	adrp	x0, score
	add	x0, x0, :lo12:score
	ldrsw	x1, [sp, 56]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L21
	adrp	x0, rank
	add	x0, x0, :lo12:rank
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, rank
	add	x0, x0, :lo12:rank
	str	w1, [x0]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	blt	.L22
	adrp	x0, rank
	add	x0, x0, :lo12:rank
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L23
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret