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
_Z1tB5cxx11:
dp:
n:
m:
_Z3soliii:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	w0, [sp, 44]
	str	w1, [sp, 40]
	str	w2, [sp, 36]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bne	.L3
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bne	.L3
	ldr	w0, [sp, 36]
	b	.L14
	ldrsw	x1, [sp, 36]
	ldrsw	x2, [sp, 44]
	mov	x0, 42025
	mul	x2, x2, x0
	ldrsw	x3, [sp, 40]
	mov	x0, 205
	mul	x0, x3, x0
	add	x0, x2, x0
	add	x0, x1, x0
	lsl	x1, x0, 2
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	add	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	ldr	w0, [x0]
	cmn	w0, #1
	beq	.L5
	ldr	x0, [sp, 72]
	ldr	w0, [x0]
	b	.L14
	mov	w0, 2147483647
	str	w0, [sp, 60]
	mov	w0, 2147483647
	str	w0, [sp, 56]
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	ldrb	w0, [x0]
	cmp	w0, 40
	beq	.L6
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, _Z1tB5cxx11
	add	x0, x0, :lo12:_Z1tB5cxx11
	ldrb	w0, [x0]
	cmp	w0, 40
	bne	.L7
	mov	w0, 1
	b	.L8
	mov	w0, 0
	cmp	w0, 0
	beq	.L9
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	ldrb	w0, [x0]
	cmp	w0, 40
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, w0
	ldr	w0, [sp, 44]
	add	w19, w1, w0
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	ldrb	w0, [x0]
	cmp	w0, 40
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, w0
	ldr	w0, [sp, 40]
	add	w1, w1, w0
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	mov	w2, w0
	mov	w0, w19
	bl	_Z3soliii
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	ldrb	w0, [x0]
	cmp	w0, 41
	beq	.L10
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, _Z1tB5cxx11
	add	x0, x0, :lo12:_Z1tB5cxx11
	ldrb	w0, [x0]
	cmp	w0, 41
	bne	.L11
	mov	w0, 1
	b	.L12
	mov	w0, 0
	cmp	w0, 0
	beq	.L13
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	ldrb	w0, [x0]
	cmp	w0, 41
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, w0
	ldr	w0, [sp, 44]
	add	w19, w1, w0
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	ldrb	w0, [x0]
	cmp	w0, 41
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, w0
	ldr	w0, [sp, 40]
	add	w20, w1, w0
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	str	w0, [sp, 64]
	str	wzr, [sp, 68]
	add	x1, sp, 68
	add	x0, sp, 64
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	mov	w2, w0
	mov	w1, w20
	mov	w0, w19
	bl	_Z3soliii
	add	w0, w0, 1
	ldr	w1, [sp, 36]
	cmp	w1, 0
	cset	w1, eq
	and	w1, w1, 255
	add	w0, w0, w1
	str	w0, [sp, 56]
	add	x1, sp, 56
	add	x0, sp, 60
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w1, [x0]
	ldr	x0, [sp, 72]
	str	w1, [x0]
	ldr	x0, [sp, 72]
	ldr	w0, [x0]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
main:
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_Z5setupv
	adrp	x0, _Z1sB5cxx11
	add	x1, x0, :lo12:_Z1sB5cxx11
	adrp	x0, :got:_ZSt3cin
	mov	x2, x0
	adrp	x0, _Z1tB5cxx11
	add	x1, x0, :lo12:_Z1tB5cxx11
	mov	x0, x2
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	mov	w1, w0
	adrp	x0, n
	add	x0, x0, :lo12:n
	str	w1, [x0]
	adrp	x0, _Z1tB5cxx11
	add	x0, x0, :lo12:_Z1tB5cxx11
	mov	w1, w0
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	w1, [x0]
	mov	x2, 54100
	movk	x2, 0x20d, lsl 16
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
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L18
	ldr	x0, [sp]
	b	.L19
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L21
	ldr	x0, [sp]
	b	.L22
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L25
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L25
	adrp	x0, _ZStL8__ioinit
	bl	_ZNSt8ios_base4InitC1Ev
	adrp	x0, _ZStL8__ioinit
	bl	__cxa_atexit
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	adrp	x0, _Z1sB5cxx11
	add	x1, x0, :lo12:_Z1sB5cxx11
	bl	__cxa_atexit
	adrp	x0, _Z1tB5cxx11
	add	x0, x0, :lo12:_Z1tB5cxx11
	adrp	x0, _Z1tB5cxx11
	add	x1, x0, :lo12:_Z1tB5cxx11
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