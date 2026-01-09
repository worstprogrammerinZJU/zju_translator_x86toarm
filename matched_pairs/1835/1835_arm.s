Head:
Nova:
x:
y:
z:
Direct:
Left:
main:
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	add	x0, sp, 132
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 140]
	b	.L2
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	str	wzr, [x0]
	adrp	x0, Head
	add	x0, x0, :lo12:Head
	mov	w1, 2
	str	w1, [x0]
	adrp	x0, x
	add	x0, x0, :lo12:x
	str	wzr, [x0]
	adrp	x0, y
	add	x0, x0, :lo12:y
	str	wzr, [x0]
	adrp	x0, z
	add	x0, x0, :lo12:z
	str	wzr, [x0]
	add	x0, sp, 128
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 136]
	b	.L3
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	add	x0, sp, 124
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x2, sp, 24
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L4
	ldr	w0, [sp, 124]
	bl	forward
	b	.L5
	add	x2, sp, 24
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 124]
	bl	back
	b	.L5
	add	x2, sp, 24
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 124]
	bl	left
	b	.L5
	add	x2, sp, 24
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 124]
	bl	right
	b	.L5
	add	x2, sp, 24
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L9
	ldr	w0, [sp, 124]
	bl	up
	b	.L5
	add	x2, sp, 24
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L5
	ldr	w0, [sp, 124]
	bl	down
	ldr	w0, [sp, 136]
	add	w0, w0, 1
	str	w0, [sp, 136]
	ldr	w0, [sp, 128]
	ldr	w1, [sp, 136]
	cmp	w1, w0
	blt	.L10
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	w1, [x0]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	w2, [x0]
	adrp	x0, z
	add	x0, x0, :lo12:z
	ldr	w3, [x0]
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	ldr	w0, [x0]
	mov	w4, w0
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	printf
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
	ldr	w0, [sp, 132]
	ldr	w1, [sp, 140]
	cmp	w1, w0
	blt	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 144
	ret
reverse:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	add	w1, w0, 3
	mov	w0, 43691
	movk	w0, 0x2aaa, lsl 16
	smull	x0, w1, w0
	lsr	x2, x0, 32
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 1
	add	w0, w0, w2
	lsl	w0, w0, 1
	sub	w2, w1, w0
	mov	w0, w2
	add	sp, sp, 16
	ret
forward:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	ldr	w1, [x0]
	adrp	x0, Direct
	add	x2, x0, :lo12:Direct
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x0]
	ldr	w0, [sp, 12]
	mul	w1, w1, w0
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, x
	add	x0, x0, :lo12:x
	str	w1, [x0]
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	ldr	w1, [x0]
	adrp	x0, Direct
	add	x2, x0, :lo12:Direct
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x0, 4]
	ldr	w0, [sp, 12]
	mul	w1, w1, w0
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, y
	add	x0, x0, :lo12:y
	str	w1, [x0]
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	ldr	w1, [x0]
	adrp	x0, Direct
	add	x2, x0, :lo12:Direct
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x0, 8]
	ldr	w0, [sp, 12]
	mul	w1, w1, w0
	adrp	x0, z
	add	x0, x0, :lo12:z
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, z
	add	x0, x0, :lo12:z
	str	w1, [x0]
	nop
	add	sp, sp, 16
	ret
back:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	ldr	w0, [x0]
	bl	reverse
	mov	w1, w0
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	str	w1, [x0]
	ldr	w0, [sp, 28]
	bl	forward
	nop
	ldp	x29, x30, [sp], 32
	ret
left:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	ldr	w1, [x0]
	adrp	x0, Head
	add	x0, x0, :lo12:Head
	ldr	w3, [x0]
	adrp	x0, Left
	add	x2, x0, :lo12:Left
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	w1, [x2, x0, lsl 2]
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	str	w1, [x0]
	ldr	w0, [sp, 28]
	bl	forward
	nop
	ldp	x29, x30, [sp], 32
	ret
right:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	ldr	w1, [x0]
	adrp	x0, Head
	add	x0, x0, :lo12:Head
	ldr	w3, [x0]
	adrp	x0, Left
	add	x2, x0, :lo12:Left
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	bl	reverse
	mov	w1, w0
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	str	w1, [x0]
	ldr	w0, [sp, 28]
	bl	forward
	nop
	ldp	x29, x30, [sp], 32
	ret
up:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, Head
	add	x0, x0, :lo12:Head
	ldr	w0, [x0]
	str	w0, [sp, 44]
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	ldr	w0, [x0]
	bl	reverse
	mov	w1, w0
	adrp	x0, Head
	add	x0, x0, :lo12:Head
	str	w1, [x0]
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	ldr	w1, [sp, 44]
	str	w1, [x0]
	ldr	w0, [sp, 28]
	bl	forward
	nop
	ldp	x29, x30, [sp], 48
	ret
down:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	ldr	w0, [x0]
	str	w0, [sp, 44]
	adrp	x0, Head
	add	x0, x0, :lo12:Head
	ldr	w0, [x0]
	bl	reverse
	mov	w1, w0
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	str	w1, [x0]
	adrp	x0, Head
	add	x0, x0, :lo12:Head
	ldr	w1, [sp, 44]
	str	w1, [x0]
	ldr	w0, [sp, 28]
	bl	forward
	nop
	ldp	x29, x30, [sp], 48
	ret