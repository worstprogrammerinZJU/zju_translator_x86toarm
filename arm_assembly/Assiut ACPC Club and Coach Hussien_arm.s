_ZnwmPv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
_ZSt3absx:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 0
	csneg	x0, x0, x0, ge
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	.L8
	ldr	x0, [sp]
	b	.L9
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -192]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	str	xzr, [sp, 184]
	add	x0, sp, 64
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	ldr	x0, [sp, 64]
	mov	x19, x0
	add	x0, sp, 72
	bl	_ZNSaIxEC1Ev
	add	x1, sp, 72
	add	x0, sp, 40
	mov	x2, x1
	mov	x1, x19
	add	x0, sp, 72
	bl	_ZNSaIxED1Ev
	str	wzr, [sp, 180]
	b	.L11
	ldrsw	x1, [sp, 180]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	ldr	w0, [sp, 180]
	add	w0, w0, 1
	str	w0, [sp, 180]
	ldrsw	x1, [sp, 180]
	ldr	x0, [sp, 64]
	cmp	x1, x0
	blt	.L12
	str	wzr, [sp, 176]
	b	.L13
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	cmp	x0, 5
	cset	w0, le
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L14
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	mov	x1, 5
	sub	x0, x1, x0
	ldr	x1, [sp, 184]
	add	x0, x1, x0
	str	x0, [sp, 184]
	b	.L15
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	cmp	x0, 103
	bgt	.L16
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	cmp	x0, 5
	ble	.L16
	mov	w0, 1
	b	.L17
	mov	w0, 0
	cmp	w0, 0
	beq	.L18
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	mov	x1, 103
	sub	x0, x1, x0
	str	x0, [sp, 80]
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	sub	x0, x0, #5
	bl	_ZSt3absx
	str	x0, [sp, 88]
	add	x1, sp, 88
	add	x0, sp, 80
	bl	_ZSt3minIxERKT_S2_S2_
	ldr	x0, [x0]
	ldr	x1, [sp, 184]
	add	x0, x1, x0
	str	x0, [sp, 184]
	b	.L15
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	cmp	x0, 320
	bgt	.L19
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	cmp	x0, 103
	ble	.L19
	mov	w0, 1
	b	.L20
	mov	w0, 0
	cmp	w0, 0
	beq	.L21
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	mov	x1, 320
	sub	x0, x1, x0
	str	x0, [sp, 96]
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	sub	x0, x0, #103
	bl	_ZSt3absx
	str	x0, [sp, 104]
	add	x1, sp, 104
	add	x0, sp, 96
	bl	_ZSt3minIxERKT_S2_S2_
	ldr	x0, [x0]
	ldr	x1, [sp, 184]
	add	x0, x1, x0
	str	x0, [sp, 184]
	b	.L15
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	cmp	x0, 1122
	bgt	.L22
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	cmp	x0, 320
	ble	.L22
	mov	w0, 1
	b	.L23
	mov	w0, 0
	cmp	w0, 0
	beq	.L24
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	mov	x1, 1122
	sub	x0, x1, x0
	str	x0, [sp, 112]
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	sub	x0, x0, #320
	bl	_ZSt3absx
	str	x0, [sp, 120]
	add	x1, sp, 120
	add	x0, sp, 112
	bl	_ZSt3minIxERKT_S2_S2_
	ldr	x0, [x0]
	ldr	x1, [sp, 184]
	add	x0, x1, x0
	str	x0, [sp, 184]
	b	.L15
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x1, [x0]
	mov	x0, 7000
	cmp	x1, x0
	bgt	.L25
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	cmp	x0, 1122
	ble	.L25
	mov	w0, 1
	b	.L26
	mov	w0, 0
	cmp	w0, 0
	beq	.L27
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	mov	x1, 7000
	sub	x0, x1, x0
	str	x0, [sp, 128]
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	sub	x0, x0, #1122
	bl	_ZSt3absx
	str	x0, [sp, 136]
	add	x1, sp, 136
	add	x0, sp, 128
	bl	_ZSt3minIxERKT_S2_S2_
	ldr	x0, [x0]
	ldr	x1, [sp, 184]
	add	x0, x1, x0
	str	x0, [sp, 184]
	b	.L15
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x1, [x0]
	mov	x0, 9120
	cmp	x1, x0
	bgt	.L28
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x1, [x0]
	mov	x0, 7000
	cmp	x1, x0
	ble	.L28
	mov	w0, 1
	b	.L29
	mov	w0, 0
	cmp	w0, 0
	beq	.L30
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	mov	x1, 9120
	sub	x0, x1, x0
	str	x0, [sp, 144]
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x1, [x0]
	mov	x0, -7000
	add	x0, x1, x0
	bl	_ZSt3absx
	str	x0, [sp, 152]
	add	x1, sp, 152
	add	x0, sp, 144
	bl	_ZSt3minIxERKT_S2_S2_
	ldr	x0, [x0]
	ldr	x1, [sp, 184]
	add	x0, x1, x0
	str	x0, [sp, 184]
	b	.L15
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x1, [x0]
	mov	x0, 51345
	cmp	x1, x0
	bgt	.L31
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x1, [x0]
	mov	x0, 9120
	cmp	x1, x0
	ble	.L31
	mov	w0, 1
	b	.L32
	mov	w0, 0
	cmp	w0, 0
	beq	.L33
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	mov	x1, 51345
	sub	x0, x1, x0
	str	x0, [sp, 160]
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x1, [x0]
	mov	x0, -9120
	add	x0, x1, x0
	bl	_ZSt3absx
	str	x0, [sp, 168]
	add	x1, sp, 168
	add	x0, sp, 160
	bl	_ZSt3minIxERKT_S2_S2_
	ldr	x0, [x0]
	ldr	x1, [sp, 184]
	add	x0, x1, x0
	str	x0, [sp, 184]
	b	.L15
	ldrsw	x1, [sp, 176]
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x1, [x0]
	mov	x0, -51345
	add	x0, x1, x0
	bl	_ZSt3absx
	mov	x1, x0
	ldr	x0, [sp, 184]
	add	x0, x0, x1
	str	x0, [sp, 184]
	ldr	w0, [sp, 176]
	add	w0, w0, 1
	str	w0, [sp, 176]
	ldrsw	x1, [sp, 176]
	ldr	x0, [sp, 64]
	cmp	x1, x0
	blt	.L34
	ldr	x1, [sp, 184]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	add	x0, sp, 40
	bl	_ZNSt6vectorIxSaIxEED1Ev
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 192
	ret
_ZNSaIxEC2Ev:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
_ZNSaIxED2Ev:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x19, [sp, 56]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 48]
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 40]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	ldr	x0, [sp, 40]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	lsl	x0, x0, 3
	add	x0, x1, x0
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x1, x0
	bge	.L43
	ldr	x0, [sp]
	b	.L44
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	add	x0, sp, 56
	ldr	x1, [sp, 32]
	bl	_ZNSaIxEC1ERKS_
	add	x0, sp, 56
	mov	x1, x0
	ldr	x0, [sp, 40]
	cmp	x0, x1
	cset	w0, hi
	and	w19, w0, 255
	add	x0, sp, 56
	bl	_ZNSaIxED1Ev
	cmp	w19, 0
	beq	.L48
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	ldr	x0, [sp, 40]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaIxED2Ev
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x3, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 3
	mov	x2, x0
	mov	x1, x3
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	mov	x2, x0
	ldr	x1, [sp, 32]
	mov	x0, x19
	mov	x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt8_DestroyIPxEvT_S1_
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	mov	x0, 1152921504606846975
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	add	x1, sp, 32
	add	x0, sp, 40
	bl	_ZSt3minImERKT_S2_S2_
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 48
	ret
_ZNSaIxEC2ERKS_:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSaIxEC2ERKS_
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 16]
	lsl	x0, x0, 3
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 16]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	beq	.L64
	ldr	x0, [sp, 40]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 16]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L73
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	b	.L75
	mov	x0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	w0, 1
	strb	w0, [sp, 47]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	x2, 0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L89
	ldr	x0, [sp, 24]
	bl	_ZSt11__addressofIxEPT_RS0_
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	sub	x0, x0, #1
	ldr	x2, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	x0, 1152921504606846975
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 32]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L94
	ldr	x1, [sp, 32]
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bls	.L95
	bl	_ZSt17__throw_bad_allocv
	ldr	x0, [sp, 32]
	lsl	x0, x0, 3
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x1, x0
	mov	x0, 8
	bl	_ZnwmPv
	str	xzr, [x0]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	ldr	x19, [sp, 72]
	ldr	x0, [sp, 64]
	mov	x20, x0
	add	x0, sp, 72
	mov	w3, w21
	ldr	x2, [sp, 56]
	mov	x1, x20
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 80
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	w0, w1
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L103
	ldr	x0, [sp, 40]
	b	.L104
	ldr	x0, [sp, 32]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x2, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 32]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	str	x0, [sp, 40]
	b	.L107
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bne	.L108
	nop
	nop
	add	sp, sp, 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L111
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L111
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