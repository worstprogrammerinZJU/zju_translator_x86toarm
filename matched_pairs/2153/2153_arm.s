	.arch armv8-a
	.file	"2153.c"
	.text
	.global	n
	.bss
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	m
	.align	2
	.type	m, %object
	.size	m, 4
m:
	.zero	4
	.global	LiMing
	.align	2
	.type	LiMing, %object
	.size	LiMing, 4
LiMing:
	.zero	4
	.global	score
	.align	3
	.type	score, %object
	.size	score, 40000
score:
	.zero	40000
	.global	hash
	.align	3
	.type	hash, %object
	.size	hash, 40028
hash:
	.zero	40028
	.global	rank
	.align	2
	.type	rank, %object
	.size	rank, 4
rank:
	.zero	4
	.global	s
	.align	2
	.type	s, %object
	.size	s, 4
s:
	.zero	4
	.global	student
	.align	3
	.type	student, %object
	.size	student, 360000
student:
	.zero	360000
	.text
	.align	2
	.global	ELFhash
	.type	ELFhash, %function
ELFhash:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	xzr, [sp, 24]
	b	.L2
.L4:
	ldr	x0, [sp, 24]
	lsl	x1, x0, 4
	ldr	x0, [sp, 8]
	add	x2, x0, 1
	str	x2, [sp, 8]
	ldrb	w0, [x0]
	and	x0, x0, 255
	add	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	and	x0, x0, 4026531840
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L3
	ldr	x0, [sp, 16]
	lsr	x0, x0, 24
	ldr	x1, [sp, 24]
	eor	x0, x1, x0
	str	x0, [sp, 24]
.L3:
	ldr	x0, [sp, 16]
	mvn	x0, x0
	ldr	x1, [sp, 24]
	and	x0, x1, x0
	str	x0, [sp, 24]
.L2:
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L4
	ldr	x0, [sp, 24]
	mov	x1, 38987
	movk	x1, 0x5499, lsl 16
	movk	x1, 0x12b3, lsl 32
	movk	x1, 0xa323, lsl 48
	umulh	x1, x0, x1
	sub	x2, x0, x1
	lsr	x2, x2, 1
	add	x1, x1, x2
	lsr	x1, x1, 13
	mov	x2, 10007
	mul	x1, x1, x2
	sub	x1, x0, x1
	mov	w0, w1
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	ELFhash, .-ELFhash
	.align	2
	.global	find
	.type	find, %function
find:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	ELFhash
	str	w0, [sp, 44]
	adrp	x0, hash
	add	x0, x0, :lo12:hash
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 44]
	b	.L7
.L8:
	adrp	x0, student
	add	x2, x0, :lo12:student
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 32]
	str	w0, [sp, 44]
.L7:
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, student
	add	x1, x1, :lo12:student
	add	x0, x0, x1
	ldr	x1, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	find, .-find
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.align	3
.LC1:
	.string	"%d"
	.align	3
.LC2:
	.string	"%d "
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	mov	x2, 40028
	mov	w1, -1
	adrp	x0, hash
	add	x0, x0, :lo12:hash
	bl	memset
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 60]
	b	.L11
.L16:
	ldrsw	x1, [sp, 60]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, student
	add	x1, x1, :lo12:student
	add	x0, x0, x1
	bl	gets
	adrp	x0, student
	add	x2, x0, :lo12:student
	ldrsw	x1, [sp, 60]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	mov	w1, -1
	str	w1, [x0, 32]
	ldrsw	x1, [sp, 60]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, student
	add	x1, x1, :lo12:student
	add	x0, x0, x1
	bl	ELFhash
	str	w0, [sp, 56]
	adrp	x0, hash
	add	x0, x0, :lo12:hash
	ldrsw	x1, [sp, 56]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 48]
	ldr	w0, [sp, 48]
	cmn	w0, #1
	bne	.L14
	adrp	x0, hash
	add	x0, x0, :lo12:hash
	ldrsw	x1, [sp, 56]
	ldr	w2, [sp, 60]
	str	w2, [x0, x1, lsl 2]
	b	.L13
.L15:
	ldr	w1, [sp, 48]
	adrp	x0, student
	add	x2, x0, :lo12:student
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 32]
	str	w0, [sp, 48]
.L14:
	ldr	w1, [sp, 48]
	adrp	x0, student
	add	x2, x0, :lo12:student
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 32]
	cmn	w0, #1
	bne	.L15
	ldr	w1, [sp, 48]
	adrp	x0, student
	add	x2, x0, :lo12:student
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [sp, 60]
	str	w1, [x0, 32]
.L13:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L11:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L16
	adrp	x0, m
	add	x1, x0, :lo12:m
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 60]
	b	.L17
.L23:
	str	wzr, [sp, 56]
	b	.L18
.L19:
	add	x0, sp, 48
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	add	x0, sp, 16
	bl	gets
	add	x0, sp, 16
	bl	find
	str	w0, [sp, 52]
	adrp	x0, score
	add	x0, x0, :lo12:score
	ldrsw	x1, [sp, 52]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 48]
	add	w2, w1, w0
	adrp	x0, score
	add	x0, x0, :lo12:score
	ldrsw	x1, [sp, 52]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L18:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	blt	.L19
	adrp	x0, LiMing
	add	x0, x0, :lo12:LiMing
	ldr	w1, [x0]
	adrp	x0, score
	add	x0, x0, :lo12:score
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, s
	add	x0, x0, :lo12:s
	str	w1, [x0]
	str	wzr, [sp, 56]
	adrp	x0, rank
	add	x0, x0, :lo12:rank
	mov	w1, 1
	str	w1, [x0]
	b	.L20
.L22:
	adrp	x0, score
	add	x0, x0, :lo12:score
	ldrsw	x1, [sp, 56]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L21
	adrp	x0, rank
	add	x0, x0, :lo12:rank
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, rank
	add	x0, x0, :lo12:rank
	str	w1, [x0]
.L21:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L20:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	blt	.L22
	adrp	x0, rank
	add	x0, x0, :lo12:rank
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L17:
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L23
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
