	.arch armv8-a
	.file	"2442.c"
	.text
	.global	num
	.bss
	.align	2
	.type	num, %object
	.size	num, 4
num:
	.zero	4
	.global	K
	.align	3
	.type	K, %object
	.size	K, 120000
K:
	.zero	120000
	.global	key
	.align	3
	.type	key, %object
	.size	key, 120004
key:
	.zero	120004
	.global	queue
	.align	3
	.type	queue, %object
	.size	queue, 408000
queue:
	.zero	408000
	.global	rear
	.align	3
	.type	rear, %object
	.size	rear, 6120204
rear:
	.zero	6120204
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d%d"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L2
.L7:
	add	x1, sp, 32
	add	x0, sp, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 40]
	adrp	x0, K
	add	x0, x0, :lo12:K
	str	wzr, [x0, 4]
	b	.L3
.L6:
	str	wzr, [sp, 36]
	b	.L4
.L5:
	ldrsw	x2, [sp, 36]
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x2, x0
	lsl	x1, x0, 1
	adrp	x0, queue
	add	x0, x0, :lo12:queue
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L4:
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	blt	.L5
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 5
	adrp	x1, queue
	add	x1, x1, :lo12:queue
	add	x4, x0, x1
	ldr	w0, [sp, 32]
	sxtw	x1, w0
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 2
	mov	x0, x4
	bl	qsort
	adrp	x0, K
	add	x0, x0, :lo12:K
	ldr	w2, [x0, 4]
	adrp	x0, queue
	add	x3, x0, :lo12:queue
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 5
	add	x0, x3, x0
	ldrsh	w0, [x0]
	add	w1, w2, w0
	adrp	x0, K
	add	x0, x0, :lo12:K
	str	w1, [x0, 4]
	adrp	x0, rear
	add	x0, x0, :lo12:rear
	ldrsw	x1, [sp, 40]
	strh	wzr, [x0, x1, lsl 1]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L3:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	ble	.L6
	adrp	x0, num
	add	x0, x0, :lo12:num
	mov	w1, 1
	str	w1, [x0]
	adrp	x0, K
	add	x0, x0, :lo12:K
	ldr	w1, [x0, 4]
	adrp	x0, key
	add	x0, x0, :lo12:key
	str	w1, [x0]
	adrp	x0, rear
	add	x0, x0, :lo12:rear
	mov	w1, 1
	strh	w1, [x0]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 32]
	bl	HEAP
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L7
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.align	2
	.global	ADJUST
	.type	ADJUST, %function
ADJUST:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	adrp	x0, K
	add	x0, x0, :lo12:K
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	strh	w0, [sp, 26]
	ldr	w0, [sp, 12]
	lsl	w0, w0, 1
	str	w0, [sp, 28]
	b	.L10
.L14:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	bge	.L11
	adrp	x0, K
	add	x0, x0, :lo12:K
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w2, w0, 1
	adrp	x0, K
	add	x0, x0, :lo12:K
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	ble	.L11
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L11:
	ldrsh	w1, [sp, 26]
	adrp	x0, K
	add	x0, x0, :lo12:K
	ldrsw	x2, [sp, 28]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	ble	.L15
	ldr	w0, [sp, 28]
	asr	w3, w0, 1
	adrp	x0, K
	add	x0, x0, :lo12:K
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, K
	add	x0, x0, :lo12:K
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	lsl	w0, w0, 1
	str	w0, [sp, 28]
.L10:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	ble	.L14
	b	.L13
.L15:
	nop
.L13:
	ldr	w0, [sp, 28]
	asr	w1, w0, 1
	ldrsh	w2, [sp, 26]
	adrp	x0, K
	add	x0, x0, :lo12:K
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	ADJUST, .-ADJUST
	.section	.rodata
	.align	3
.LC2:
	.string	"%d "
	.text
	.align	2
	.global	HEAP
	.type	HEAP, %function
HEAP:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	adrp	x0, K
	add	x0, x0, :lo12:K
	ldr	w0, [x0, 4]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 24]
	str	w0, [sp, 60]
	b	.L17
.L28:
	str	wzr, [sp, 56]
	b	.L18
.L21:
	adrp	x0, K
	add	x0, x0, :lo12:K
	ldr	w1, [x0, 4]
	adrp	x0, key
	add	x0, x0, :lo12:key
	ldrsw	x2, [sp, 56]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	beq	.L29
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L18:
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w0, [x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	blt	.L21
	b	.L20
.L29:
	nop
.L20:
	adrp	x0, rear
	add	x2, x0, :lo12:rear
	ldrsw	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldrsh	w0, [x0]
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 48]
	b	.L22
.L25:
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w1, [x0]
	ldr	w0, [sp, 48]
	sxth	w3, w0
	adrp	x0, rear
	add	x2, x0, :lo12:rear
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	mov	w1, w3
	strh	w1, [x0]
	mov	w0, 1
	str	w0, [sp, 52]
	b	.L23
.L24:
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w5, [x0]
	adrp	x0, rear
	add	x2, x0, :lo12:rear
	ldrsw	x3, [sp, 52]
	ldrsw	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldrsh	w4, [x2, x0, lsl 1]
	adrp	x0, rear
	add	x2, x0, :lo12:rear
	ldrsw	x3, [sp, 52]
	sxtw	x1, w5
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	mov	w1, w4
	strh	w1, [x2, x0, lsl 1]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L23:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L24
	adrp	x0, key
	add	x0, x0, :lo12:key
	ldrsw	x1, [sp, 56]
	ldr	w3, [x0, x1, lsl 2]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w1, [x0]
	adrp	x0, rear
	add	x4, x0, :lo12:rear
	ldrsw	x5, [sp, 48]
	sxtw	x2, w1
	mov	x0, x2
	lsl	x0, x0, 1
	add	x0, x0, x2
	lsl	x2, x0, 4
	add	x0, x0, x2
	lsl	x0, x0, 1
	add	x0, x0, x5
	ldrsh	w0, [x4, x0, lsl 1]
	and	w0, w0, 65535
	add	w0, w0, 1
	and	w0, w0, 65535
	sxth	w6, w0
	adrp	x0, rear
	add	x4, x0, :lo12:rear
	ldrsw	x5, [sp, 48]
	sxtw	x2, w1
	mov	x0, x2
	lsl	x0, x0, 1
	add	x0, x0, x2
	lsl	x2, x0, 4
	add	x0, x0, x2
	lsl	x0, x0, 1
	add	x0, x0, x5
	mov	w2, w6
	strh	w2, [x4, x0, lsl 1]
	adrp	x0, rear
	add	x2, x0, :lo12:rear
	ldrsw	x4, [sp, 48]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x4
	ldrsh	w0, [x2, x0, lsl 1]
	mov	w1, w0
	adrp	x0, queue
	add	x2, x0, :lo12:queue
	sxtw	x4, w1
	ldrsw	x1, [sp, 48]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x4
	ldrsh	w0, [x2, x0, lsl 1]
	add	w2, w3, w0
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w1, [x0]
	adrp	x0, rear
	add	x3, x0, :lo12:rear
	ldrsw	x4, [sp, 48]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x4
	ldrsh	w0, [x3, x0, lsl 1]
	sub	w1, w0, #1
	adrp	x0, queue
	add	x3, x0, :lo12:queue
	sxtw	x4, w1
	ldrsw	x1, [sp, 48]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x4
	ldrsh	w0, [x3, x0, lsl 1]
	mov	w3, w0
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w1, [x0]
	sub	w2, w2, w3
	adrp	x0, key
	add	x0, x0, :lo12:key
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, num
	add	x0, x0, :lo12:num
	str	w1, [x0]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w0, [x0]
	sub	w1, w0, #1
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w3, [x0]
	adrp	x0, key
	add	x0, x0, :lo12:key
	sxtw	x1, w1
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, K
	add	x0, x0, :lo12:K
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L22:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L25
	adrp	x0, key
	add	x0, x0, :lo12:key
	ldrsw	x1, [sp, 56]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, rear
	add	x3, x0, :lo12:rear
	ldrsw	x4, [sp, 44]
	ldrsw	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x4
	ldrsh	w0, [x3, x0, lsl 1]
	and	w0, w0, 65535
	add	w0, w0, 1
	and	w0, w0, 65535
	sxth	w5, w0
	adrp	x0, rear
	add	x3, x0, :lo12:rear
	ldrsw	x4, [sp, 44]
	ldrsw	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x4
	mov	w1, w5
	strh	w1, [x3, x0, lsl 1]
	adrp	x0, rear
	add	x3, x0, :lo12:rear
	ldrsw	x4, [sp, 44]
	ldrsw	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x4
	ldrsh	w0, [x3, x0, lsl 1]
	mov	w1, w0
	adrp	x0, queue
	add	x3, x0, :lo12:queue
	sxtw	x4, w1
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x4
	ldrsh	w0, [x3, x0, lsl 1]
	add	w2, w2, w0
	adrp	x0, rear
	add	x3, x0, :lo12:rear
	ldrsw	x4, [sp, 44]
	ldrsw	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x4
	ldrsh	w0, [x3, x0, lsl 1]
	sub	w1, w0, #1
	adrp	x0, queue
	add	x3, x0, :lo12:queue
	sxtw	x4, w1
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x4
	ldrsh	w0, [x3, x0, lsl 1]
	sub	w2, w2, w0
	adrp	x0, key
	add	x0, x0, :lo12:key
	ldrsw	x1, [sp, 56]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, key
	add	x0, x0, :lo12:key
	ldrsw	x1, [sp, 56]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, K
	add	x0, x0, :lo12:K
	str	w1, [x0, 4]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w0, [x0]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 56]
	b	.L26
.L27:
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 56]
	bl	ADJUST
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	str	w0, [sp, 56]
.L26:
	ldr	w0, [sp, 56]
	cmp	w0, 0
	bgt	.L27
	adrp	x0, K
	add	x0, x0, :lo12:K
	ldr	w0, [x0, 4]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 60]
	sub	w0, w0, #1
	str	w0, [sp, 60]
.L17:
	ldr	w0, [sp, 60]
	cmp	w0, 1
	bgt	.L28
	mov	w0, 10
	bl	putchar
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	HEAP, .-HEAP
	.align	2
	.global	cmp
	.type	cmp, %function
cmp:
.LFB9:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldrh	w0, [x0]
	strh	w0, [sp, 30]
	ldr	x0, [sp]
	ldrh	w0, [x0]
	strh	w0, [sp, 28]
	ldrsh	w1, [sp, 30]
	ldrsh	w0, [sp, 28]
	cmp	w1, w0
	bge	.L31
	mov	w0, -1
	b	.L32
.L31:
	ldrsh	w1, [sp, 30]
	ldrsh	w0, [sp, 28]
	cmp	w1, w0
	ble	.L33
	mov	w0, 1
	b	.L32
.L33:
	mov	w0, 0
.L32:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	cmp, .-cmp
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
