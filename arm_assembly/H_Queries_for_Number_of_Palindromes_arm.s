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
mem:
vis1:
vis2:
dp:
_Z5isPalii:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	w0, [sp, 44]
	str	w1, [sp, 40]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	blt	.L3
	mov	w0, 1
	b	.L4
	ldrsw	x1, [sp, 40]
	ldrsw	x2, [sp, 44]
	mov	x0, 5005
	mul	x0, x2, x0
	add	x1, x1, x0
	adrp	x0, mem
	add	x0, x0, :lo12:mem
	add	x0, x1, x0
	str	x0, [sp, 56]
	adrp	x0, vis1
	add	x2, x0, :lo12:vis1
	ldrsw	x0, [sp, 40]
	ldrsw	x3, [sp, 44]
	mov	x1, 5005
	mul	x1, x3, x1
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L5
	ldr	x0, [sp, 56]
	ldrb	w0, [x0]
	b	.L4
	adrp	x0, vis1
	add	x2, x0, :lo12:vis1
	ldrsw	x0, [sp, 40]
	ldrsw	x3, [sp, 44]
	mov	x1, 5005
	mul	x1, x3, x1
	add	x1, x2, x1
	add	x0, x1, x0
	mov	w1, 1
	strb	w1, [x0]
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	ldrb	w19, [x0]
	ldrsw	x0, [sp, 40]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	ldrb	w0, [x0]
	cmp	w19, w0
	bne	.L6
	ldr	w0, [sp, 44]
	add	w2, w0, 1
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	mov	w1, w0
	mov	w0, w2
	bl	_Z5isPalii
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L6
	mov	w1, 1
	b	.L7
	mov	w1, 0
	ldr	x0, [sp, 56]
	strb	w1, [x0]
	ldr	x0, [sp, 56]
	ldrb	w0, [x0]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
_Z3solii:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	w0, [sp, 44]
	str	w1, [sp, 40]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	ble	.L9
	mov	w0, 0
	b	.L10
	adrp	x0, vis2
	add	x2, x0, :lo12:vis2
	ldrsw	x0, [sp, 40]
	ldrsw	x3, [sp, 44]
	mov	x1, 5005
	mul	x1, x3, x1
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L11
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x1, [sp, 40]
	ldrsw	x3, [sp, 44]
	mov	x2, 5005
	mul	x2, x3, x2
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
	b	.L10
	adrp	x0, vis2
	add	x2, x0, :lo12:vis2
	ldrsw	x0, [sp, 40]
	ldrsw	x3, [sp, 44]
	mov	x1, 5005
	mul	x1, x3, x1
	add	x1, x2, x1
	add	x0, x1, x0
	mov	w1, 1
	strb	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	ldr	w1, [sp, 40]
	bl	_Z3solii
	str	w0, [sp, 60]
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	mov	w1, w0
	ldr	w0, [sp, 44]
	bl	_Z3solii
	str	w0, [sp, 56]
	ldr	w0, [sp, 44]
	add	w2, w0, 1
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	mov	w1, w0
	mov	w0, w2
	bl	_Z3solii
	str	w0, [sp, 52]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	add	w1, w1, w0
	ldr	w0, [sp, 52]
	sub	w19, w1, w0
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	bl	_Z5isPalii
	and	w0, w0, 255
	add	w2, w19, w0
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x1, [sp, 40]
	ldrsw	x4, [sp, 44]
	mov	x3, 5005
	mul	x3, x4, x3
	add	x1, x3, x1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x1, [sp, 40]
	ldrsw	x3, [sp, 44]
	mov	x2, 5005
	mul	x2, x3, x2
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	bl	_Z5setupv
	adrp	x0, _Z1sB5cxx11
	add	x1, x0, :lo12:_Z1sB5cxx11
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L13
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 20
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 20]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 20]
	bl	_Z3solii
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