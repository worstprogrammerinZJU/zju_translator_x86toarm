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
m:
_ZL3mod:
dp:
_Z3solii:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	w0, [sp, 44]
	str	w1, [sp, 40]
	ldr	w0, [sp, 44]
	cmp	w0, 1
	bne	.L3
	ldr	w0, [sp, 40]
	cmp	w0, 1
	bne	.L3
	mov	x0, 1
	b	.L4
	ldr	w0, [sp, 44]
	cmp	w0, 0
	ble	.L5
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bgt	.L6
	mov	x0, 0
	b	.L4
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x1, [sp, 40]
	ldrsw	x3, [sp, 44]
	mov	x2, 3005
	mul	x2, x3, x2
	add	x1, x2, x1
	ldr	x0, [x0, x1, lsl 3]
	cmn	x0, #1
	beq	.L7
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x1, [sp, 40]
	ldrsw	x3, [sp, 44]
	mov	x2, 3005
	mul	x2, x3, x2
	add	x1, x2, x1
	ldr	x0, [x0, x1, lsl 3]
	b	.L4
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	ldr	w1, [sp, 40]
	bl	_Z3solii
	mov	x19, x0
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	mov	w1, w0
	ldr	w0, [sp, 44]
	bl	_Z3solii
	add	x0, x19, x0
	mov	x1, 36837
	movk	x1, 0x12a2, lsl 16
	movk	x1, 0x5f31, lsl 32
	movk	x1, 0x8970, lsl 48
	smulh	x1, x0, x1
	add	x1, x1, x0
	asr	x2, x1, 29
	asr	x1, x0, 63
	sub	x1, x2, x1
	mov	x2, 51719
	movk	x2, 0x3b9a, lsl 16
	mul	x1, x1, x2
	sub	x1, x0, x1
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x2, [sp, 40]
	ldrsw	x4, [sp, 44]
	mov	x3, 3005
	mul	x3, x4, x3
	add	x2, x3, x2
	str	x1, [x0, x2, lsl 3]
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x1, [sp, 40]
	ldrsw	x3, [sp, 44]
	mov	x2, 3005
	mul	x2, x3, x2
	add	x1, x2, x1
	ldr	x0, [x0, x1, lsl 3]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	bl	_Z5setupv
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, 19528
	movk	x2, 0x44e, lsl 16
	mov	w1, -1
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	bl	memset
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	mov	x1, 1
	str	x1, [x0, 24048]
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L9
	mov	w0, 1
	str	w0, [sp, 24]
	b	.L10
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	_Z3solii
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 3000
	ble	.L11
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 3000
	ble	.L12
	b	.L13
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	adrp	x0, m
	add	x1, x0, :lo12:m
	mov	x0, x2
	bl	_ZNSirsERi
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w2, [x0]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w1, [x0]
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	sxtw	x1, w1
	sxtw	x3, w2
	mov	x2, 3005
	mul	x2, x3, x2
	add	x1, x2, x1
	ldr	x0, [x0, x1, lsl 3]
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w1, 10
	ldr	w0, [sp, 20]
	sub	w1, w0, #1
	str	w1, [sp, 20]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L14
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L18
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L18
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