	.arch armv8-a
	.file	"3083.c"
	.text
	.global	w
	.bss
	.align	2
	.type	w, %object
	.size	w, 4
w:
	.zero	4
	.global	h
	.align	2
	.type	h, %object
	.size	h, 4
h:
	.zero	4
	.global	map
	.align	3
	.type	map, %object
	.size	map, 1600
map:
	.zero	1600
	.global	path
	.data
	.align	3
	.type	path, %object
	.size	path, 32
path:
	.word	0
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	1
	.word	1
	.word	0
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.text
	.align	2
	.global	bfs
	.type	bfs, %function
bfs:
.LFB0:
	.cfi_startproc
	mov	x12, 19248
	sub	sp, sp, x12
	.cfi_def_cfa_offset 19248
	stp	x29, x30, [sp]
	.cfi_offset 29, -19248
	.cfi_offset 30, -19240
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	add	x0, sp, 4096
	add	x0, x0, 2336
	mov	x1, 12800
	mov	x2, x1
	mov	w1, 0
	bl	memset
	ldr	w0, [sp, 28]
	str	w0, [sp, 6432]
	ldr	w0, [sp, 24]
	str	w0, [sp, 6436]
	add	x0, sp, 16384
	str	wzr, [x0, 2860]
	mov	w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 2856]
	add	x0, sp, 32
	mov	x1, 6400
	mov	x2, x1
	mov	w1, 0
	bl	memset
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 32
	mov	w2, 1
	str	w2, [x1, x0]
	b	.L2
.L11:
	add	x0, sp, 16384
	ldrsw	x0, [x0, 2860]
	lsl	x0, x0, 3
	add	x1, sp, 4096
	add	x1, x1, 2336
	ldr	w0, [x1, x0]
	add	x1, sp, 16384
	str	w0, [x1, 2852]
	add	x0, sp, 16384
	ldrsw	x0, [x0, 2860]
	lsl	x0, x0, 3
	add	x1, sp, 4096
	add	x1, x1, 2340
	ldr	w0, [x1, x0]
	add	x1, sp, 16384
	str	w0, [x1, 2848]
	add	x0, sp, 16384
	ldr	w0, [x0, 2852]
	cmp	w0, 0
	ble	.L3
	add	x0, sp, 16384
	ldr	w0, [x0, 2852]
	sub	w1, w0, #1
	adrp	x0, map
	add	x3, x0, :lo12:map
	add	x0, sp, 16384
	ldrsw	x2, [x0, 2848]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 35
	beq	.L3
	add	x0, sp, 16384
	ldr	w0, [x0, 2852]
	sub	w0, w0, #1
	add	x1, sp, 16384
	ldrsw	x2, [x1, 2848]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	cmp	w0, 0
	beq	.L4
	add	x0, sp, 16384
	ldr	w0, [x0, 2852]
	sub	w0, w0, #1
	add	x1, sp, 16384
	ldrsw	x2, [x1, 2848]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w2, [x1, x0]
	add	x0, sp, 16384
	ldrsw	x3, [x0, 2848]
	add	x0, sp, 16384
	ldrsw	x1, [x0, 2852]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	add	w0, w0, 1
	cmp	w2, w0
	ble	.L3
.L4:
	add	x0, sp, 16384
	ldr	w0, [x0, 2852]
	sub	w2, w0, #1
	add	x0, sp, 16384
	ldrsw	x0, [x0, 2856]
	lsl	x0, x0, 3
	add	x1, sp, 4096
	add	x1, x1, 2336
	str	w2, [x1, x0]
	add	x0, sp, 16384
	ldrsw	x0, [x0, 2856]
	lsl	x0, x0, 3
	add	x1, sp, 4096
	add	x1, x1, 2340
	add	x2, sp, 16384
	ldr	w2, [x2, 2848]
	str	w2, [x1, x0]
	add	x0, sp, 16384
	ldrsw	x2, [x0, 2848]
	add	x0, sp, 16384
	ldrsw	x1, [x0, 2852]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	add	x1, sp, 16384
	ldr	w1, [x1, 2852]
	sub	w1, w1, #1
	add	w2, w0, 1
	add	x0, sp, 16384
	ldrsw	x3, [x0, 2848]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	add	x0, sp, 16384
	ldr	w0, [x0, 2856]
	add	w0, w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 2856]
.L3:
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	w0, [x0]
	sub	w0, w0, #1
	add	x1, sp, 16384
	ldr	w1, [x1, 2852]
	cmp	w1, w0
	bge	.L5
	add	x0, sp, 16384
	ldr	w0, [x0, 2852]
	add	w1, w0, 1
	adrp	x0, map
	add	x3, x0, :lo12:map
	add	x0, sp, 16384
	ldrsw	x2, [x0, 2848]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 35
	beq	.L5
	add	x0, sp, 16384
	ldr	w0, [x0, 2852]
	add	w0, w0, 1
	add	x1, sp, 16384
	ldrsw	x2, [x1, 2848]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	cmp	w0, 0
	beq	.L6
	add	x0, sp, 16384
	ldr	w0, [x0, 2852]
	add	w0, w0, 1
	add	x1, sp, 16384
	ldrsw	x2, [x1, 2848]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w2, [x1, x0]
	add	x0, sp, 16384
	ldrsw	x3, [x0, 2848]
	add	x0, sp, 16384
	ldrsw	x1, [x0, 2852]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	add	w0, w0, 1
	cmp	w2, w0
	ble	.L5
.L6:
	add	x0, sp, 16384
	ldr	w0, [x0, 2852]
	add	w2, w0, 1
	add	x0, sp, 16384
	ldrsw	x0, [x0, 2856]
	lsl	x0, x0, 3
	add	x1, sp, 4096
	add	x1, x1, 2336
	str	w2, [x1, x0]
	add	x0, sp, 16384
	ldrsw	x0, [x0, 2856]
	lsl	x0, x0, 3
	add	x1, sp, 4096
	add	x1, x1, 2340
	add	x2, sp, 16384
	ldr	w2, [x2, 2848]
	str	w2, [x1, x0]
	add	x0, sp, 16384
	ldrsw	x2, [x0, 2848]
	add	x0, sp, 16384
	ldrsw	x1, [x0, 2852]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	add	x1, sp, 16384
	ldr	w1, [x1, 2852]
	add	w1, w1, 1
	add	w2, w0, 1
	add	x0, sp, 16384
	ldrsw	x3, [x0, 2848]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	add	x0, sp, 16384
	ldr	w0, [x0, 2856]
	add	w0, w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 2856]
.L5:
	add	x0, sp, 16384
	ldr	w0, [x0, 2848]
	cmp	w0, 0
	ble	.L7
	add	x0, sp, 16384
	ldr	w0, [x0, 2848]
	sub	w1, w0, #1
	adrp	x0, map
	add	x3, x0, :lo12:map
	sxtw	x2, w1
	add	x0, sp, 16384
	ldrsw	x1, [x0, 2852]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 35
	beq	.L7
	add	x0, sp, 16384
	ldr	w0, [x0, 2848]
	sub	w0, w0, #1
	sxtw	x2, w0
	add	x0, sp, 16384
	ldrsw	x1, [x0, 2852]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	cmp	w0, 0
	beq	.L8
	add	x0, sp, 16384
	ldr	w0, [x0, 2848]
	sub	w0, w0, #1
	sxtw	x2, w0
	add	x0, sp, 16384
	ldrsw	x1, [x0, 2852]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w2, [x1, x0]
	add	x0, sp, 16384
	ldrsw	x3, [x0, 2848]
	add	x0, sp, 16384
	ldrsw	x1, [x0, 2852]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	add	w0, w0, 1
	cmp	w2, w0
	ble	.L7
.L8:
	add	x0, sp, 16384
	ldrsw	x0, [x0, 2856]
	lsl	x0, x0, 3
	add	x1, sp, 4096
	add	x1, x1, 2336
	add	x2, sp, 16384
	ldr	w2, [x2, 2852]
	str	w2, [x1, x0]
	add	x0, sp, 16384
	ldr	w0, [x0, 2848]
	sub	w2, w0, #1
	add	x0, sp, 16384
	ldrsw	x0, [x0, 2856]
	lsl	x0, x0, 3
	add	x1, sp, 4096
	add	x1, x1, 2340
	str	w2, [x1, x0]
	add	x0, sp, 16384
	ldrsw	x2, [x0, 2848]
	add	x0, sp, 16384
	ldrsw	x1, [x0, 2852]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	add	x1, sp, 16384
	ldr	w1, [x1, 2848]
	sub	w1, w1, #1
	add	w2, w0, 1
	sxtw	x3, w1
	add	x0, sp, 16384
	ldrsw	x1, [x0, 2852]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	add	x0, sp, 16384
	ldr	w0, [x0, 2856]
	add	w0, w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 2856]
.L7:
	adrp	x0, w
	add	x0, x0, :lo12:w
	ldr	w0, [x0]
	sub	w0, w0, #1
	add	x1, sp, 16384
	ldr	w1, [x1, 2848]
	cmp	w1, w0
	bge	.L9
	add	x0, sp, 16384
	ldr	w0, [x0, 2848]
	add	w1, w0, 1
	adrp	x0, map
	add	x3, x0, :lo12:map
	sxtw	x2, w1
	add	x0, sp, 16384
	ldrsw	x1, [x0, 2852]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 35
	beq	.L9
	add	x0, sp, 16384
	ldr	w0, [x0, 2848]
	add	w0, w0, 1
	sxtw	x2, w0
	add	x0, sp, 16384
	ldrsw	x1, [x0, 2852]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	cmp	w0, 0
	beq	.L10
	add	x0, sp, 16384
	ldr	w0, [x0, 2848]
	add	w0, w0, 1
	sxtw	x2, w0
	add	x0, sp, 16384
	ldrsw	x1, [x0, 2852]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w2, [x1, x0]
	add	x0, sp, 16384
	ldrsw	x3, [x0, 2848]
	add	x0, sp, 16384
	ldrsw	x1, [x0, 2852]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	add	w0, w0, 1
	cmp	w2, w0
	ble	.L9
.L10:
	add	x0, sp, 16384
	ldrsw	x0, [x0, 2856]
	lsl	x0, x0, 3
	add	x1, sp, 4096
	add	x1, x1, 2336
	add	x2, sp, 16384
	ldr	w2, [x2, 2852]
	str	w2, [x1, x0]
	add	x0, sp, 16384
	ldr	w0, [x0, 2848]
	add	w2, w0, 1
	add	x0, sp, 16384
	ldrsw	x0, [x0, 2856]
	lsl	x0, x0, 3
	add	x1, sp, 4096
	add	x1, x1, 2340
	str	w2, [x1, x0]
	add	x0, sp, 16384
	ldrsw	x2, [x0, 2848]
	add	x0, sp, 16384
	ldrsw	x1, [x0, 2852]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	add	x1, sp, 16384
	ldr	w1, [x1, 2848]
	add	w1, w1, 1
	add	w2, w0, 1
	sxtw	x3, w1
	add	x0, sp, 16384
	ldrsw	x1, [x0, 2852]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	add	x0, sp, 16384
	ldr	w0, [x0, 2856]
	add	w0, w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 2856]
.L9:
	add	x0, sp, 16384
	ldr	w0, [x0, 2860]
	add	w0, w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 2860]
.L2:
	add	x0, sp, 16384
	ldr	w1, [x0, 2860]
	add	x0, sp, 16384
	ldr	w0, [x0, 2856]
	cmp	w1, w0
	blt	.L11
	add	x0, sp, 16384
	str	wzr, [x0, 2852]
	b	.L12
.L19:
	add	x0, sp, 16384
	str	wzr, [x0, 2848]
	b	.L13
.L16:
	adrp	x0, map
	add	x3, x0, :lo12:map
	add	x0, sp, 16384
	ldrsw	x2, [x0, 2848]
	add	x0, sp, 16384
	ldrsw	x1, [x0, 2852]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 69
	beq	.L20
	add	x0, sp, 16384
	ldr	w0, [x0, 2848]
	add	w0, w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 2848]
.L13:
	adrp	x0, w
	add	x0, x0, :lo12:w
	ldr	w0, [x0]
	add	x1, sp, 16384
	ldr	w1, [x1, 2848]
	cmp	w1, w0
	blt	.L16
	b	.L15
.L20:
	nop
.L15:
	adrp	x0, w
	add	x0, x0, :lo12:w
	ldr	w0, [x0]
	add	x1, sp, 16384
	ldr	w1, [x1, 2848]
	cmp	w1, w0
	blt	.L21
	add	x0, sp, 16384
	ldr	w0, [x0, 2852]
	add	w0, w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 2852]
.L12:
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	w0, [x0]
	add	x1, sp, 16384
	ldr	w1, [x1, 2852]
	cmp	w1, w0
	blt	.L19
	b	.L18
.L21:
	nop
.L18:
	add	x0, sp, 16384
	ldrsw	x2, [x0, 2848]
	add	x0, sp, 16384
	ldrsw	x1, [x0, 2852]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	nop
	ldp	x29, x30, [sp]
	mov	x12, 19248
	add	sp, sp, x12
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	bfs, .-bfs
	.align	2
	.global	ok
	.type	ok, %function
ok:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	blt	.L23
	ldr	w0, [sp, 8]
	cmp	w0, 0
	blt	.L23
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	w0, [x0]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	bge	.L23
	adrp	x0, w
	add	x0, x0, :lo12:w
	ldr	w0, [x0]
	ldr	w1, [sp, 8]
	cmp	w1, w0
	blt	.L24
.L23:
	mov	w0, 0
	b	.L25
.L24:
	adrp	x0, map
	add	x3, x0, :lo12:map
	ldrsw	x2, [sp, 8]
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 35
	bne	.L26
	mov	w0, 0
	b	.L25
.L26:
	mov	w0, 1
.L25:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	ok, .-ok
	.section	.rodata
	.align	3
.LC1:
	.string	"%d "
	.text
	.align	2
	.global	left
	.type	left, %function
left:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	mov	w0, 1
	str	w0, [sp, 56]
	mov	w0, 1
	str	w0, [sp, 52]
	b	.L28
.L30:
	ldr	w0, [sp, 52]
	add	w0, w0, 3
	negs	w1, w0
	and	w0, w0, 3
	and	w1, w1, 3
	csneg	w0, w0, w1, mi
	str	w0, [sp, 60]
.L29:
	adrp	x0, path
	add	x1, x0, :lo12:path
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	add	w0, w1, w0
	str	w0, [sp, 48]
	adrp	x0, path
	add	x1, x0, :lo12:path
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w0, [x0, 4]
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	negs	w1, w0
	and	w0, w0, 3
	and	w1, w1, 3
	csneg	w0, w0, w1, mi
	str	w0, [sp, 60]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 48]
	bl	ok
	cmp	w0, 0
	beq	.L29
	ldr	w0, [sp, 48]
	str	w0, [sp, 28]
	ldr	w0, [sp, 44]
	str	w0, [sp, 24]
	ldr	w0, [sp, 60]
	add	w0, w0, 3
	negs	w1, w0
	and	w0, w0, 3
	and	w1, w1, 3
	csneg	w0, w0, w1, mi
	str	w0, [sp, 52]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L28:
	adrp	x0, map
	add	x3, x0, :lo12:map
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 69
	bne	.L30
	ldr	w1, [sp, 56]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	left, .-left
	.align	2
	.global	right
	.type	right, %function
right:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	mov	w0, 1
	str	w0, [sp, 56]
	mov	w0, 1
	str	w0, [sp, 52]
	b	.L32
.L34:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	negs	w1, w0
	and	w0, w0, 3
	and	w1, w1, 3
	csneg	w0, w0, w1, mi
	str	w0, [sp, 60]
.L33:
	adrp	x0, path
	add	x1, x0, :lo12:path
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	add	w0, w1, w0
	str	w0, [sp, 48]
	adrp	x0, path
	add	x1, x0, :lo12:path
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w0, [x0, 4]
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 60]
	add	w0, w0, 3
	negs	w1, w0
	and	w0, w0, 3
	and	w1, w1, 3
	csneg	w0, w0, w1, mi
	str	w0, [sp, 60]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 48]
	bl	ok
	cmp	w0, 0
	beq	.L33
	ldr	w0, [sp, 48]
	str	w0, [sp, 28]
	ldr	w0, [sp, 44]
	str	w0, [sp, 24]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	negs	w1, w0
	and	w0, w0, 3
	and	w1, w1, 3
	csneg	w0, w0, w1, mi
	str	w0, [sp, 52]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L32:
	adrp	x0, map
	add	x3, x0, :lo12:map
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 69
	bne	.L34
	ldr	w1, [sp, 56]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	right, .-right
	.section	.rodata
	.align	3
.LC2:
	.string	"%d"
	.align	3
.LC3:
	.string	"%d%d"
	.align	3
.LC4:
	.string	"%s"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L36
.L47:
	adrp	x0, h
	add	x2, x0, :lo12:h
	adrp	x0, w
	add	x1, x0, :lo12:w
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__isoc99_scanf
	str	wzr, [sp, 24]
	b	.L37
.L38:
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	adrp	x1, map
	add	x1, x1, :lo12:map
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L37:
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L38
	str	wzr, [sp, 24]
	b	.L39
.L46:
	str	wzr, [sp, 20]
	b	.L40
.L43:
	adrp	x0, map
	add	x3, x0, :lo12:map
	ldrsw	x2, [sp, 20]
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 83
	beq	.L49
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L40:
	adrp	x0, w
	add	x0, x0, :lo12:w
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	blt	.L43
	b	.L42
.L49:
	nop
.L42:
	adrp	x0, w
	add	x0, x0, :lo12:w
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	blt	.L50
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L39:
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L46
	b	.L45
.L50:
	nop
.L45:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	bl	left
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	bl	right
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	bl	bfs
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L36:
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L47
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
