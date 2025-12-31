	.arch armv8-a
	.file	"1406-stone-game-iii.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Alice"
	.text
	.align	2
	.global	stoneGameIII
	.type	stoneGameIII, %function
stoneGameIII:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	.cfi_def_cfa_register 29
	str	x19, [sp, 16]
	sub	sp, sp, #16
	.cfi_offset 19, -80
	str	x0, [x29, 40]
	str	w1, [x29, 36]
	mov	x0, sp
	mov	x19, x0
	ldr	w0, [x29, 36]
	str	w0, [x29, 76]
	ldr	w0, [x29, 76]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 64]
	sxtw	x1, w0
	mov	x8, x1
	mov	x9, 0
	lsr	x1, x8, 59
	lsl	x5, x9, 5
	orr	x5, x1, x5
	lsl	x4, x8, 5
	sxtw	x1, w0
	mov	x6, x1
	mov	x7, 0
	lsr	x1, x6, 59
	lsl	x3, x7, 5
	orr	x3, x1, x3
	lsl	x2, x6, 5
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
.L2:
	cmp	sp, x1
	beq	.L3
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L2
.L3:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L4
	str	xzr, [sp, 1024]
.L4:
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 56]
	str	wzr, [x29, 92]
	b	.L5
.L6:
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 92]
	mov	w2, 13824
	movk	w2, 0xc465, lsl 16
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 92]
	add	w0, w0, 1
	str	w0, [x29, 92]
.L5:
	ldr	w1, [x29, 92]
	ldr	w0, [x29, 76]
	cmp	w1, w0
	blt	.L6
	ldr	w0, [x29, 76]
	sub	w0, w0, #1
	str	w0, [x29, 88]
	b	.L7
.L13:
	str	wzr, [x29, 84]
	str	wzr, [x29, 80]
	b	.L8
.L12:
	ldr	w1, [x29, 88]
	ldr	w0, [x29, 80]
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [x29, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [x29, 84]
	add	w0, w1, w0
	str	w0, [x29, 84]
	ldr	w1, [x29, 88]
	ldr	w0, [x29, 80]
	add	w0, w1, w0
	add	w0, w0, 1
	ldr	w1, [x29, 76]
	cmp	w1, w0
	ble	.L9
	ldr	w1, [x29, 88]
	ldr	w0, [x29, 80]
	add	w0, w1, w0
	add	w1, w0, 1
	ldr	x0, [x29, 56]
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	b	.L10
.L9:
	mov	w0, 0
.L10:
	ldr	w1, [x29, 84]
	sub	w1, w1, w0
	ldr	x0, [x29, 56]
	ldrsw	x2, [x29, 88]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	csel	w2, w1, w0, ge
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 88]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 80]
	add	w0, w0, 1
	str	w0, [x29, 80]
.L8:
	ldr	w0, [x29, 80]
	cmp	w0, 2
	bgt	.L11
	ldr	w1, [x29, 88]
	ldr	w0, [x29, 80]
	add	w0, w1, w0
	ldr	w1, [x29, 76]
	cmp	w1, w0
	bgt	.L12
.L11:
	ldr	w0, [x29, 88]
	sub	w0, w0, #1
	str	w0, [x29, 88]
.L7:
	ldr	w0, [x29, 88]
	cmp	w0, 0
	bge	.L13
	mov	x0, 6
	bl	malloc
	str	x0, [x29, 48]
	ldr	x0, [x29, 56]
	ldr	w0, [x0]
	cmp	w0, 0
	ble	.L14
	ldr	x2, [x29, 48]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	w2, [x1]
	str	w2, [x0]
	ldrh	w1, [x1, 4]
	strh	w1, [x0, 4]
	b	.L15
.L14:
	ldr	x0, [x29, 56]
	ldr	w0, [x0]
	cmp	w0, 0
	bge	.L16
	ldr	x0, [x29, 48]
	mov	w1, 28482
	movk	w1, 0x62, lsl 16
	str	w1, [x0]
	b	.L15
.L16:
	ldr	x0, [x29, 48]
	mov	w1, 26964
	movk	w1, 0x65, lsl 16
	str	w1, [x0]
.L15:
	ldr	x0, [x29, 48]
	mov	sp, x19
	mov	sp, x29
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE0:
	.size	stoneGameIII, .-stoneGameIII
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
