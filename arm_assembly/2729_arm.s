shot:
command:
qshot:
n:
tank:
main:
	stp	x29, x30, [sp, -192]!
	mov	x29, sp
	add	x0, sp, 164
	mov	x2, x0
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	str	wzr, [sp, 172]
	str	wzr, [sp, 188]
	b	.L3
	add	x2, sp, 40
	ldrsw	x1, [sp, 188]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	add	x0, x2, x0
	add	x3, sp, 152
	add	x2, sp, 156
	add	x1, sp, 160
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w1, [sp, 160]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	lsl	w0, w0, 1
	str	w0, [sp, 160]
	ldr	w1, [sp, 156]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	lsl	w0, w0, 1
	str	w0, [sp, 156]
	ldrsw	x0, [sp, 188]
	lsl	x1, x0, 4
	adrp	x0, tank
	add	x0, x0, :lo12:tank
	add	x0, x1, x0
	ldr	w1, [sp, 160]
	ldr	w2, [sp, 156]
	ldr	w3, [sp, 152]
	bl	_ZN4Tank7settankEiii
	ldr	w0, [sp, 188]
	add	w0, w0, 1
	str	w0, [sp, 188]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 188]
	cmp	w1, w0
	blt	.L4
	str	wzr, [sp, 188]
	b	.L5
	ldrsw	x0, [sp, 188]
	lsl	x1, x0, 4
	adrp	x0, command
	add	x0, x0, :lo12:command
	add	x0, x1, x0
	add	x2, sp, 16
	add	x1, sp, 24
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	adrp	x0, command
	add	x1, x0, :lo12:command
	ldrsw	x0, [sp, 188]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w1, [x0]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w2, w0
	adrp	x0, command
	add	x1, x0, :lo12:command
	ldrsw	x0, [sp, 188]
	lsl	x0, x0, 4
	add	x0, x1, x0
	str	w2, [x0]
	str	wzr, [sp, 184]
	b	.L6
	add	x2, sp, 40
	ldrsw	x1, [sp, 184]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	add	x1, x2, x0
	add	x0, sp, 24
	bl	strcmp
	cmp	w0, 0
	beq	.L36
	ldr	w0, [sp, 184]
	add	w0, w0, 1
	str	w0, [sp, 184]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 184]
	cmp	w1, w0
	blt	.L9
	b	.L8
	nop
	adrp	x0, command
	add	x1, x0, :lo12:command
	ldrsw	x0, [sp, 188]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w1, [sp, 184]
	str	w1, [x0, 4]
	add	x2, sp, 16
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L10
	adrp	x0, command
	add	x1, x0, :lo12:command
	ldrsw	x0, [sp, 188]
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	w1, 1
	str	w1, [x0, 8]
	b	.L11
	add	x2, sp, 16
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L12
	adrp	x0, command
	add	x1, x0, :lo12:command
	ldrsw	x0, [sp, 188]
	lsl	x0, x0, 4
	add	x0, x1, x0
	str	wzr, [x0, 8]
	b	.L11
	add	x2, sp, 16
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L13
	ldrsw	x0, [sp, 188]
	lsl	x1, x0, 4
	adrp	x0, command
	add	x0, x0, :lo12:command
	add	x0, x1, x0
	add	x0, x0, 12
	mov	x1, x0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__isoc99_scanf
	adrp	x0, command
	add	x1, x0, :lo12:command
	ldrsw	x0, [sp, 188]
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	w1, 2
	str	w1, [x0, 8]
	b	.L11
	add	x2, sp, 16
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L11
	adrp	x0, command
	add	x1, x0, :lo12:command
	ldrsw	x0, [sp, 188]
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	w1, 3
	str	w1, [x0, 8]
	ldr	w0, [sp, 188]
	add	w0, w0, 1
	str	w0, [sp, 188]
	ldr	w0, [sp, 164]
	ldr	w1, [sp, 188]
	cmp	w1, w0
	blt	.L14
	adrp	x0, qshot
	add	x0, x0, :lo12:qshot
	str	wzr, [x0]
	str	wzr, [sp, 180]
	str	wzr, [sp, 176]
	b	.L15
	adrp	x0, command
	add	x1, x0, :lo12:command
	ldrsw	x0, [sp, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0, 8]
	cmp	w0, 1
	bne	.L17
	adrp	x0, command
	add	x1, x0, :lo12:command
	ldrsw	x0, [sp, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0, 4]
	sxtw	x0, w0
	lsl	x1, x0, 4
	adrp	x0, tank
	add	x0, x0, :lo12:tank
	add	x0, x1, x0
	bl	_ZN4Tank8bemovingEv
	b	.L18
	adrp	x0, command
	add	x1, x0, :lo12:command
	ldrsw	x0, [sp, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0, 8]
	cmp	w0, 0
	bne	.L19
	adrp	x0, command
	add	x1, x0, :lo12:command
	ldrsw	x0, [sp, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0, 4]
	sxtw	x0, w0
	lsl	x1, x0, 4
	adrp	x0, tank
	add	x0, x0, :lo12:tank
	add	x0, x1, x0
	bl	_ZN4Tank4stopEv
	b	.L18
	adrp	x0, command
	add	x1, x0, :lo12:command
	ldrsw	x0, [sp, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0, 8]
	cmp	w0, 2
	bne	.L20
	adrp	x0, command
	add	x1, x0, :lo12:command
	ldrsw	x0, [sp, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0, 4]
	sxtw	x0, w0
	lsl	x1, x0, 4
	adrp	x0, tank
	add	x0, x0, :lo12:tank
	add	x2, x1, x0
	adrp	x0, command
	add	x1, x0, :lo12:command
	ldrsw	x0, [sp, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0, 12]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN4Tank4turnEi
	b	.L18
	adrp	x0, command
	add	x1, x0, :lo12:command
	ldrsw	x0, [sp, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0, 8]
	cmp	w0, 3
	bne	.L18
	adrp	x0, command
	add	x1, x0, :lo12:command
	ldrsw	x0, [sp, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0, 4]
	sxtw	x0, w0
	lsl	x1, x0, 4
	adrp	x0, tank
	add	x0, x0, :lo12:tank
	add	x0, x1, x0
	bl	_ZN4Tank8shootingEv
	ldr	w0, [sp, 180]
	add	w0, w0, 1
	str	w0, [sp, 180]
	ldr	w0, [sp, 164]
	ldr	w1, [sp, 180]
	cmp	w1, w0
	bge	.L21
	adrp	x0, command
	add	x1, x0, :lo12:command
	ldrsw	x0, [sp, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 176]
	cmp	w1, w0
	beq	.L22
	str	wzr, [sp, 188]
	b	.L23
	ldrsw	x0, [sp, 188]
	lsl	x1, x0, 4
	adrp	x0, tank
	add	x0, x0, :lo12:tank
	add	x0, x1, x0
	bl	_ZN4Tank6movingEv
	ldr	w0, [sp, 188]
	add	w0, w0, 1
	str	w0, [sp, 188]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 188]
	cmp	w1, w0
	blt	.L24
	bl	_Z8shotmovev
	str	wzr, [sp, 188]
	b	.L25
	ldrsw	x0, [sp, 188]
	lsl	x1, x0, 4
	adrp	x0, tank
	add	x0, x0, :lo12:tank
	add	x0, x1, x0
	bl	_ZN4Tank7killingEv
	ldr	w0, [sp, 188]
	add	w0, w0, 1
	str	w0, [sp, 188]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 188]
	cmp	w1, w0
	blt	.L26
	ldr	w0, [sp, 176]
	add	w0, w0, 1
	str	w0, [sp, 176]
	ldr	w0, [sp, 176]
	cmp	w0, 258
	ble	.L16
	str	wzr, [sp, 188]
	b	.L28
	ldrsw	x0, [sp, 188]
	lsl	x1, x0, 4
	adrp	x0, tank
	add	x0, x0, :lo12:tank
	add	x0, x1, x0
	bl	_ZN4Tank5getbeEv
	and	w0, w0, 255
	cmp	w0, 1
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L29
	ldr	w0, [sp, 188]
	str	w0, [sp, 168]
	ldr	w0, [sp, 172]
	add	w0, w0, 1
	str	w0, [sp, 172]
	ldr	w0, [sp, 188]
	add	w0, w0, 1
	str	w0, [sp, 188]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 188]
	cmp	w1, w0
	blt	.L30
	ldr	w0, [sp, 172]
	cmp	w0, 0
	beq	.L31
	ldr	w0, [sp, 172]
	cmp	w0, 1
	ble	.L32
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	printf
	b	.L33
	add	x2, sp, 40
	ldrsw	x1, [sp, 168]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	add	x0, x2, x0
	mov	x1, x0
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	printf
	add	x0, sp, 164
	mov	x2, x0
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L34
	ldr	w0, [sp, 164]
	cmp	w0, 0
	bne	.L34
	mov	w0, 0
	ldp	x29, x30, [sp], 192
	ret
_ZN4TankC2Eiii:
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	w2, [sp, 16]
	str	w3, [sp, 12]
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 20]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 16]
	str	w1, [x0, 4]
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 12]
	str	w1, [x0, 8]
	ldr	x0, [sp, 24]
	strb	wzr, [x0, 12]
	ldr	x0, [sp, 24]
	mov	w1, 1
	strb	w1, [x0, 13]
	nop
	add	sp, sp, 32
	ret
_ZN4TankC2Ev:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	wzr, [x0]
	ldr	x0, [sp, 8]
	str	wzr, [x0, 4]
	ldr	x0, [sp, 8]
	str	wzr, [x0, 8]
	ldr	x0, [sp, 8]
	strb	wzr, [x0, 12]
	ldr	x0, [sp, 8]
	strb	wzr, [x0, 13]
	nop
	add	sp, sp, 16
	ret
_ZN4TankD2Ev:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	ret
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	w2, [sp, 16]
	str	w3, [sp, 12]
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 20]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 16]
	str	w1, [x0, 4]
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 12]
	str	w1, [x0, 8]
	ldr	x0, [sp, 24]
	strb	wzr, [x0, 12]
	ldr	x0, [sp, 24]
	mov	w1, 1
	strb	w1, [x0, 13]
	nop
	add	sp, sp, 32
	ret
_ZN4Tank8bemovingEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 13]
	cmp	w0, 1
	bne	.L43
	ldr	x0, [sp, 8]
	mov	w1, 1
	strb	w1, [x0, 12]
	nop
	add	sp, sp, 16
	ret
_ZN4Tank4stopEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 13]
	cmp	w0, 1
	bne	.L46
	ldr	x0, [sp, 8]
	strb	wzr, [x0, 12]
	nop
	add	sp, sp, 16
	ret
_ZN4Tank4turnEi:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 13]
	cmp	w0, 1
	bne	.L49
	ldr	x0, [sp, 8]
	ldr	w1, [x0, 8]
	ldr	w0, [sp, 4]
	add	w0, w1, w0
	add	w0, w0, 360
	mov	w1, 24759
	movk	w1, 0xb60b, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	add	w1, w0, w1
	asr	w2, w1, 8
	asr	w1, w0, 31
	sub	w1, w2, w1
	mov	w2, 360
	mul	w1, w1, w2
	sub	w1, w0, w1
	ldr	x0, [sp, 8]
	str	w1, [x0, 8]
	nop
	add	sp, sp, 16
	ret
_ZN4Tank6movingEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 13]
	cmp	w0, 1
	bne	.L59
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 12]
	cmp	w0, 1
	bne	.L59
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 8]
	cmp	w0, 0
	bne	.L52
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w0, 720
	bne	.L53
	ldr	x0, [sp, 8]
	strb	wzr, [x0, 12]
	b	.L59
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	add	w1, w0, 10
	ldr	x0, [sp, 8]
	str	w1, [x0]
	b	.L59
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 8]
	cmp	w0, 90
	bne	.L54
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 4]
	cmp	w0, 720
	bne	.L55
	ldr	x0, [sp, 8]
	strb	wzr, [x0, 12]
	b	.L59
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 4]
	add	w1, w0, 10
	ldr	x0, [sp, 8]
	str	w1, [x0, 4]
	b	.L59
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 8]
	cmp	w0, 180
	bne	.L56
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L57
	ldr	x0, [sp, 8]
	strb	wzr, [x0, 12]
	b	.L59
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	sub	w1, w0, #10
	ldr	x0, [sp, 8]
	str	w1, [x0]
	b	.L59
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 4]
	cmp	w0, 0
	bne	.L58
	ldr	x0, [sp, 8]
	strb	wzr, [x0, 12]
	b	.L59
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 4]
	sub	w1, w0, #10
	ldr	x0, [sp, 8]
	str	w1, [x0, 4]
	nop
	add	sp, sp, 16
	ret
_ZN4Tank8shootingEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 13]
	cmp	w0, 1
	bne	.L62
	adrp	x0, qshot
	add	x0, x0, :lo12:qshot
	ldr	w3, [x0]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	adrp	x0, shot
	add	x2, x0, :lo12:shot
	sxtw	x0, w3
	lsl	x0, x0, 4
	add	x0, x2, x0
	str	w1, [x0]
	adrp	x0, qshot
	add	x0, x0, :lo12:qshot
	ldr	w3, [x0]
	ldr	x0, [sp, 8]
	ldr	w1, [x0, 4]
	adrp	x0, shot
	add	x2, x0, :lo12:shot
	sxtw	x0, w3
	lsl	x0, x0, 4
	add	x0, x2, x0
	str	w1, [x0, 4]
	adrp	x0, qshot
	add	x0, x0, :lo12:qshot
	ldr	w3, [x0]
	ldr	x0, [sp, 8]
	ldr	w1, [x0, 8]
	adrp	x0, shot
	add	x2, x0, :lo12:shot
	sxtw	x0, w3
	lsl	x0, x0, 4
	add	x0, x2, x0
	str	w1, [x0, 12]
	adrp	x0, qshot
	add	x0, x0, :lo12:qshot
	ldr	w2, [x0]
	adrp	x0, shot
	add	x1, x0, :lo12:shot
	sxtw	x0, w2
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	w1, 1
	strb	w1, [x0, 8]
	adrp	x0, qshot
	add	x0, x0, :lo12:qshot
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, qshot
	add	x0, x0, :lo12:qshot
	str	w1, [x0]
	nop
	add	sp, sp, 16
	ret
_ZN4Tank5getbeEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 13]
	add	sp, sp, 16
	ret
_ZN4Tank7killingEv:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 13]
	cmp	w0, 0
	beq	.L72
	str	wzr, [sp, 28]
	b	.L68
	adrp	x0, shot
	add	x1, x0, :lo12:shot
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldrb	w0, [x0, 8]
	cmp	w0, 0
	beq	.L73
	adrp	x0, shot
	add	x1, x0, :lo12:shot
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L70
	adrp	x0, shot
	add	x1, x0, :lo12:shot
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w1, [x0, 4]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 4]
	cmp	w1, w0
	bne	.L70
	adrp	x0, shot
	add	x1, x0, :lo12:shot
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 4
	add	x0, x1, x0
	strb	wzr, [x0, 8]
	ldr	x0, [sp, 8]
	strb	wzr, [x0, 13]
	b	.L70
	nop
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, qshot
	add	x0, x0, :lo12:qshot
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L71
	b	.L65
	nop
	add	sp, sp, 32
	ret
_Z8shotmovev:
	sub	sp, sp, #16
	str	wzr, [sp, 12]
	b	.L75
	adrp	x0, shot
	add	x1, x0, :lo12:shot
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldrb	w0, [x0, 8]
	cmp	w0, 1
	bne	.L76
	adrp	x0, shot
	add	x1, x0, :lo12:shot
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0, 12]
	cmp	w0, 0
	bne	.L77
	adrp	x0, shot
	add	x1, x0, :lo12:shot
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 700
	ble	.L78
	adrp	x0, shot
	add	x1, x0, :lo12:shot
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 4
	add	x0, x1, x0
	strb	wzr, [x0, 8]
	b	.L76
	adrp	x0, shot
	add	x1, x0, :lo12:shot
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0]
	add	w1, w0, 20
	adrp	x0, shot
	add	x2, x0, :lo12:shot
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 4
	add	x0, x2, x0
	str	w1, [x0]
	b	.L76
	adrp	x0, shot
	add	x1, x0, :lo12:shot
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0, 12]
	cmp	w0, 90
	bne	.L79
	adrp	x0, shot
	add	x1, x0, :lo12:shot
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0, 4]
	cmp	w0, 700
	ble	.L80
	adrp	x0, shot
	add	x1, x0, :lo12:shot
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 4
	add	x0, x1, x0
	strb	wzr, [x0, 8]
	b	.L76
	adrp	x0, shot
	add	x1, x0, :lo12:shot
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0, 4]
	add	w1, w0, 20
	adrp	x0, shot
	add	x2, x0, :lo12:shot
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 4
	add	x0, x2, x0
	str	w1, [x0, 4]
	b	.L76
	adrp	x0, shot
	add	x1, x0, :lo12:shot
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0, 12]
	cmp	w0, 180
	bne	.L81
	adrp	x0, shot
	add	x1, x0, :lo12:shot
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 19
	bgt	.L82
	adrp	x0, shot
	add	x1, x0, :lo12:shot
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 4
	add	x0, x1, x0
	strb	wzr, [x0, 8]
	b	.L76
	adrp	x0, shot
	add	x1, x0, :lo12:shot
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0]
	sub	w1, w0, #20
	adrp	x0, shot
	add	x2, x0, :lo12:shot
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 4
	add	x0, x2, x0
	str	w1, [x0]
	b	.L76
	adrp	x0, shot
	add	x1, x0, :lo12:shot
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0, 4]
	cmp	w0, 19
	bgt	.L83
	adrp	x0, shot
	add	x1, x0, :lo12:shot
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 4
	add	x0, x1, x0
	strb	wzr, [x0, 8]
	b	.L76
	adrp	x0, shot
	add	x1, x0, :lo12:shot
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0, 4]
	sub	w1, w0, #20
	adrp	x0, shot
	add	x2, x0, :lo12:shot
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 4
	add	x0, x2, x0
	str	w1, [x0, 4]
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
	adrp	x0, qshot
	add	x0, x0, :lo12:qshot
	ldr	w0, [x0]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	blt	.L84
	nop
	nop
	add	sp, sp, 16
	ret
__tcf_0:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	adrp	x0, tank+160
	add	x19, x0, :lo12:tank+160
	adrp	x0, tank
	add	x0, x0, :lo12:tank
	cmp	x19, x0
	beq	.L85
	sub	x19, x19, #16
	mov	x0, x19
	bl	_ZN4TankD1Ev
	b	.L87
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	w0, [sp, 44]
	str	w1, [sp, 40]
	ldr	w0, [sp, 44]
	cmp	w0, 1
	bne	.L92
	ldr	w1, [sp, 40]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L92
	adrp	x0, _ZStL8__ioinit
	bl	_ZNSt8ios_base4InitC1Ev
	adrp	x0, _ZStL8__ioinit
	bl	__cxa_atexit
	adrp	x0, tank
	add	x0, x0, :lo12:tank
	mov	x19, 9
	mov	x20, x0
	b	.L90
	mov	x0, x20
	bl	_ZN4TankC1Ev
	add	x20, x20, 16
	sub	x19, x19, #1
	cmp	x19, 0
	bge	.L91
	mov	x1, 0
	adrp	x0, __tcf_0
	add	x0, x0, :lo12:__tcf_0
	bl	__cxa_atexit
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	w1, 65535
	mov	w0, 1
	ldp	x29, x30, [sp], 16
	ret