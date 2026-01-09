Check:
Hide:
Match:
n:
boys:
height:
music:
sport:
main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	add	x0, sp, 52
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 72]
	b	.L2
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	x2, 53392
	movk	x2, 0x3, lsl 16
	mov	w1, 0
	adrp	x0, Hide
	add	x0, x0, :lo12:Hide
	bl	memset
	str	wzr, [sp, 64]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w0, w0, #1
	str	w0, [sp, 60]
	str	wzr, [sp, 76]
	b	.L3
	add	x1, sp, 24
	add	x0, sp, 48
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldrb	w0, [sp, 24]
	cmp	w0, 77
	bne	.L4
	ldr	w0, [sp, 64]
	str	w0, [sp, 68]
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
	b	.L5
	ldr	w0, [sp, 60]
	str	w0, [sp, 68]
	ldr	w0, [sp, 60]
	sub	w0, w0, #1
	str	w0, [sp, 60]
	ldr	w2, [sp, 48]
	adrp	x0, height
	add	x0, x0, :lo12:height
	ldrsw	x1, [sp, 68]
	str	w2, [x0, x1, lsl 2]
	ldrsw	x1, [sp, 68]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, music
	add	x1, x1, :lo12:music
	add	x3, x0, x1
	ldrsw	x1, [sp, 68]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, sport
	add	x1, x1, :lo12:sport
	add	x0, x0, x1
	mov	x2, x0
	mov	x1, x3
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 76]
	cmp	w1, w0
	blt	.L6
	adrp	x0, boys
	add	x0, x0, :lo12:boys
	ldr	w1, [sp, 64]
	str	w1, [x0]
	str	wzr, [sp, 76]
	b	.L7
	adrp	x0, boys
	add	x0, x0, :lo12:boys
	ldr	w0, [x0]
	str	w0, [sp, 68]
	b	.L8
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 76]
	bl	_Z7compareii
	and	w0, w0, 255
	cmp	w0, 1
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L9
	adrp	x0, Hide
	add	x3, x0, :lo12:Hide
	ldrsw	x2, [sp, 68]
	ldrsw	x1, [sp, 76]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0]
	adrp	x0, Hide
	add	x3, x0, :lo12:Hide
	ldrsw	x2, [sp, 76]
	ldrsw	x1, [sp, 68]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0]
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 68]
	cmp	w1, w0
	blt	.L10
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	adrp	x0, boys
	add	x0, x0, :lo12:boys
	ldr	w0, [x0]
	ldr	w1, [sp, 76]
	cmp	w1, w0
	blt	.L11
	str	wzr, [sp, 56]
	mov	x2, 2000
	mov	w1, -1
	adrp	x0, Match
	add	x0, x0, :lo12:Match
	bl	memset
	str	wzr, [sp, 76]
	b	.L12
	mov	x2, 500
	mov	w1, 0
	adrp	x0, Check
	add	x0, x0, :lo12:Check
	bl	memset
	ldr	w0, [sp, 76]
	bl	_Z3DFSi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L13
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	adrp	x0, boys
	add	x0, x0, :lo12:boys
	ldr	w0, [x0]
	ldr	w1, [sp, 76]
	cmp	w1, w0
	blt	.L14
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	ldr	w0, [sp, 56]
	sub	w0, w1, w0
	mov	w1, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldr	w0, [sp, 52]
	ldr	w1, [sp, 72]
	cmp	w1, w0
	blt	.L15
	mov	w0, 0
	ldp	x29, x30, [sp], 80
	ret
_Z3DFSi:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, boys
	add	x0, x0, :lo12:boys
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bge	.L18
	adrp	x0, boys
	add	x0, x0, :lo12:boys
	ldr	w0, [x0]
	str	w0, [sp, 40]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	str	w0, [sp, 36]
	b	.L19
	str	wzr, [sp, 40]
	adrp	x0, boys
	add	x0, x0, :lo12:boys
	ldr	w0, [x0]
	str	w0, [sp, 36]
	ldr	w0, [sp, 40]
	str	w0, [sp, 44]
	b	.L20
	adrp	x0, Hide
	add	x3, x0, :lo12:Hide
	ldrsw	x2, [sp, 28]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L21
	adrp	x0, Check
	add	x1, x0, :lo12:Check
	ldrsw	x0, [sp, 44]
	ldrb	w0, [x1, x0]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L21
	adrp	x0, Check
	add	x1, x0, :lo12:Check
	ldrsw	x0, [sp, 44]
	mov	w2, 1
	strb	w2, [x1, x0]
	adrp	x0, Match
	add	x0, x0, :lo12:Match
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 32]
	adrp	x0, Match
	add	x0, x0, :lo12:Match
	ldrsw	x1, [sp, 44]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 32]
	cmn	w0, #1
	beq	.L22
	ldr	w0, [sp, 32]
	bl	_Z3DFSi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L23
	mov	w0, 1
	b	.L24
	mov	w0, 0
	cmp	w0, 0
	beq	.L25
	mov	w0, 1
	b	.L26
	adrp	x0, Match
	add	x0, x0, :lo12:Match
	ldrsw	x1, [sp, 44]
	ldr	w2, [sp, 32]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L27
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
_Z7compareii:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	adrp	x0, height
	add	x0, x0, :lo12:height
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, height
	add	x0, x0, :lo12:height
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	sub	w0, w1, w0
	cmp	w0, 40
	bgt	.L29
	adrp	x0, height
	add	x0, x0, :lo12:height
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, height
	add	x0, x0, :lo12:height
	ldrsw	x2, [sp, 28]
	ldr	w0, [x0, x2, lsl 2]
	sub	w0, w1, w0
	cmp	w0, 40
	ble	.L30
	mov	w0, 0
	b	.L31
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, music
	add	x1, x1, :lo12:music
	add	x2, x0, x1
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, music
	add	x1, x1, :lo12:music
	add	x0, x0, x1
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L32
	mov	w0, 0
	b	.L31
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, sport
	add	x1, x1, :lo12:sport
	add	x2, x0, x1
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, sport
	add	x1, x1, :lo12:sport
	add	x0, x0, x1
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L33
	mov	w0, 0
	b	.L31
	mov	w0, 1
	ldp	x29, x30, [sp], 32
	ret