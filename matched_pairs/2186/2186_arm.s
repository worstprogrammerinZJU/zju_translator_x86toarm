G:
GT:
c:
find:
cow:
n:
m:
e:
q:
num:
a1:
a2:
p:
_Z7ADJLISTv:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	wzr, [sp, 44]
	b	.L2
	add	x1, sp, 16
	add	x0, sp, 20
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 32]
	ldr	w1, [sp, 16]
	ldr	x0, [sp, 32]
	str	w1, [x0]
	ldr	w1, [sp, 20]
	adrp	x0, G
	add	x0, x0, :lo12:G
	sxtw	x1, w1
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [sp, 32]
	str	x1, [x0, 8]
	ldr	w1, [sp, 20]
	adrp	x0, G
	add	x0, x0, :lo12:G
	sxtw	x1, w1
	ldr	x2, [sp, 32]
	str	x2, [x0, x1, lsl 3]
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 24]
	ldr	w1, [sp, 20]
	ldr	x0, [sp, 24]
	str	w1, [x0]
	ldr	w1, [sp, 16]
	adrp	x0, GT
	add	x0, x0, :lo12:GT
	sxtw	x1, w1
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
	ldr	w1, [sp, 16]
	adrp	x0, GT
	add	x0, x0, :lo12:GT
	sxtw	x1, w1
	ldr	x2, [sp, 24]
	str	x2, [x0, x1, lsl 3]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, e
	add	x0, x0, :lo12:e
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L3
	nop
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, G
	add	x0, x0, :lo12:G
	ldrsw	x1, [sp, 28]
	ldr	x0, [x0, x1, lsl 3]
	str	x0, [sp, 40]
	adrp	x0, c
	add	x1, x0, :lo12:c
	ldrsw	x0, [sp, 28]
	mov	w2, 1
	strb	w2, [x1, x0]
	b	.L5
	ldr	x0, [sp, 40]
	ldr	w2, [x0]
	adrp	x0, c
	add	x1, x0, :lo12:c
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L6
	ldr	x0, [sp, 40]
	ldr	w0, [x0]
	bl	_Z15dfs_visit_firsti
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L7
	ldr	w2, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	sub	w3, w0, #1
	adrp	x1, m
	add	x1, x1, :lo12:m
	str	w3, [x1]
	adrp	x1, a1
	add	x1, x1, :lo12:a1
	sxtw	x0, w0
	str	w2, [x1, x0, lsl 2]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, GT
	add	x0, x0, :lo12:GT
	ldrsw	x1, [sp, 28]
	ldr	x0, [x0, x1, lsl 3]
	str	x0, [sp, 40]
	adrp	x0, c
	add	x1, x0, :lo12:c
	ldrsw	x0, [sp, 28]
	mov	w2, 1
	strb	w2, [x1, x0]
	b	.L9
	ldr	x0, [sp, 40]
	ldr	w2, [x0]
	adrp	x0, c
	add	x1, x0, :lo12:c
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L10
	ldr	x0, [sp, 40]
	ldr	w0, [x0]
	bl	_Z16dfs_visit_secondi
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L11
	ldr	w2, [sp, 28]
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w0, [x0]
	add	w3, w0, 1
	adrp	x1, q
	add	x1, x1, :lo12:q
	str	w3, [x1]
	adrp	x1, p
	add	x1, x1, :lo12:p
	sxtw	x0, w0
	str	w2, [x1, x0, lsl 2]
	adrp	x0, find
	add	x1, x0, :lo12:find
	ldrsw	x0, [sp, 28]
	mov	w2, 1
	strb	w2, [x1, x0]
	nop
	ldp	x29, x30, [sp], 48
	ret
_Z9dfs_firstv:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	mov	x2, 10001
	mov	w1, 0
	adrp	x0, c
	add	x0, x0, :lo12:c
	bl	memset
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	w1, [x0]
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L13
	adrp	x0, a2
	add	x0, x0, :lo12:a2
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, c
	add	x1, x0, :lo12:c
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L14
	adrp	x0, a2
	add	x0, x0, :lo12:a2
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	bl	_Z15dfs_visit_firsti
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L15
	nop
	nop
	ldp	x29, x30, [sp], 32
	ret
_Z10dfs_secondv:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	mov	x2, 10001
	mov	w1, 0
	adrp	x0, c
	add	x0, x0, :lo12:c
	bl	memset
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L17
	adrp	x0, a2
	add	x0, x0, :lo12:a2
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, c
	add	x1, x0, :lo12:c
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L18
	adrp	x0, q
	add	x0, x0, :lo12:q
	str	wzr, [x0]
	mov	x2, 10001
	mov	w1, 0
	adrp	x0, find
	add	x0, x0, :lo12:find
	bl	memset
	adrp	x0, a2
	add	x0, x0, :lo12:a2
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	bl	_Z16dfs_visit_secondi
	str	wzr, [sp, 24]
	b	.L19
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, G
	add	x0, x0, :lo12:G
	sxtw	x1, w1
	ldr	x0, [x0, x1, lsl 3]
	str	x0, [sp, 16]
	b	.L20
	ldr	x0, [sp, 16]
	ldr	w2, [x0]
	adrp	x0, find
	add	x1, x0, :lo12:find
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	beq	.L29
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 8]
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L23
	b	.L22
	nop
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L30
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L26
	b	.L25
	nop
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bne	.L18
	adrp	x0, cow
	add	x0, x0, :lo12:cow
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L27
	adrp	x0, cow
	add	x0, x0, :lo12:cow
	mov	w1, 1
	strb	w1, [x0]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w1, [x0]
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, num
	add	x0, x0, :lo12:num
	str	w1, [x0]
	b	.L18
	adrp	x0, num
	add	x0, x0, :lo12:num
	str	wzr, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L28
	nop
	nop
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, e
	add	x2, x0, :lo12:e
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	bl	_Z7ADJLISTv
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L32
	adrp	x0, a2
	add	x0, x0, :lo12:a2
	ldrsw	x1, [sp, 28]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L33
	bl	_Z9dfs_firstv
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L34
	adrp	x0, a1
	add	x0, x0, :lo12:a1
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, a2
	add	x0, x0, :lo12:a2
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L35
	bl	_Z10dfs_secondv
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret