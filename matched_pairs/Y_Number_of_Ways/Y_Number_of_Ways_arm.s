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
ans:
dp:
_Z3soli:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	w0, [sp, 44]
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L3
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	b	.L4
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bne	.L5
	mov	w0, 1
	b	.L4
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L6
	mov	w0, 0
	b	.L4
	ldr	w0, [sp, 44]
	add	w1, w0, 1
	ldr	w0, [sp, 44]
	add	w19, w0, 1
	mov	w0, w1
	bl	_Z3soli
	mov	w2, w0
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	sxtw	x1, w19
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 44]
	add	w1, w0, 2
	ldr	w0, [sp, 44]
	add	w19, w0, 2
	mov	w0, w1
	bl	_Z3soli
	mov	w2, w0
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	sxtw	x1, w19
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 44]
	add	w1, w0, 3
	ldr	w0, [sp, 44]
	add	w19, w0, 3
	mov	w0, w1
	bl	_Z3soli
	mov	w2, w0
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	sxtw	x1, w19
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 44]
	add	w1, w0, 1
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 44]
	add	w2, w0, 2
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	add	w1, w1, w0
	ldr	w0, [sp, 44]
	add	w2, w0, 3
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	add	w0, w1, w0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
main:
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_Z5setupv
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	adrp	x0, m
	add	x1, x0, :lo12:m
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, 20000
	mov	w1, -1
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	bl	memset
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	bl	_Z3soli
	mov	w1, w0
	adrp	x0, ans
	add	x0, x0, :lo12:ans
	str	w1, [x0]
	adrp	x0, ans
	add	x0, x0, :lo12:ans
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L11
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L11
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