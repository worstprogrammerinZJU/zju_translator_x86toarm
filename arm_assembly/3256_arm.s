G:
n:
m:
k:
cow:
picnic:
flag:
_Z2ORi:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L2
	adrp	x0, flag
	add	x1, x0, :lo12:flag
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L3
	adrp	x0, picnic
	add	x1, x0, :lo12:picnic
	ldrsw	x0, [sp, 28]
	strb	wzr, [x1, x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L4
	nop
	nop
	add	sp, sp, 32
	ret
_Z3DFSi:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, G
	add	x0, x0, :lo12:G
	ldrsw	x1, [sp, 28]
	ldr	x0, [x0, x1, lsl 3]
	str	x0, [sp, 40]
	adrp	x0, flag
	add	x1, x0, :lo12:flag
	ldrsw	x0, [sp, 28]
	mov	w2, 1
	strb	w2, [x1, x0]
	b	.L6
	ldr	x0, [sp, 40]
	ldr	w0, [x0]
	str	w0, [sp, 36]
	adrp	x0, flag
	add	x1, x0, :lo12:flag
	ldrsw	x0, [sp, 36]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 36]
	bl	_Z3DFSi
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L8
	nop
	nop
	ldp	x29, x30, [sp], 48
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	adrp	x0, m
	add	x3, x0, :lo12:m
	adrp	x0, n
	add	x2, x0, :lo12:n
	adrp	x0, k
	add	x1, x0, :lo12:k
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L10
	ldrsw	x0, [sp, 44]
	lsl	x1, x0, 2
	adrp	x0, cow
	add	x0, x0, :lo12:cow
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L11
	str	wzr, [sp, 44]
	b	.L12
	add	x1, sp, 24
	add	x0, sp, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 32]
	ldr	w1, [sp, 24]
	ldr	x0, [sp, 32]
	str	w1, [x0]
	ldr	w1, [sp, 28]
	adrp	x0, G
	add	x0, x0, :lo12:G
	sxtw	x1, w1
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [sp, 32]
	str	x1, [x0, 8]
	ldr	w1, [sp, 28]
	adrp	x0, G
	add	x0, x0, :lo12:G
	sxtw	x1, w1
	ldr	x2, [sp, 32]
	str	x2, [x0, x1, lsl 3]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L13
	mov	x2, 1001
	mov	w1, 1
	adrp	x0, picnic
	add	x0, x0, :lo12:picnic
	bl	memset
	str	wzr, [sp, 44]
	b	.L14
	mov	x2, 1001
	mov	w1, 0
	adrp	x0, flag
	add	x0, x0, :lo12:flag
	bl	memset
	adrp	x0, cow
	add	x0, x0, :lo12:cow
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	bl	_Z3DFSi
	adrp	x0, cow
	add	x0, x0, :lo12:cow
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	bl	_Z2ORi
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L15
	mov	w0, 1
	str	w0, [sp, 44]
	str	wzr, [sp, 40]
	b	.L16
	adrp	x0, picnic
	add	x1, x0, :lo12:picnic
	ldrsw	x0, [sp, 44]
	ldrb	w0, [x1, x0]
	cmp	w0, 1
	bne	.L17
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L18
	ldr	w1, [sp, 40]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret