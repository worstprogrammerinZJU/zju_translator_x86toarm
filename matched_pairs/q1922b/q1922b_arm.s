_ZnwmPv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
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
	bcs	.L4
	ldr	x0, [sp]
	b	.L5
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
_Z12calculateNCrxx:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	cmp	x0, 0
	blt	.L7
	ldr	x1, [sp]
	ldr	x0, [sp, 8]
	cmp	x1, x0
	ble	.L8
	mov	x0, 0
	b	.L9
	mov	x0, 1
	str	x0, [sp, 24]
	mov	w0, 1
	str	w0, [sp, 20]
	b	.L10
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	str	x1, [sp, 8]
	mov	x1, x0
	ldr	x0, [sp, 24]
	mul	x0, x0, x1
	str	x0, [sp, 24]
	ldrsw	x0, [sp, 20]
	ldr	x1, [sp, 24]
	udiv	x0, x1, x0
	str	x0, [sp, 24]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	ldrsw	x0, [sp, 20]
	ldr	x1, [sp]
	cmp	x1, x0
	bge	.L11
	ldr	x0, [sp, 24]
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaIxED2Ev
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 48]
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	str	x0, [sp, 96]
	ldr	x0, [sp, 48]
	str	x0, [sp, 72]
	ldr	x0, [sp, 40]
	str	x0, [sp, 64]
	ldr	x0, [sp, 48]
	str	w0, [sp, 124]
	b	.L16
	ldrsw	x0, [sp, 124]
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	ldr	x1, [sp, 96]
	cmp	x1, x0
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L17
	ldr	x0, [sp, 72]
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	str	x0, [sp, 80]
	ldrsw	x0, [sp, 124]
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x20, [x0]
	ldr	x0, [sp, 72]
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIxSaIxEEixEm
	str	x20, [x0]
	ldr	x20, [sp, 80]
	ldrsw	x0, [sp, 124]
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIxSaIxEEixEm
	str	x20, [x0]
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	str	x0, [sp, 72]
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
	ldrsw	x0, [sp, 124]
	ldr	x1, [sp, 40]
	cmp	x1, x0
	bge	.L18
	ldr	x0, [sp, 40]
	str	x0, [sp, 112]
	b	.L19
	ldr	x0, [sp, 112]
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	ldr	x1, [sp, 96]
	cmp	x1, x0
	cset	w0, lt
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L20
	ldr	x0, [sp, 64]
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	str	x0, [sp, 88]
	ldr	x0, [sp, 112]
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x20, [x0]
	ldr	x0, [sp, 64]
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIxSaIxEEixEm
	str	x20, [x0]
	ldr	x20, [sp, 88]
	ldr	x0, [sp, 112]
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIxSaIxEEixEm
	str	x20, [x0]
	ldr	x0, [sp, 64]
	sub	x0, x0, #1
	str	x0, [sp, 64]
	ldr	x0, [sp, 112]
	sub	x0, x0, #1
	str	x0, [sp, 112]
	ldr	x1, [sp, 112]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	bge	.L21
	ldr	x0, [sp, 72]
	str	w0, [sp, 108]
	b	.L22
	ldr	x20, [sp, 96]
	ldrsw	x0, [sp, 108]
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIxSaIxEEixEm
	str	x20, [x0]
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	ldrsw	x1, [sp, 108]
	ldr	x0, [sp, 64]
	cmp	x1, x0
	ble	.L23
	mov	x0, x19
	bl	_ZNSt6vectorIxSaIxEEC1Ev
	add	x0, sp, 72
	mov	x1, x0
	mov	x0, x19
	add	x0, sp, 64
	mov	x1, x0
	mov	x0, x19
	nop
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	bge	.L28
	bl	rand
	sxtw	x0, w0
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	sub	x1, x2, x1
	add	x1, x1, 1
	sdiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	str	x0, [sp, 104]
	ldr	x0, [sp, 48]
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	str	x0, [sp, 96]
	ldr	x0, [sp, 104]
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x19, [x0]
	ldr	x0, [sp, 48]
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIxSaIxEEixEm
	str	x19, [x0]
	ldr	x19, [sp, 96]
	ldr	x0, [sp, 104]
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIxSaIxEEixEm
	str	x19, [x0]
	add	x0, sp, 72
	mov	x8, x0
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	add	x0, sp, 72
	mov	x1, 0
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	sub	x0, x0, #1
	mov	x2, x0
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	add	x0, sp, 72
	mov	x1, 1
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	add	x0, x0, 1
	ldr	x2, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 56]
	add	x0, sp, 72
	bl	_ZNSt6vectorIxSaIxEED1Ev
	b	.L25
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	ret
main:
	stp	x29, x30, [sp, -288]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 164
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 284]
	b	.L30
	add	x0, sp, 152
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	add	x0, sp, 128
	bl	_ZNSt6vectorIxSaIxEEC1Ev
	str	xzr, [sp, 272]
	b	.L31
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	add	x1, sp, 40
	add	x0, sp, 128
	ldr	x0, [sp, 272]
	add	x0, x0, 1
	str	x0, [sp, 272]
	ldr	x0, [sp, 152]
	ldr	x1, [sp, 272]
	cmp	x1, x0
	blt	.L32
	ldr	x0, [sp, 152]
	sub	x1, x0, #1
	add	x0, sp, 128
	mov	x2, x1
	mov	x1, 0
	add	x0, sp, 104
	bl	_ZNSt6vectorIxSaIxEEC1Ev
	str	wzr, [sp, 268]
	str	xzr, [sp, 256]
	b	.L33
	ldr	x1, [sp, 256]
	add	x0, sp, 128
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x19, [x0]
	ldr	x0, [sp, 256]
	add	x0, x0, 1
	mov	x1, x0
	add	x0, sp, 128
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	cmp	x19, x0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L34
	ldr	w0, [sp, 268]
	add	w0, w0, 1
	str	w0, [sp, 268]
	b	.L35
	ldr	w0, [sp, 268]
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [sp, 168]
	add	x1, sp, 168
	add	x0, sp, 104
	str	wzr, [sp, 268]
	ldr	x0, [sp, 256]
	add	x0, x0, 1
	str	x0, [sp, 256]
	ldr	x0, [sp, 152]
	sub	x0, x0, #1
	ldr	x1, [sp, 256]
	cmp	x1, x0
	blt	.L36
	ldr	w0, [sp, 268]
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [sp, 176]
	add	x1, sp, 176
	add	x0, sp, 104
	str	xzr, [sp, 248]
	str	xzr, [sp, 240]
	b	.L37
	ldr	x1, [sp, 240]
	add	x0, sp, 104
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	cmp	x0, 3
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L38
	ldr	x1, [sp, 240]
	add	x0, sp, 104
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	mov	x1, 3
	bl	_Z12calculateNCrxx
	mov	x1, x0
	ldr	x0, [sp, 248]
	add	x0, x1, x0
	str	x0, [sp, 248]
	b	.L39
	ldr	x1, [sp, 240]
	add	x0, sp, 104
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	cmp	x0, 3
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L39
	ldr	x0, [sp, 248]
	add	x0, x0, 1
	str	x0, [sp, 248]
	ldr	x0, [sp, 240]
	add	x0, x0, 1
	str	x0, [sp, 240]
	add	x0, sp, 104
	mov	x1, x0
	ldr	x0, [sp, 240]
	cmp	x1, x0
	cset	w0, hi
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L40
	str	xzr, [sp, 232]
	add	x0, sp, 80
	bl	_ZNSt6vectorIxSaIxEEC1Ev
	str	xzr, [sp, 224]
	b	.L41
	ldr	x1, [sp, 224]
	add	x0, sp, 104
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	cmp	x0, 2
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L42
	ldr	x1, [sp, 224]
	add	x0, sp, 104
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	mov	x1, 2
	bl	_Z12calculateNCrxx
	str	x0, [sp, 184]
	add	x1, sp, 184
	add	x0, sp, 80
	b	.L43
	ldr	x1, [sp, 224]
	add	x0, sp, 104
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	cmp	x0, 2
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L44
	mov	x0, 1
	str	x0, [sp, 192]
	add	x1, sp, 192
	add	x0, sp, 80
	b	.L43
	str	xzr, [sp, 200]
	add	x1, sp, 200
	add	x0, sp, 80
	ldr	x0, [sp, 224]
	add	x0, x0, 1
	str	x0, [sp, 224]
	add	x0, sp, 104
	mov	x1, x0
	ldr	x0, [sp, 224]
	cmp	x1, x0
	cset	w0, hi
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L45
	add	x0, sp, 56
	bl	_ZNSt6vectorIxSaIxEEC1Ev
	str	xzr, [sp, 48]
	str	wzr, [sp, 220]
	b	.L46
	add	x1, sp, 48
	add	x0, sp, 56
	ldrsw	x1, [sp, 220]
	add	x0, sp, 104
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x1, [x0]
	ldr	x0, [sp, 48]
	add	x0, x1, x0
	str	x0, [sp, 48]
	ldr	w0, [sp, 220]
	add	w0, w0, 1
	str	w0, [sp, 220]
	ldrsw	x19, [sp, 220]
	add	x0, sp, 104
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L47
	str	xzr, [sp, 208]
	b	.L48
	ldr	x1, [sp, 208]
	add	x0, sp, 80
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x19, [x0]
	ldr	x1, [sp, 208]
	add	x0, sp, 56
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	mul	x0, x19, x0
	ldr	x1, [sp, 232]
	add	x0, x1, x0
	str	x0, [sp, 232]
	ldr	x0, [sp, 208]
	add	x0, x0, 1
	str	x0, [sp, 208]
	add	x0, sp, 104
	mov	x1, x0
	ldr	x0, [sp, 208]
	cmp	x1, x0
	cset	w0, hi
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L49
	ldr	x1, [sp, 232]
	ldr	x0, [sp, 248]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 56
	bl	_ZNSt6vectorIxSaIxEED1Ev
	add	x0, sp, 80
	bl	_ZNSt6vectorIxSaIxEED1Ev
	add	x0, sp, 104
	bl	_ZNSt6vectorIxSaIxEED1Ev
	add	x0, sp, 128
	bl	_ZNSt6vectorIxSaIxEED1Ev
	ldr	w0, [sp, 284]
	add	w0, w0, 1
	str	w0, [sp, 284]
	ldr	w0, [sp, 164]
	ldr	w1, [sp, 284]
	cmp	w1, w0
	ble	.L50
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 288
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	.L53
	ldr	x0, [sp]
	b	.L54
	ldr	x0, [sp, 8]
	add	sp, sp, 16
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaIxEC2Ev
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	cmp	x1, x0
	beq	.L62
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	x2, [sp, 16]
	mov	x1, x0
	mov	x0, x3
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	add	x1, x0, 8
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
	b	.L64
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIxSaIxEE3endEv
	ldr	x2, [sp, 16]
	mov	x1, x0
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	mov	x1, x0
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 3
	add	sp, sp, 16
	ret
_ZNSaIxEC2Ev:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	beq	.L73
	ldr	x0, [sp, 40]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	nop
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
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	x1, x0, 8
	add	x0, sp, 40
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	mov	x1, 1
	ldr	x0, [sp, 56]
	str	x0, [sp, 120]
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	str	x0, [sp, 112]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	str	x0, [sp, 104]
	ldr	x0, [sp, 56]
	str	x0, [sp, 72]
	add	x1, sp, 72
	add	x0, sp, 48
	str	x0, [sp, 96]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 120]
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	str	x0, [sp, 80]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 96]
	lsl	x0, x0, 3
	ldr	x1, [sp, 88]
	add	x20, x1, x0
	ldr	x0, [sp, 40]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	str	xzr, [sp, 80]
	add	x0, sp, 48
	ldr	x19, [x0]
	ldr	x0, [sp, 56]
	mov	x3, x0
	ldr	x2, [sp, 88]
	mov	x1, x19
	ldr	x0, [sp, 112]
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	add	x0, x0, 8
	str	x0, [sp, 80]
	add	x0, sp, 48
	ldr	x19, [x0]
	ldr	x0, [sp, 56]
	mov	x3, x0
	ldr	x2, [sp, 80]
	ldr	x1, [sp, 104]
	mov	x0, x19
	str	x0, [sp, 80]
	ldr	x3, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 112]
	sub	x0, x1, x0
	asr	x0, x0, 3
	mov	x2, x0
	ldr	x1, [sp, 112]
	mov	x0, x3
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 88]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 80]
	str	x1, [x0, 8]
	ldr	x0, [sp, 120]
	lsl	x0, x0, 3
	ldr	x1, [sp, 88]
	add	x1, x1, x0
	ldr	x0, [sp, 56]
	str	x1, [x0, 16]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 16]
	cmp	x1, x0
	beq	.L84
	ldr	x19, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 32]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	add	x1, x0, 8
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	b	.L85
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIxSaIxEE3endEv
	mov	x19, x0
	ldr	x0, [sp, 32]
	mov	x2, x0
	mov	x1, x19
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIxSaIxEE4backEv
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 48]
	mov	x1, x0
	mov	x0, 8
	bl	_ZnwmPv
	str	x19, [x0]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	mov	x19, x0
	ldr	x0, [sp, 56]
	sub	x1, x19, x0
	ldr	x0, [sp, 48]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L95
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 56]
	mov	x19, x0
	ldr	x0, [sp, 56]
	str	x0, [sp, 64]
	add	x1, sp, 48
	add	x0, sp, 64
	bl	_ZSt3maxImERKT_S2_S2_
	ldr	x0, [x0]
	add	x0, x19, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 56]
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	bcc	.L96
	ldr	x0, [sp, 56]
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	bls	.L97
	ldr	x0, [sp, 56]
	b	.L98
	ldr	x0, [sp, 72]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	add	x0, sp, 40
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	ldr	x0, [x0]
	sub	x0, x19, x0
	asr	x0, x0, 3
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L105
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	b	.L107
	mov	x0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x3, [sp, 16]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
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
	ldr	x0, [sp, 24]
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	mov	x1, 1
	ldr	x0, [sp, 56]
	str	x0, [sp, 120]
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	str	x0, [sp, 112]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	str	x0, [sp, 104]
	ldr	x0, [sp, 56]
	str	x0, [sp, 72]
	add	x1, sp, 72
	add	x0, sp, 48
	str	x0, [sp, 96]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 120]
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	str	x0, [sp, 80]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 96]
	lsl	x0, x0, 3
	ldr	x1, [sp, 88]
	add	x20, x1, x0
	ldr	x0, [sp, 40]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	str	xzr, [sp, 80]
	add	x0, sp, 48
	ldr	x19, [x0]
	ldr	x0, [sp, 56]
	mov	x3, x0
	ldr	x2, [sp, 88]
	mov	x1, x19
	ldr	x0, [sp, 112]
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	add	x0, x0, 8
	str	x0, [sp, 80]
	add	x0, sp, 48
	ldr	x19, [x0]
	ldr	x0, [sp, 56]
	mov	x3, x0
	ldr	x2, [sp, 80]
	ldr	x1, [sp, 104]
	mov	x0, x19
	str	x0, [sp, 80]
	ldr	x3, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 112]
	sub	x0, x1, x0
	asr	x0, x0, 3
	mov	x2, x0
	ldr	x1, [sp, 112]
	mov	x0, x3
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 88]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 80]
	str	x1, [x0, 8]
	ldr	x0, [sp, 120]
	lsl	x0, x0, 3
	ldr	x1, [sp, 88]
	add	x1, x1, x0
	ldr	x0, [sp, 56]
	str	x1, [x0, 16]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIxSaIxEE3endEv
	str	x0, [sp, 40]
	add	x0, sp, 40
	mov	x1, 1
	str	x0, [sp, 32]
	add	x0, sp, 32
	ldp	x29, x30, [sp], 48
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
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	strb	w4, [sp, 24]
	ldr	x3, [sp, 32]
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 48]
	mov	x1, x0
	mov	x0, 8
	bl	_ZnwmPv
	str	x19, [x0]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 16]
	lsl	x0, x0, 3
	neg	x0, x0
	add	x0, x1, x0
	str	x0, [sp, 40]
	add	x1, sp, 40
	add	x0, sp, 32
	ldr	x0, [sp, 32]
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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
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
	beq	.L139
	ldr	x1, [sp, 32]
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bls	.L140
	bl	_ZSt17__throw_bad_allocv
	ldr	x0, [sp, 32]
	lsl	x0, x0, 3
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x0, [sp, 56]
	bl	_ZSt12__niter_baseIPxET_S1_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPxET_S1_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPxET_S1_
	ldr	x3, [sp, 32]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	asr	x0, x0, 3
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	ble	.L149
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	memmove
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L155
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L155
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