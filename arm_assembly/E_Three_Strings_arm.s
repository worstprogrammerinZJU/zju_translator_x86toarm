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
_Z1aB5cxx11:
_Z1bB5cxx11:
_Z1cB5cxx11:
dp:
_Z3soliii:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	w0, [sp, 44]
	str	w1, [sp, 40]
	str	w2, [sp, 36]
	ldrsw	x1, [sp, 40]
	ldrsw	x2, [sp, 44]
	mov	x0, 2005
	mul	x0, x2, x0
	add	x0, x1, x0
	lsl	x1, x0, 2
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	add	x0, x1, x0
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	w0, [x0]
	cmn	w0, #1
	beq	.L3
	ldr	x0, [sp, 56]
	ldr	w0, [x0]
	b	.L12
	ldrsw	x19, [sp, 36]
	adrp	x0, _Z1cB5cxx11
	add	x0, x0, :lo12:_Z1cB5cxx11
	cmp	x19, x0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L5
	mov	w0, 0
	b	.L12
	mov	w0, 2147483647
	str	w0, [sp, 52]
	mov	w0, 2147483647
	str	w0, [sp, 48]
	ldrsw	x19, [sp, 44]
	adrp	x0, _Z1aB5cxx11
	add	x0, x0, :lo12:_Z1aB5cxx11
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L6
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, _Z1aB5cxx11
	add	x0, x0, :lo12:_Z1aB5cxx11
	ldrb	w19, [x0]
	ldrsw	x0, [sp, 36]
	mov	x1, x0
	adrp	x0, _Z1cB5cxx11
	add	x0, x0, :lo12:_Z1cB5cxx11
	ldrb	w0, [x0]
	cmp	w19, w0
	bne	.L7
	ldr	w0, [sp, 44]
	add	w3, w0, 1
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	mov	w2, w0
	ldr	w1, [sp, 40]
	mov	w0, w3
	bl	_Z3soliii
	b	.L8
	ldr	w0, [sp, 44]
	add	w3, w0, 1
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	mov	w2, w0
	ldr	w1, [sp, 40]
	mov	w0, w3
	bl	_Z3soliii
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldrsw	x19, [sp, 40]
	adrp	x0, _Z1bB5cxx11
	add	x0, x0, :lo12:_Z1bB5cxx11
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L9
	ldrsw	x0, [sp, 40]
	mov	x1, x0
	adrp	x0, _Z1bB5cxx11
	add	x0, x0, :lo12:_Z1bB5cxx11
	ldrb	w19, [x0]
	ldrsw	x0, [sp, 36]
	mov	x1, x0
	adrp	x0, _Z1cB5cxx11
	add	x0, x0, :lo12:_Z1cB5cxx11
	ldrb	w0, [x0]
	cmp	w19, w0
	bne	.L10
	ldr	w0, [sp, 40]
	add	w1, w0, 1
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	mov	w2, w0
	ldr	w0, [sp, 44]
	bl	_Z3soliii
	b	.L11
	ldr	w0, [sp, 40]
	add	w1, w0, 1
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	mov	w2, w0
	ldr	w0, [sp, 44]
	bl	_Z3soliii
	add	w0, w0, 1
	str	w0, [sp, 48]
	add	x1, sp, 48
	add	x0, sp, 52
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w1, [x0]
	ldr	x0, [sp, 56]
	str	w1, [x0]
	ldr	x0, [sp, 56]
	ldr	w0, [x0]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	bl	_Z5setupv
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L14
	adrp	x0, _Z1aB5cxx11
	add	x1, x0, :lo12:_Z1aB5cxx11
	adrp	x0, :got:_ZSt3cin
	mov	x2, x0
	adrp	x0, _Z1bB5cxx11
	add	x1, x0, :lo12:_Z1bB5cxx11
	mov	x0, x2
	mov	x2, x0
	adrp	x0, _Z1cB5cxx11
	add	x1, x0, :lo12:_Z1cB5cxx11
	mov	x0, x2
	mov	x2, 23780
	movk	x2, 0xf5, lsl 16
	mov	w1, -1
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	bl	memset
	mov	w2, 0
	mov	w1, 0
	mov	w0, 0
	bl	_Z3soliii
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	str	w1, [sp, 28]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L15
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L18
	ldr	x0, [sp]
	b	.L19
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L22
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L22
	adrp	x0, _ZStL8__ioinit
	bl	_ZNSt8ios_base4InitC1Ev
	adrp	x0, _ZStL8__ioinit
	bl	__cxa_atexit
	adrp	x0, _Z1aB5cxx11
	add	x0, x0, :lo12:_Z1aB5cxx11
	adrp	x0, _Z1aB5cxx11
	add	x1, x0, :lo12:_Z1aB5cxx11
	bl	__cxa_atexit
	adrp	x0, _Z1bB5cxx11
	add	x0, x0, :lo12:_Z1bB5cxx11
	adrp	x0, _Z1bB5cxx11
	add	x1, x0, :lo12:_Z1bB5cxx11
	bl	__cxa_atexit
	adrp	x0, _Z1cB5cxx11
	add	x0, x0, :lo12:_Z1cB5cxx11
	adrp	x0, _Z1cB5cxx11
	add	x1, x0, :lo12:_Z1cB5cxx11
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