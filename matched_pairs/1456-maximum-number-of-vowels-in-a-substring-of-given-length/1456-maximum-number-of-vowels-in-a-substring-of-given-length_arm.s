isVowel:
	sub	sp, sp, #16
	strb	w0, [sp, 15]
	ldrb	w0, [sp, 15]
	cmp	w0, 97
	beq	.L2
	ldrb	w0, [sp, 15]
	cmp	w0, 101
	beq	.L2
	ldrb	w0, [sp, 15]
	cmp	w0, 105
	beq	.L2
	ldrb	w0, [sp, 15]
	cmp	w0, 111
	beq	.L2
	ldrb	w0, [sp, 15]
	cmp	w0, 117
	bne	.L3
	mov	w0, 1
	b	.L5
	mov	w0, 0
	add	sp, sp, 16
	ret
maxVowels:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	wzr, [sp, 76]
	ldr	x0, [sp, 40]
	bl	strlen
	str	w0, [sp, 60]
	str	wzr, [sp, 68]
	b	.L7
	ldrsw	x0, [sp, 68]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	bl	isVowel
	mov	w1, w0
	ldr	w0, [sp, 76]
	add	w0, w0, w1
	str	w0, [sp, 76]
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 76]
	str	w0, [sp, 72]
	ldr	w0, [sp, 36]
	str	w0, [sp, 64]
	b	.L9
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	bl	isVowel
	mov	w1, w0
	ldr	w0, [sp, 76]
	sub	w19, w0, w1
	ldrsw	x0, [sp, 64]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	bl	isVowel
	add	w0, w19, w0
	str	w0, [sp, 76]
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 72]
	cmp	w1, w0
	ble	.L10
	ldr	w0, [sp, 76]
	str	w0, [sp, 72]
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L11
	ldr	w0, [sp, 72]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret