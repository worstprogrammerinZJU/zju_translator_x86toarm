main:
	sub	sp, sp, #1088
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 1024
	stp	xzr, xzr, [x0]
	add	x0, sp, 1024
	stp	xzr, xzr, [x0, 16]
	str	xzr, [sp, 1056]
	str	wzr, [sp, 1084]
	str	wzr, [sp, 1080]
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 1076]
	b	.L2
	ldrsw	x0, [sp, 1076]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	sub	w3, w0, #48
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 1024
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 1024
	str	w2, [x1, x0]
	ldr	w0, [sp, 1076]
	add	w0, w0, 1
	str	w0, [sp, 1076]
	ldrsw	x0, [sp, 1076]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 1024]
	cmp	w0, 0
	bne	.L4
	ldr	w0, [sp, 1044]
	cmp	w0, 0
	bne	.L4
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L5
	ldr	w1, [sp, 1028]
	ldr	w0, [sp, 1032]
	lsl	w0, w0, 1
	add	w2, w1, w0
	ldr	w1, [sp, 1036]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w1, w2, w0
	ldr	w0, [sp, 1040]
	lsl	w0, w0, 2
	add	w2, w1, w0
	ldr	w1, [sp, 1044]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	add	w2, w2, w0
	ldr	w1, [sp, 1048]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	lsl	w0, w0, 1
	add	w2, w2, w0
	ldr	w1, [sp, 1052]
	mov	w0, w1
	lsl	w0, w0, 3
	sub	w0, w0, w1
	add	w1, w2, w0
	ldr	w0, [sp, 1056]
	lsl	w0, w0, 3
	add	w2, w1, w0
	ldr	w1, [sp, 1060]
	mov	w0, w1
	lsl	w0, w0, 3
	add	w0, w0, w1
	add	w0, w2, w0
	str	w0, [sp, 1068]
	ldr	w1, [sp, 1068]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w1, w0
	lsr	x2, x0, 32
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 1
	add	w0, w0, w2
	sub	w0, w1, w0
	str	w0, [sp, 1064]
	ldr	w0, [sp, 1024]
	cmp	w0, 0
	bne	.L6
	mov	w0, 1
	str	w0, [sp, 1084]
	ldr	w0, [sp, 1064]
	cmp	w0, 1
	bne	.L7
	mov	w0, 1
	str	w0, [sp, 1076]
	b	.L8
	ldrsw	x0, [sp, 1076]
	lsl	x0, x0, 2
	add	x1, sp, 1024
	ldr	w0, [x1, x0]
	cmp	w0, 0
	ble	.L9
	ldrsw	x0, [sp, 1076]
	lsl	x0, x0, 2
	add	x1, sp, 1024
	ldr	w0, [x1, x0]
	sub	w2, w0, #1
	ldrsw	x0, [sp, 1076]
	lsl	x0, x0, 2
	add	x1, sp, 1024
	str	w2, [x1, x0]
	b	.L10
	ldr	w0, [sp, 1076]
	add	w0, w0, 3
	str	w0, [sp, 1076]
	ldr	w0, [sp, 1076]
	cmp	w0, 8
	ble	.L11
	ldr	w0, [sp, 1076]
	cmp	w0, 9
	ble	.L12
	ldr	w0, [sp, 1032]
	cmp	w0, 1
	ble	.L13
	ldr	w0, [sp, 1032]
	sub	w0, w0, #2
	str	w0, [sp, 1032]
	b	.L12
	ldr	w0, [sp, 1032]
	cmp	w0, 0
	ble	.L14
	ldr	w0, [sp, 1032]
	sub	w0, w0, #1
	str	w0, [sp, 1032]
	ldr	w0, [sp, 1044]
	ldr	w1, [sp, 1084]
	cmp	w1, w0
	bge	.L15
	ldr	w0, [sp, 1044]
	sub	w0, w0, #1
	str	w0, [sp, 1044]
	b	.L12
	ldr	w0, [sp, 1056]
	cmp	w0, 0
	ble	.L16
	ldr	w0, [sp, 1056]
	sub	w0, w0, #1
	str	w0, [sp, 1056]
	b	.L12
	mov	w0, 1
	str	w0, [sp, 1080]
	b	.L12
	ldr	w1, [sp, 1044]
	ldr	w0, [sp, 1084]
	add	w0, w0, 1
	cmp	w1, w0
	ble	.L17
	ldr	w0, [sp, 1044]
	sub	w0, w0, #2
	str	w0, [sp, 1044]
	b	.L12
	ldr	w0, [sp, 1044]
	ldr	w1, [sp, 1084]
	cmp	w1, w0
	bge	.L18
	ldr	w0, [sp, 1044]
	sub	w0, w0, #1
	str	w0, [sp, 1044]
	ldr	w0, [sp, 1056]
	cmp	w0, 0
	ble	.L19
	ldr	w0, [sp, 1056]
	sub	w0, w0, #1
	str	w0, [sp, 1056]
	b	.L12
	mov	w0, 1
	str	w0, [sp, 1080]
	b	.L12
	ldr	w0, [sp, 1056]
	cmp	w0, 1
	ble	.L20
	ldr	w0, [sp, 1056]
	sub	w0, w0, #2
	str	w0, [sp, 1056]
	b	.L12
	mov	w0, 1
	str	w0, [sp, 1080]
	b	.L12
	ldr	w0, [sp, 1064]
	cmp	w0, 2
	bne	.L12
	ldr	w0, [sp, 1032]
	cmp	w0, 0
	ble	.L21
	ldr	w0, [sp, 1032]
	sub	w0, w0, #1
	str	w0, [sp, 1032]
	b	.L12
	ldr	w0, [sp, 1044]
	ldr	w1, [sp, 1084]
	cmp	w1, w0
	bge	.L22
	ldr	w0, [sp, 1044]
	sub	w0, w0, #1
	str	w0, [sp, 1044]
	b	.L12
	ldr	w0, [sp, 1056]
	cmp	w0, 0
	ble	.L23
	ldr	w0, [sp, 1056]
	sub	w0, w0, #1
	str	w0, [sp, 1056]
	b	.L12
	mov	w0, 1
	str	w0, [sp, 1076]
	mov	w0, 2
	str	w0, [sp, 1072]
	b	.L24
	ldrsw	x0, [sp, 1076]
	lsl	x0, x0, 2
	add	x1, sp, 1024
	ldr	w0, [x1, x0]
	sub	w2, w0, #1
	ldrsw	x0, [sp, 1076]
	lsl	x0, x0, 2
	add	x1, sp, 1024
	str	w2, [x1, x0]
	ldr	w0, [sp, 1072]
	sub	w0, w0, #1
	str	w0, [sp, 1072]
	ldr	w0, [sp, 1072]
	cmp	w0, 0
	beq	.L37
	ldrsw	x0, [sp, 1076]
	lsl	x0, x0, 2
	add	x1, sp, 1024
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bgt	.L27
	b	.L26
	nop
	ldr	w0, [sp, 1076]
	add	w0, w0, 3
	str	w0, [sp, 1076]
	ldr	w0, [sp, 1072]
	cmp	w0, 0
	ble	.L28
	ldr	w0, [sp, 1076]
	cmp	w0, 8
	ble	.L25
	ldr	w0, [sp, 1072]
	cmp	w0, 0
	ble	.L12
	mov	w0, 1
	str	w0, [sp, 1080]
	ldr	w0, [sp, 1080]
	cmp	w0, 1
	bne	.L30
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L5
	ldr	w1, [sp, 1028]
	ldr	w0, [sp, 1032]
	add	w1, w1, w0
	ldr	w0, [sp, 1036]
	add	w1, w1, w0
	ldr	w0, [sp, 1040]
	add	w1, w1, w0
	ldr	w0, [sp, 1044]
	add	w1, w1, w0
	ldr	w0, [sp, 1048]
	add	w1, w1, w0
	ldr	w0, [sp, 1052]
	add	w1, w1, w0
	ldr	w0, [sp, 1056]
	add	w1, w1, w0
	ldr	w0, [sp, 1060]
	add	w0, w1, w0
	cmp	w0, 0
	bne	.L31
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L5
	ldr	w1, [sp, 1044]
	ldr	w0, [sp, 1084]
	sub	w0, w1, w0
	str	w0, [sp, 1044]
	mov	w0, 9
	str	w0, [sp, 1076]
	b	.L32
	ldrsw	x0, [sp, 1076]
	lsl	x0, x0, 2
	add	x1, sp, 1024
	ldr	w0, [x1, x0]
	str	w0, [sp, 1072]
	b	.L33
	ldr	w1, [sp, 1076]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 1072]
	sub	w0, w0, #1
	str	w0, [sp, 1072]
	ldr	w0, [sp, 1072]
	cmp	w0, 0
	bgt	.L34
	ldr	w0, [sp, 1076]
	sub	w0, w0, #1
	str	w0, [sp, 1076]
	ldr	w0, [sp, 1076]
	cmp	w0, 0
	bge	.L35
	ldr	w0, [sp, 1084]
	cmp	w0, 1
	bne	.L5
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 1088
	ret