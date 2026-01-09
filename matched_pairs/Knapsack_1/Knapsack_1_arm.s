_ZnwmPv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	.L4
	ldr	x0, [sp]
	b	.L5
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
_Z5setupv:
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	adrp	x0, :got:stdin
	ldr	x0, [x0, #:got_lo12:stdin]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	freopen
	adrp	x0, :got:stdout
	ldr	x0, [x0, #:got_lo12:stdout]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	freopen
	nop
	ldp	x29, x30, [sp], 16
	ret
n:
k:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaISt4pairIxxEED2Ev
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
arr:
_ZL1N:
dp:
_Z3solxx:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldr	x2, [sp, 40]
	mov	x1, 3397
	movk	x1, 0x3, lsl 16
	mul	x2, x2, x1
	ldr	x1, [sp, 32]
	add	x1, x2, x1
	ldr	x0, [x0, x1, lsl 3]
	cmn	x0, #1
	beq	.L11
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldr	x2, [sp, 40]
	mov	x1, 3397
	movk	x1, 0x3, lsl 16
	mul	x2, x2, x1
	ldr	x1, [sp, 32]
	add	x1, x2, x1
	ldr	x0, [x0, x1, lsl 3]
	b	.L15
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	x0, [x0]
	ldr	x1, [sp, 40]
	cmp	x1, x0
	bne	.L13
	mov	x0, 0
	b	.L15
	str	xzr, [sp, 56]
	ldr	x0, [sp, 40]
	mov	x1, x0
	adrp	x0, arr
	add	x0, x0, :lo12:arr
	ldr	x1, [x0]
	ldr	x0, [sp, 32]
	add	x1, x1, x0
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, le
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L14
	ldr	x0, [sp, 40]
	mov	x1, x0
	adrp	x0, arr
	add	x0, x0, :lo12:arr
	ldr	x19, [x0, 8]
	ldr	x0, [sp, 40]
	add	x20, x0, 1
	ldr	x0, [sp, 40]
	mov	x1, x0
	adrp	x0, arr
	add	x0, x0, :lo12:arr
	ldr	x1, [x0]
	ldr	x0, [sp, 32]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x20
	bl	_Z3solxx
	add	x0, x19, x0
	str	x0, [sp, 56]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	ldr	x1, [sp, 32]
	bl	_Z3solxx
	str	x0, [sp, 48]
	add	x1, sp, 48
	add	x0, sp, 56
	bl	_ZSt3maxIxERKT_S2_S2_
	ldr	x2, [x0]
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldr	x3, [sp, 40]
	mov	x1, 3397
	movk	x1, 0x3, lsl 16
	mul	x3, x3, x1
	ldr	x1, [sp, 32]
	add	x1, x3, x1
	str	x2, [x0, x1, lsl 3]
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldr	x2, [sp, 40]
	mov	x1, 3397
	movk	x1, 0x3, lsl 16
	mul	x2, x2, x1
	ldr	x1, [sp, 32]
	add	x1, x2, x1
	ldr	x0, [x0, x1, lsl 3]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	bl	_Z5setupv
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x2, x0
	adrp	x0, k
	add	x1, x0, :lo12:k
	mov	x0, x2
	bl	_ZNSirsERx
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	x0, [x0]
	mov	x1, x0
	adrp	x0, arr
	add	x0, x0, :lo12:arr
	str	wzr, [sp, 44]
	b	.L17
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, arr
	add	x0, x0, :lo12:arr
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x19, x0
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, arr
	add	x0, x0, :lo12:arr
	add	x0, x0, 8
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSirsERx
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldrsw	x1, [sp, 44]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	x0, [x0]
	cmp	x1, x0
	blt	.L18
	mov	x2, 35432
	movk	x2, 0xa03, lsl 16
	mov	w1, -1
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	bl	memset
	mov	x1, 0
	mov	x0, 0
	bl	_Z3solxx
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	.L21
	ldr	x0, [sp]
	b	.L22
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaISt4pairIxxEEC2Ev
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x3, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 4
	mov	x2, x0
	mov	x1, x3
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	lsl	x0, x0, 4
	add	x0, x1, x0
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	bge	.L29
	ldr	x0, [sp]
	b	.L30
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 16]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L32
	ldr	x0, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 16]
	sub	x0, x0, x1
	mov	x1, x0
	ldr	x0, [sp, 24]
	b	.L34
	ldr	x0, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 16]
	cmp	x0, x1
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L34
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 16]
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	x1, x0
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 16]
	nop
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	beq	.L40
	ldr	x0, [sp, 40]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	nop
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 4
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	beq	.L50
	ldr	x0, [sp, 40]
	str	x0, [sp, 72]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	sub	x0, x1, x0
	asr	x0, x0, 4
	str	x0, [sp, 64]
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	bhi	.L45
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 72]
	sub	x0, x1, x0
	ldr	x1, [sp, 64]
	cmp	x1, x0
	bls	.L46
	mov	w0, 1
	b	.L47
	mov	w0, 0
	cmp	w0, 0
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcc	.L49
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 8]
	ldr	x0, [sp, 40]
	mov	x2, x0
	ldr	x1, [sp, 32]
	mov	x0, x19
	mov	x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	b	.L50
	adrp	x0, .LC4
	add	x2, x0, :lo12:.LC4
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 56]
	str	x0, [sp, 48]
	ldr	x0, [sp, 72]
	lsl	x0, x0, 4
	ldr	x1, [sp, 48]
	add	x19, x1, x0
	ldr	x0, [sp, 40]
	mov	x2, x0
	ldr	x1, [sp, 32]
	mov	x0, x19
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 40]
	mov	x3, x0
	ldr	x2, [sp, 48]
	mov	x1, x20
	mov	x0, x19
	ldr	x3, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x4, [x0]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 4
	mov	x2, x0
	mov	x1, x4
	mov	x0, x3
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 48]
	str	x1, [x0]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 32]
	add	x0, x1, x0
	lsl	x0, x0, 4
	ldr	x1, [sp, 48]
	add	x1, x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	ldr	x0, [sp, 56]
	lsl	x0, x0, 4
	ldr	x1, [sp, 48]
	add	x1, x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 16]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 32]
	sub	x0, x1, x0
	asr	x0, x0, 4
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L53
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 8]
	ldr	x0, [sp, 40]
	mov	x2, x0
	mov	x1, x19
	ldr	x0, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 32]
	str	x1, [x0, 8]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	mov	x19, x0
	ldr	x0, [sp, 56]
	sub	x1, x19, x0
	ldr	x0, [sp, 48]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L63
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 56]
	mov	x19, x0
	ldr	x0, [sp, 56]
	str	x0, [sp, 64]
	add	x1, sp, 48
	add	x0, sp, 64
	bl	_ZSt3maxImERKT_S2_S2_
	ldr	x0, [x0]
	add	x0, x19, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 56]
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	bcc	.L64
	ldr	x0, [sp, 56]
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	bls	.L65
	ldr	x0, [sp, 56]
	b	.L66
	ldr	x0, [sp, 72]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L69
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	b	.L71
	mov	x0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x3, [sp, 16]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	lsl	x0, x0, 4
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	mov	x0, 576460752303423487
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	add	x1, sp, 32
	add	x0, sp, 40
	bl	_ZSt3minImERKT_S2_S2_
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	w0, 1
	strb	w0, [sp, 47]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	x2, 0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	strb	w4, [sp, 24]
	ldr	x3, [sp, 32]
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	b	.L91
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 16]
	sub	x0, x0, #1
	str	x0, [sp, 16]
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L92
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	x0, 576460752303423487
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 32]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L97
	ldr	x1, [sp, 32]
	mov	x0, 1152921504606846975
	cmp	x1, x0
	bls	.L98
	bl	_ZSt17__throw_bad_allocv
	ldr	x0, [sp, 32]
	lsl	x0, x0, 4
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x0, [sp, 56]
	mov	x19, x0
	ldr	x0, [sp, 48]
	mov	x20, x0
	ldr	x0, [sp, 40]
	ldr	x3, [sp, 32]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x1, x0
	mov	x0, 16
	bl	_ZnwmPv
	bl	_ZNSt4pairIxxEC1IxxLb1EEEv
	nop
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x0, [sp, 40]
	str	x0, [sp, 72]
	b	.L111
	ldr	x0, [sp, 72]
	mov	x19, x0
	ldr	x0, [sp, 56]
	ldr	x2, [sp, 32]
	mov	x1, x0
	mov	x0, x19
	ldr	x0, [sp, 56]
	add	x0, x0, 16
	str	x0, [sp, 56]
	ldr	x0, [sp, 72]
	add	x0, x0, 16
	str	x0, [sp, 72]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	bne	.L112
	ldr	x0, [sp, 72]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 32]
	mov	x1, x0
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 40]
	mov	x19, x0
	ldr	x0, [sp, 48]
	mov	x1, x0
	mov	x0, 16
	bl	_ZnwmPv
	mov	x2, x0
	ldp	x0, x1, [x19]
	stp	x0, x1, [x2]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L126
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L126
	adrp	x0, _ZStL8__ioinit
	bl	_ZNSt8ios_base4InitC1Ev
	adrp	x0, _ZStL8__ioinit
	bl	__cxa_atexit
	adrp	x0, arr
	add	x0, x0, :lo12:arr
	adrp	x0, arr
	add	x1, x0, :lo12:arr
	bl	__cxa_atexit
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 40]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	ldr	x0, [sp, 40]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	w1, 65535
	mov	w0, 1
	ldp	x29, x30, [sp], 16
	ret