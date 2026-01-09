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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	.L6
	ldr	x0, [sp]
	b	.L7
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
_Z3gcdii:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L9
	ldr	w0, [sp, 28]
	b	.L10
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 24]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 24]
	mul	w1, w2, w1
	sub	w0, w0, w1
	mov	w1, w0
	ldr	w0, [sp, 24]
	bl	_Z3gcdii
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaIiED2Ev
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
main:
	stp	x29, x30, [sp, -304]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	add	x0, sp, 228
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L15
	add	x0, sp, 224
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 224]
	sxtw	x19, w0
	add	x0, sp, 232
	bl	_ZNSaIiEC1Ev
	add	x1, sp, 232
	add	x0, sp, 200
	mov	x2, x1
	mov	x1, x19
	add	x0, sp, 232
	bl	_ZNSaIiED1Ev
	add	x0, sp, 176
	bl	_ZNSt6vectorIiSaIiEEC1Ev
	add	x0, sp, 152
	bl	_ZNSt6vectorIiSaIiEEC1Ev
	add	x0, sp, 128
	bl	_ZNSt6vectorIiSaIiEEC1Ev
	ldr	w0, [sp, 224]
	sub	w0, w0, #2
	sxtw	x19, w0
	add	x0, sp, 240
	bl	_ZNSaIiEC1Ev
	add	x1, sp, 240
	add	x0, sp, 104
	mov	x2, x1
	mov	x1, x19
	add	x0, sp, 240
	bl	_ZNSaIiED1Ev
	ldr	w0, [sp, 224]
	sub	w0, w0, #2
	sxtw	x19, w0
	add	x0, sp, 248
	bl	_ZNSaIiEC1Ev
	add	x1, sp, 248
	add	x0, sp, 80
	mov	x2, x1
	mov	x1, x19
	add	x0, sp, 248
	bl	_ZNSaIiED1Ev
	ldr	w0, [sp, 224]
	sub	w0, w0, #2
	sxtw	x19, w0
	add	x0, sp, 256
	bl	_ZNSaIiEC1Ev
	add	x1, sp, 256
	add	x0, sp, 56
	mov	x2, x1
	mov	x1, x19
	add	x0, sp, 256
	bl	_ZNSaIiED1Ev
	mov	w0, 1
	strb	w0, [sp, 303]
	mov	w0, 1
	strb	w0, [sp, 302]
	mov	w0, 1
	strb	w0, [sp, 301]
	str	wzr, [sp, 296]
	b	.L16
	ldrsw	x1, [sp, 296]
	add	x0, sp, 200
	bl	_ZNSt6vectorIiSaIiEEixEm
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 296]
	add	w0, w0, 1
	str	w0, [sp, 296]
	ldr	w0, [sp, 224]
	ldr	w1, [sp, 296]
	cmp	w1, w0
	blt	.L17
	ldr	w0, [sp, 224]
	sub	w0, w0, #1
	sxtw	x19, w0
	add	x0, sp, 264
	bl	_ZNSaIiEC1Ev
	add	x1, sp, 264
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x19
	add	x0, sp, 264
	bl	_ZNSaIiED1Ev
	str	wzr, [sp, 292]
	b	.L18
	ldrsw	x1, [sp, 292]
	add	x0, sp, 200
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w19, [x0]
	ldr	w0, [sp, 292]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 200
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w0, [x0]
	mov	w1, w0
	mov	w0, w19
	bl	_Z3gcdii
	mov	w19, w0
	ldrsw	x1, [sp, 292]
	add	x0, sp, 32
	bl	_ZNSt6vectorIiSaIiEEixEm
	str	w19, [x0]
	ldr	w0, [sp, 292]
	add	w0, w0, 1
	str	w0, [sp, 292]
	ldr	w0, [sp, 224]
	sub	w0, w0, #1
	ldr	w1, [sp, 292]
	cmp	w1, w0
	blt	.L19
	mov	w0, -1
	str	w0, [sp, 288]
	str	wzr, [sp, 284]
	b	.L20
	ldrsw	x1, [sp, 284]
	add	x0, sp, 32
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w19, [x0]
	ldr	w0, [sp, 284]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 32
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w0, [x0]
	cmp	w19, w0
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L21
	ldr	w0, [sp, 284]
	str	w0, [sp, 288]
	b	.L22
	ldr	w0, [sp, 284]
	add	w0, w0, 1
	str	w0, [sp, 284]
	ldr	w0, [sp, 224]
	sub	w0, w0, #2
	ldr	w1, [sp, 284]
	cmp	w1, w0
	blt	.L23
	ldr	w0, [sp, 288]
	cmn	w0, #1
	bne	.L24
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	mov	w19, 0
	b	.L25
	str	wzr, [sp, 280]
	b	.L26
	ldr	w0, [sp, 288]
	add	w0, w0, 1
	ldr	w1, [sp, 280]
	cmp	w1, w0
	beq	.L27
	ldrsw	x1, [sp, 280]
	add	x0, sp, 200
	bl	_ZNSt6vectorIiSaIiEEixEm
	mov	x1, x0
	add	x0, sp, 176
	ldr	w0, [sp, 288]
	add	w0, w0, 2
	ldr	w1, [sp, 280]
	cmp	w1, w0
	beq	.L28
	ldrsw	x1, [sp, 280]
	add	x0, sp, 200
	bl	_ZNSt6vectorIiSaIiEEixEm
	mov	x1, x0
	add	x0, sp, 152
	ldr	w1, [sp, 280]
	ldr	w0, [sp, 288]
	cmp	w1, w0
	beq	.L29
	ldrsw	x1, [sp, 280]
	add	x0, sp, 200
	bl	_ZNSt6vectorIiSaIiEEixEm
	mov	x1, x0
	add	x0, sp, 128
	ldr	w0, [sp, 280]
	add	w0, w0, 1
	str	w0, [sp, 280]
	ldr	w0, [sp, 224]
	ldr	w1, [sp, 280]
	cmp	w1, w0
	blt	.L30
	str	wzr, [sp, 276]
	b	.L31
	ldrsw	x1, [sp, 276]
	add	x0, sp, 176
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w19, [x0]
	ldr	w0, [sp, 276]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 176
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w0, [x0]
	mov	w1, w0
	mov	w0, w19
	bl	_Z3gcdii
	mov	w19, w0
	ldrsw	x1, [sp, 276]
	add	x0, sp, 104
	bl	_ZNSt6vectorIiSaIiEEixEm
	str	w19, [x0]
	ldrsw	x1, [sp, 276]
	add	x0, sp, 152
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w19, [x0]
	ldr	w0, [sp, 276]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 152
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w0, [x0]
	mov	w1, w0
	mov	w0, w19
	bl	_Z3gcdii
	mov	w19, w0
	ldrsw	x1, [sp, 276]
	add	x0, sp, 80
	bl	_ZNSt6vectorIiSaIiEEixEm
	str	w19, [x0]
	ldrsw	x1, [sp, 276]
	add	x0, sp, 128
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w19, [x0]
	ldr	w0, [sp, 276]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 128
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w0, [x0]
	mov	w1, w0
	mov	w0, w19
	bl	_Z3gcdii
	mov	w19, w0
	ldrsw	x1, [sp, 276]
	add	x0, sp, 56
	bl	_ZNSt6vectorIiSaIiEEixEm
	str	w19, [x0]
	ldr	w0, [sp, 276]
	add	w0, w0, 1
	str	w0, [sp, 276]
	ldr	w0, [sp, 224]
	sub	w0, w0, #2
	ldr	w1, [sp, 276]
	cmp	w1, w0
	blt	.L32
	str	wzr, [sp, 272]
	b	.L33
	ldrsw	x1, [sp, 272]
	add	x0, sp, 104
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w19, [x0]
	ldr	w0, [sp, 272]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 104
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w0, [x0]
	cmp	w19, w0
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L34
	strb	wzr, [sp, 303]
	ldrsw	x1, [sp, 272]
	add	x0, sp, 80
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w19, [x0]
	ldr	w0, [sp, 272]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 80
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w0, [x0]
	cmp	w19, w0
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L35
	strb	wzr, [sp, 302]
	ldrsw	x1, [sp, 272]
	add	x0, sp, 56
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w19, [x0]
	ldr	w0, [sp, 272]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 56
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w0, [x0]
	cmp	w19, w0
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L36
	strb	wzr, [sp, 301]
	ldr	w0, [sp, 272]
	add	w0, w0, 1
	str	w0, [sp, 272]
	ldr	w0, [sp, 224]
	sub	w0, w0, #3
	ldr	w1, [sp, 272]
	cmp	w1, w0
	blt	.L37
	ldrb	w0, [sp, 303]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L38
	ldrb	w0, [sp, 302]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L38
	ldrb	w0, [sp, 301]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L38
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	b	.L39
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	mov	w19, 1
	add	x0, sp, 32
	bl	_ZNSt6vectorIiSaIiEED1Ev
	cmp	w19, 1
	bne	.L40
	mov	w19, 1
	b	.L41
	mov	w19, 0
	add	x0, sp, 56
	bl	_ZNSt6vectorIiSaIiEED1Ev
	cmp	w19, 1
	bne	.L42
	mov	w19, 1
	b	.L43
	mov	w19, 0
	add	x0, sp, 80
	bl	_ZNSt6vectorIiSaIiEED1Ev
	cmp	w19, 1
	bne	.L44
	mov	w19, 1
	b	.L45
	mov	w19, 0
	add	x0, sp, 104
	bl	_ZNSt6vectorIiSaIiEED1Ev
	cmp	w19, 1
	bne	.L46
	mov	w19, 1
	b	.L47
	mov	w19, 0
	add	x0, sp, 128
	bl	_ZNSt6vectorIiSaIiEED1Ev
	cmp	w19, 1
	bne	.L48
	mov	w19, 1
	b	.L49
	mov	w19, 0
	add	x0, sp, 152
	bl	_ZNSt6vectorIiSaIiEED1Ev
	cmp	w19, 1
	bne	.L50
	mov	w19, 1
	b	.L51
	mov	w19, 0
	add	x0, sp, 176
	bl	_ZNSt6vectorIiSaIiEED1Ev
	cmp	w19, 1
	bne	.L52
	mov	w19, 1
	b	.L53
	mov	w19, 0
	add	x0, sp, 200
	bl	_ZNSt6vectorIiSaIiEED1Ev
	cmp	w19, 1
	bne	.L15
	nop
	ldr	w0, [sp, 228]
	sub	w1, w0, #1
	str	w1, [sp, 228]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L55
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 304
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	.L58
	ldr	x0, [sp]
	b	.L59
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
_ZNSaIiEC2Ev:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
_ZNSaIiED2Ev:
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaIiEC2Ev
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
	asr	x0, x0, 2
	mov	x2, x0
	mov	x1, x3
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	lsl	x0, x0, 2
	add	x0, x1, x0
	add	sp, sp, 16
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
	beq	.L69
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	x2, [sp, 16]
	mov	x1, x0
	mov	x0, x3
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	add	x1, x0, 4
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
	b	.L71
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIiSaIiEE3endEv
	ldr	x2, [sp, 16]
	mov	x1, x0
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
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
	bl	_ZNSaIiEC1ERKS_
	add	x0, sp, 56
	mov	x1, x0
	ldr	x0, [sp, 40]
	cmp	x0, x1
	cset	w0, hi
	and	w19, w0, 255
	add	x0, sp, 56
	bl	_ZNSaIiED1Ev
	cmp	w19, 0
	beq	.L75
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	ldr	x0, [sp, 40]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
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
	bl	_ZSt8_DestroyIPiEvT_S1_
	nop
	ldp	x29, x30, [sp], 48
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	beq	.L85
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
	adrp	x0, .LC4
	add	x2, x0, :lo12:.LC4
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
	lsl	x0, x0, 2
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
	add	x0, x0, 4
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
	asr	x0, x0, 2
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
	lsl	x0, x0, 2
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
	mov	x0, 2305843009213693951
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	add	x1, sp, 32
	add	x0, sp, 40
	bl	_ZSt3minImERKT_S2_S2_
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 48
	ret
_ZNSaIiEC2ERKS_:
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
	bl	_ZNSaIiEC2ERKS_
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
	lsl	x0, x0, 2
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
	ldr	w19, [x0]
	ldr	x0, [sp, 48]
	mov	x1, x0
	mov	x0, 4
	bl	_ZnwmPv
	str	w19, [x0]
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
	beq	.L104
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
	bcc	.L105
	ldr	x0, [sp, 56]
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	bls	.L106
	ldr	x0, [sp, 56]
	b	.L107
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
	asr	x0, x0, 2
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L114
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	b	.L116
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
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
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 2
	add	sp, sp, 16
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L142
	ldr	x0, [sp, 24]
	bl	_ZSt11__addressofIiEPT_RS0_
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
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
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	x0, 2305843009213693951
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
	beq	.L149
	ldr	x1, [sp, 32]
	mov	x0, 4611686018427387903
	cmp	x1, x0
	bls	.L150
	bl	_ZSt17__throw_bad_allocv
	ldr	x0, [sp, 32]
	lsl	x0, x0, 2
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
	bl	_ZSt12__niter_baseIPiET_S1_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPiET_S1_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPiET_S1_
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
	mov	x1, x0
	mov	x0, 4
	bl	_ZnwmPv
	str	wzr, [x0]
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
	asr	x0, x0, 2
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	ble	.L160
	ldr	x0, [sp, 56]
	lsl	x0, x0, 2
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	memmove
	ldr	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldp	x29, x30, [sp], 64
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
	bne	.L165
	ldr	x0, [sp, 40]
	b	.L166
	ldr	x0, [sp, 32]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x2, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 32]
	lsl	x0, x0, 2
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
	ldr	w0, [x0]
	str	w0, [sp, 44]
	b	.L169
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 44]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bne	.L170
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
	bne	.L173
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L173
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