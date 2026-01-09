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
_ZL1N:
arr:
dp:
mod:
n:
_Z3solxx:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	x0, [x0]
	ldr	x1, [sp, 24]
	cmp	x1, x0
	bge	.L3
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	x0, [x0]
	ldr	x1, [sp, 16]
	cmp	x1, x0
	bge	.L3
	adrp	x0, arr
	add	x2, x0, :lo12:arr
	ldr	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 6
	sub	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x1, x2, x0
	ldr	x0, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 42
	bne	.L4
	mov	x0, 0
	b	.L5
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	x0, [x0]
	sub	x0, x0, #1
	ldr	x1, [sp, 24]
	cmp	x1, x0
	bne	.L6
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	x0, [x0]
	sub	x0, x0, #1
	ldr	x1, [sp, 16]
	cmp	x1, x0
	bne	.L6
	mov	x0, 1
	b	.L5
	adrp	x0, dp
	add	x2, x0, :lo12:dp
	ldr	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 6
	sub	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	ldr	x1, [sp, 16]
	add	x0, x0, x1
	ldr	x0, [x2, x0, lsl 3]
	cmn	x0, #1
	beq	.L7
	adrp	x0, dp
	add	x2, x0, :lo12:dp
	ldr	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 6
	sub	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	ldr	x1, [sp, 16]
	add	x0, x0, x1
	ldr	x0, [x2, x0, lsl 3]
	b	.L5
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	ldr	x1, [sp, 16]
	bl	_Z3solxx
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	add	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_Z3solxx
	str	x0, [sp, 32]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	add	x0, x1, x0
	adrp	x1, mod
	add	x1, x1, :lo12:mod
	ldr	x1, [x1]
	sdiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x3, x0, x1
	adrp	x0, dp
	add	x2, x0, :lo12:dp
	ldr	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 6
	sub	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	ldr	x1, [sp, 16]
	add	x0, x0, x1
	str	x3, [x2, x0, lsl 3]
	adrp	x0, dp
	add	x2, x0, :lo12:dp
	ldr	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 6
	sub	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	ldr	x1, [sp, 16]
	add	x0, x0, x1
	ldr	x0, [x2, x0, lsl 3]
	ldp	x29, x30, [sp], 48
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	bl	_Z5setupv
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	str	wzr, [sp, 28]
	b	.L9
	str	wzr, [sp, 24]
	b	.L10
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 6
	sub	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x1, x2, x0
	adrp	x0, arr
	add	x0, x0, :lo12:arr
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldrsw	x1, [sp, 24]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	x0, [x0]
	cmp	x1, x0
	blt	.L11
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldrsw	x1, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	x0, [x0]
	cmp	x1, x0
	blt	.L12
	mov	x2, 18184
	movk	x2, 0x7c, lsl 16
	mov	w1, -1
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	bl	memset
	mov	x1, 0
	mov	x0, 0
	bl	_Z3solxx
	str	x0, [sp, 16]
	ldr	x1, [sp, 16]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L16
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L16
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