	nop
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
_Z1sB5cxx11:
dp:
_Z3solii:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	str	w0, [sp, 60]
	str	w1, [sp, 56]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	blt	.L5
	mov	w0, 0
	b	.L6
	ldrsw	x1, [sp, 56]
	ldrsw	x2, [sp, 60]
	mov	x0, 1005
	mul	x0, x2, x0
	add	x0, x1, x0
	lsl	x1, x0, 2
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	add	x0, x1, x0
	str	x0, [sp, 96]
	ldr	x0, [sp, 96]
	ldr	w0, [x0]
	cmn	w0, #1
	beq	.L7
	ldr	x0, [sp, 96]
	ldr	w0, [x0]
	b	.L6
	mov	w0, 51712
	movk	w0, 0x3b9a, lsl 16
	str	w0, [sp, 108]
	ldrsw	x0, [sp, 60]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	ldrb	w19, [x0]
	ldrsw	x0, [sp, 56]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	ldrb	w0, [x0]
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
	ldr	w0, [sp, 60]
	add	w2, w0, 1
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	mov	w1, w0
	mov	w0, w2
	bl	_Z3solii
	str	w0, [sp, 108]
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	mov	w1, w0
	ldr	w0, [sp, 60]
	bl	_Z3solii
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	ldr	w1, [sp, 56]
	bl	_Z3solii
	add	w0, w0, 1
	str	w0, [sp, 88]
	ldr	w0, [sp, 60]
	add	w2, w0, 1
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	mov	w1, w0
	mov	w0, w2
	bl	_Z3solii
	add	w0, w0, 1
	str	w0, [sp, 84]
	ldr	w0, [sp, 108]
	str	w0, [sp, 64]
	ldr	w0, [sp, 92]
	str	w0, [sp, 68]
	ldr	w0, [sp, 88]
	str	w0, [sp, 72]
	ldr	w0, [sp, 84]
	str	w0, [sp, 76]
	add	x0, sp, 64
	mov	x20, x0
	mov	x21, 4
	mov	x0, x20
	mov	x1, x21
	mov	w1, w0
	ldr	x0, [sp, 96]
	str	w1, [x0]
	ldr	x0, [sp, 96]
	ldr	w0, [x0]
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 112
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	bl	_Z5setupv
	mov	w0, 1
	str	w0, [sp, 44]
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L10
	adrp	x0, _Z1sB5cxx11
	add	x1, x0, :lo12:_Z1sB5cxx11
	adrp	x0, :got:_ZSt3cin
	mov	x2, 42404
	movk	x2, 0x3d, lsl 16
	mov	w1, -1
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	bl	memset
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	ldr	w0, [sp, 44]
	add	w1, w0, 1
	str	w1, [sp, 44]
	mov	w1, w0
	mov	x0, x2
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x2
	mov	x19, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	sub	w0, w0, #1
	mov	w1, w0
	mov	w0, 0
	bl	_Z3solii
	mov	w1, w0
	mov	x0, x19
	bl	_ZNSolsEi
	mov	w1, 10
	ldr	w0, [sp, 40]
	sub	w1, w0, #1
	str	w1, [sp, 40]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L11
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	stp	x0, x1, [sp, 32]
	add	x0, sp, 32
	mov	x19, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x19
	ldr	w0, [x0]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	mov	x19, x0
	ldr	x0, [sp, 40]
	lsl	x0, x0, 2
	add	x0, x19, x0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	mov	w2, w19
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 16]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	cset	w0, lt
	and	w0, w0, 255
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	strb	w2, [sp, 24]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bne	.L26
	ldr	x0, [sp, 40]
	b	.L27
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	b	.L28
	add	x0, sp, 24
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L28
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	ldr	x0, [sp, 40]
	add	x0, x0, 4
	str	x0, [sp, 40]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L29
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L32
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L32
	adrp	x0, _ZStL8__ioinit
	bl	_ZNSt8ios_base4InitC1Ev
	adrp	x0, _ZStL8__ioinit
	bl	__cxa_atexit
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	adrp	x0, _Z1sB5cxx11
	add	x1, x0, :lo12:_Z1sB5cxx11
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