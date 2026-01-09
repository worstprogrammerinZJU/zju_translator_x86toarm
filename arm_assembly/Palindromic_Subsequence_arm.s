	nop
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	mov	w0, 0
	cmp	w0, 0
	beq	.L5
	ldr	x0, [sp, 24]
	b	.L6
	ldr	x0, [sp, 24]
	bl	strlen
	nop
	ldp	x29, x30, [sp], 48
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
n:
dp:
_Z7dpBuildB5cxx11:
vis:
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
	ble	.L9
	mov	w0, 0
	b	.L10
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bne	.L11
	mov	w0, 1
	b	.L10
	ldrsw	x1, [sp, 56]
	ldrsw	x2, [sp, 60]
	mov	x0, 1005
	mul	x0, x2, x0
	add	x0, x1, x0
	lsl	x1, x0, 2
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	add	x0, x1, x0
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	ldr	w0, [x0]
	cmn	w0, #1
	beq	.L12
	ldr	x0, [sp, 88]
	ldr	w0, [x0]
	b	.L10
	str	wzr, [sp, 108]
	str	wzr, [sp, 104]
	str	wzr, [sp, 100]
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
	beq	.L13
	ldr	w0, [sp, 60]
	add	w2, w0, 1
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	mov	w1, w0
	mov	w0, w2
	bl	_Z3solii
	add	w0, w0, 2
	str	w0, [sp, 108]
	b	.L14
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	ldr	w1, [sp, 56]
	bl	_Z3solii
	str	w0, [sp, 104]
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	mov	w1, w0
	ldr	w0, [sp, 60]
	bl	_Z3solii
	str	w0, [sp, 100]
	ldr	w0, [sp, 108]
	str	w0, [sp, 72]
	ldr	w0, [sp, 104]
	str	w0, [sp, 76]
	ldr	w0, [sp, 100]
	str	w0, [sp, 80]
	add	x0, sp, 72
	mov	x20, x0
	mov	x21, 3
	mov	x0, x20
	mov	x1, x21
	mov	w1, w0
	ldr	x0, [sp, 88]
	str	w1, [x0]
	ldr	x0, [sp, 88]
	ldr	w0, [x0]
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 112
	ret
_Z5buildB5cxx11ii:
	stp	x29, x30, [sp, -288]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	mov	x19, x8
	str	w0, [sp, 44]
	str	w1, [sp, 40]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	ble	.L16
	add	x0, sp, 88
	bl	_ZNSaIcEC1Ev
	add	x0, sp, 88
	mov	x2, x0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x19
	add	x0, sp, 88
	bl	_ZNSaIcED1Ev
	b	.L15
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bne	.L18
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	ldrb	w20, [x0]
	add	x0, sp, 96
	bl	_ZNSaIcEC1Ev
	add	x0, sp, 96
	mov	x3, x0
	mov	w2, w20
	mov	x1, 1
	mov	x0, x19
	add	x0, sp, 96
	bl	_ZNSaIcED1Ev
	b	.L15
	adrp	x0, vis
	add	x2, x0, :lo12:vis
	ldrsw	x0, [sp, 40]
	ldrsw	x3, [sp, 44]
	mov	x1, 1005
	mul	x1, x3, x1
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L19
	ldrsw	x1, [sp, 40]
	ldrsw	x2, [sp, 44]
	mov	x0, 1005
	mul	x0, x2, x0
	add	x0, x1, x0
	lsl	x1, x0, 5
	adrp	x0, _Z7dpBuildB5cxx11
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x19
	b	.L15
	adrp	x0, vis
	add	x2, x0, :lo12:vis
	ldrsw	x0, [sp, 40]
	ldrsw	x3, [sp, 44]
	mov	x1, 1005
	mul	x1, x3, x1
	add	x1, x2, x1
	add	x0, x1, x0
	mov	w1, 1
	strb	w1, [x0]
	ldrsw	x1, [sp, 40]
	ldrsw	x2, [sp, 44]
	mov	x0, 1005
	mul	x0, x2, x0
	add	x0, x1, x0
	lsl	x1, x0, 5
	adrp	x0, _Z7dpBuildB5cxx11
	add	x0, x1, x0
	str	x0, [sp, 280]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	bl	_Z3solii
	str	w0, [sp, 276]
	add	x0, sp, 104
	bl	_ZNSaIcEC1Ev
	add	x0, sp, 104
	add	x3, sp, 56
	mov	x2, x0
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x3
	add	x0, sp, 104
	bl	_ZNSaIcED1Ev
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	ldrb	w20, [x0]
	ldrsw	x0, [sp, 40]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	ldrb	w0, [x0]
	cmp	w20, w0
	bne	.L20
	ldr	w0, [sp, 44]
	add	w2, w0, 1
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	mov	w1, w0
	mov	w0, w2
	bl	_Z3solii
	add	w0, w0, 2
	ldr	w1, [sp, 276]
	cmp	w1, w0
	bne	.L20
	mov	w0, 1
	b	.L21
	mov	w0, 0
	cmp	w0, 0
	beq	.L22
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	ldrb	w20, [x0]
	ldr	w0, [sp, 44]
	add	w2, w0, 1
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	add	x1, sp, 176
	mov	x8, x1
	mov	w1, w0
	mov	w0, w2
	bl	_Z5buildB5cxx11ii
	add	x0, sp, 176
	add	x1, sp, 144
	mov	x8, x1
	mov	x1, x0
	mov	w0, w20
	ldrsw	x0, [sp, 40]
	mov	x1, x0
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	ldrb	w2, [x0]
	add	x0, sp, 144
	add	x1, sp, 112
	mov	x8, x1
	mov	w1, w2
	add	x1, sp, 112
	add	x0, sp, 56
	mov	x1, x0
	add	x0, sp, 56
	add	x0, sp, 112
	add	x0, sp, 144
	add	x0, sp, 176
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	ldr	w1, [sp, 40]
	bl	_Z3solii
	mov	w1, w0
	ldr	w0, [sp, 276]
	cmp	w0, w1
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L23
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	add	x1, sp, 208
	mov	x8, x1
	ldr	w1, [sp, 40]
	bl	_Z5buildB5cxx11ii
	add	x1, sp, 208
	add	x0, sp, 56
	mov	x1, x0
	add	x0, sp, 56
	add	x0, sp, 208
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	mov	w1, w0
	ldr	w0, [sp, 44]
	bl	_Z3solii
	mov	w1, w0
	ldr	w0, [sp, 276]
	cmp	w0, w1
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L24
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	add	x1, sp, 240
	mov	x8, x1
	mov	w1, w0
	ldr	w0, [sp, 44]
	bl	_Z5buildB5cxx11ii
	add	x1, sp, 240
	add	x0, sp, 56
	mov	x1, x0
	add	x0, sp, 56
	add	x0, sp, 240
	add	x0, sp, 56
	mov	x1, x0
	ldr	x0, [sp, 280]
	mov	x1, x0
	mov	x0, x19
	add	x0, sp, 56
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 288
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	bl	_Z5setupv
	b	.L27
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	mov	w1, w0
	adrp	x0, n
	add	x0, x0, :lo12:n
	str	w1, [x0]
	mov	x2, 42404
	movk	x2, 0x3d, lsl 16
	mov	w1, -1
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	bl	memset
	mov	x2, 26985
	movk	x2, 0xf, lsl 16
	mov	w1, 0
	adrp	x0, vis
	add	x0, x0, :lo12:vis
	bl	memset
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w0, w0, #1
	mov	w1, w0
	mov	w0, 0
	bl	_Z3solii
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w0, w0, #1
	add	x1, sp, 16
	mov	x8, x1
	mov	w1, w0
	mov	w0, 0
	bl	_Z5buildB5cxx11ii
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	add	x0, sp, 16
	adrp	x0, _Z1sB5cxx11
	add	x1, x0, :lo12:_Z1sB5cxx11
	adrp	x0, :got:_ZSt3cin
	ldr	x1, [x0]
	sub	x1, x1, #24
	ldr	x1, [x1]
	add	x0, x0, x1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L28
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldrb	w1, [x0]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	xzr, [sp, 40]
	b	.L33
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	strb	wzr, [sp, 39]
	add	x1, sp, 39
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L34
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 47]
	str	x3, [sp, 32]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	x2, [sp, 32]
	mov	x1, x0
	mov	x0, x19
	ldrb	w2, [sp, 47]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	ldr	x0, [sp, 48]
	cmp	x0, 0
	beq	.L38
	ldr	x0, [sp, 48]
	mov	x1, x0
	ldr	x0, [sp, 48]
	add	x0, x0, x1
	b	.L39
	mov	x0, 1
	str	x0, [sp, 72]
	mov	w3, w20
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	strb	w0, [sp, 47]
	str	x1, [sp, 32]
	ldrb	w3, [sp, 47]
	mov	x2, 1
	mov	x1, 0
	ldr	x0, [sp, 32]
	mov	x1, x0
	mov	x0, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	strb	w1, [sp, 39]
	ldrb	w2, [sp, 39]
	mov	x1, 1
	ldr	x0, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L49
	ldr	x0, [sp, 16]
	b	.L50
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x19, [sp, 40]
	add	x0, sp, 40
	mov	w2, w20
	ldr	x1, [sp, 32]
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	ldr	x0, [sp, 32]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L54
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	beq	.L54
	mov	w0, 1
	b	.L55
	mov	w0, 0
	cmp	w0, 0
	beq	.L56
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 15
	bls	.L57
	add	x0, sp, 56
	mov	x2, 0
	mov	x1, x0
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 56]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	mov	x1, x0
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 64
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	lsr	w0, w0, 31
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	w0, w1
	add	sp, sp, 16
	ret
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	strb	w2, [sp, 8]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	add	sp, sp, 32
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
	bne	.L77
	ldr	x0, [sp, 40]
	b	.L78
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	b	.L79
	add	x0, sp, 24
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 56]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L79
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
	bne	.L80
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 64
	ret
__tcf_0:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	adrp	x0, _Z7dpBuildB5cxx11
	cmp	x19, x0
	beq	.L81
	sub	x19, x19, #32
	mov	x0, x19
	b	.L83
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	str	w0, [sp, 60]
	str	w1, [sp, 56]
	ldr	w0, [sp, 60]
	cmp	w0, 1
	bne	.L90
	ldr	w1, [sp, 56]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L90
	adrp	x0, _ZStL8__ioinit
	bl	_ZNSt8ios_base4InitC1Ev
	adrp	x0, _ZStL8__ioinit
	bl	__cxa_atexit
	adrp	x0, _Z1sB5cxx11
	add	x0, x0, :lo12:_Z1sB5cxx11
	adrp	x0, _Z1sB5cxx11
	add	x1, x0, :lo12:_Z1sB5cxx11
	bl	__cxa_atexit
	adrp	x0, _Z7dpBuildB5cxx11
	mov	x19, 1004
	mov	x22, x0
	b	.L86
	mov	x21, x22
	mov	x20, 1004
	b	.L87
	mov	x0, x21
	add	x21, x21, 32
	sub	x20, x20, #1
	cmp	x20, 0
	bge	.L88
	mov	x0, 32160
	add	x0, x22, x0
	mov	x22, x0
	sub	x19, x19, #1
	cmp	x19, 0
	bge	.L89
	mov	x1, 0
	adrp	x0, __tcf_0
	add	x0, x0, :lo12:__tcf_0
	bl	__cxa_atexit
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	w1, 65535
	mov	w0, 1
	ldp	x29, x30, [sp], 16
	ret