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
n1:
n2:
k1:
k2:
_ZL3mod:
dp:
_Z3soliiii:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	w2, [sp, 20]
	str	w3, [sp, 16]
	adrp	x0, n1
	add	x0, x0, :lo12:n1
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bne	.L3
	adrp	x0, n2
	add	x0, x0, :lo12:n2
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bne	.L3
	mov	w0, 1
	b	.L4
	ldrsw	x3, [sp, 16]
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 5
	add	x0, x0, x1
	ldrsw	x2, [sp, 20]
	mov	x1, x2
	lsl	x1, x1, 4
	sub	x1, x1, x2
	add	x0, x0, x1
	add	x1, x3, x0
	ldrsw	x2, [sp, 28]
	mov	x0, 23625
	mul	x0, x2, x0
	add	x0, x1, x0
	lsl	x1, x0, 2
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	add	x0, x1, x0
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	ldr	w0, [x0]
	cmn	w0, #1
	beq	.L5
	ldr	x0, [sp, 32]
	ldr	w0, [x0]
	b	.L4
	str	wzr, [sp, 44]
	str	wzr, [sp, 40]
	adrp	x0, k1
	add	x0, x0, :lo12:k1
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bge	.L6
	adrp	x0, n1
	add	x0, x0, :lo12:n1
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bge	.L6
	ldr	w0, [sp, 28]
	add	w4, w0, 1
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	mov	w3, 0
	mov	w2, w0
	ldr	w1, [sp, 24]
	mov	w0, w4
	bl	_Z3soliiii
	str	w0, [sp, 44]
	adrp	x0, k2
	add	x0, x0, :lo12:k2
	ldr	w0, [x0]
	ldr	w1, [sp, 16]
	cmp	w1, w0
	bge	.L7
	adrp	x0, n2
	add	x0, x0, :lo12:n2
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bge	.L7
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	mov	w3, w0
	mov	w2, 0
	ldr	w0, [sp, 28]
	bl	_Z3soliiii
	str	w0, [sp, 40]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	add	w1, w1, w0
	mov	w0, 15241
	movk	w0, 0x55e6, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 25
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 57600
	movk	w2, 0x5f5, lsl 16
	mul	w0, w0, w2
	sub	w0, w1, w0
	ldr	x1, [sp, 32]
	str	w0, [x1]
	ldr	x0, [sp, 32]
	ldr	w0, [x0]
	ldp	x29, x30, [sp], 48
	ret
main:
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_Z5setupv
	adrp	x0, n1
	add	x1, x0, :lo12:n1
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	adrp	x0, n2
	add	x1, x0, :lo12:n2
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	adrp	x0, k1
	add	x1, x0, :lo12:k1
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	adrp	x0, k2
	add	x1, x0, :lo12:k2
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, 26564
	movk	x2, 0x97, lsl 16
	mov	w1, -1
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	bl	memset
	mov	w3, 0
	mov	w2, 0
	mov	w1, 0
	mov	w0, 0
	bl	_Z3soliiii
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L12
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L12
	adrp	x0, _ZStL8__ioinit
	bl	_ZNSt8ios_base4InitC1Ev
	adrp	x0, _ZStL8__ioinit
	bl	__cxa_atexit
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	w1, 65535
	mov	w0, 1
	ldp	x29, x30, [sp], 16
	ret