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
t:
a:
b:
_ZL1N:
dp:
_Z3solib:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	str	w0, [sp, 44]
	strb	w1, [sp, 43]
	adrp	x0, t
	add	x0, x0, :lo12:t
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L5
	mov	w0, -2147483648
	b	.L6
	ldrb	w0, [sp, 43]
	sxtw	x1, w0
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 1
	add	x0, x1, x0
	lsl	x1, x0, 2
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	add	x0, x1, x0
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	ldr	w0, [x0]
	cmn	w0, #1
	beq	.L7
	ldr	x0, [sp, 80]
	ldr	w0, [x0]
	b	.L6
	adrp	x0, a
	add	x0, x0, :lo12:a
	ldr	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	ldrb	w1, [sp, 43]
	bl	_Z3solib
	str	w0, [sp, 76]
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldr	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	ldrb	w1, [sp, 43]
	bl	_Z3solib
	str	w0, [sp, 72]
	mov	w0, -2147483648
	str	w0, [sp, 92]
	ldrb	w0, [sp, 43]
	cmp	w0, 0
	beq	.L8
	ldr	w0, [sp, 44]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, 0
	bl	_Z3solib
	str	w0, [sp, 92]
	ldr	w0, [sp, 44]
	str	w0, [sp, 68]
	ldr	w0, [sp, 76]
	str	w0, [sp, 48]
	ldr	w0, [sp, 72]
	str	w0, [sp, 52]
	ldr	w0, [sp, 92]
	str	w0, [sp, 56]
	ldr	w0, [sp, 68]
	str	w0, [sp, 60]
	add	x0, sp, 48
	mov	x20, x0
	mov	x21, 4
	mov	x0, x20
	mov	x1, x21
	mov	w1, w0
	ldr	x0, [sp, 80]
	str	w1, [x0]
	ldr	x0, [sp, 80]
	ldr	w0, [x0]
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret
main:
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_Z5setupv
	adrp	x0, t
	add	x1, x0, :lo12:t
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	adrp	x0, a
	add	x1, x0, :lo12:a
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	adrp	x0, b
	add	x1, x0, :lo12:b
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, 23080
	movk	x2, 0x262, lsl 16
	mov	w1, -1
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	bl	memset
	mov	w1, 1
	mov	w0, 0
	bl	_Z3solib
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w0, 0
	ldp	x29, x30, [sp], 16
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
	bne	.L24
	ldr	x0, [sp, 40]
	b	.L25
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	b	.L26
	add	x0, sp, 24
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 56]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L26
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
	bne	.L27
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L30
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L30
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