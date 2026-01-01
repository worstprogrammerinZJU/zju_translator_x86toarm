	.arch armv8-a
	.file	"2247.c"
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"%d"
	.align	3
.LC2:
	.string	"The %d%s humble number is %d.\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	mov	w0, -1
	str	w0, [sp, 52]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 24
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 96]
	ldr	x0, [sp, 96]
	mov	w1, 1
	str	w1, [x0]
	ldr	x0, [sp, 96]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 96]
	str	x0, [sp, 88]
	ldr	x0, [sp, 96]
	str	x0, [sp, 40]
	mov	w0, 1
	str	w0, [sp, 108]
	b	.L2
.L25:
	ldr	x0, [sp, 96]
	str	x0, [sp, 56]
	ldr	x0, [sp, 96]
	ldr	w2, [x0]
	mov	w0, 43691
	movk	w0, 0xaaaa, lsl 16
	umull	x0, w2, w0
	lsr	x0, x0, 32
	lsr	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	beq	.L3
	ldr	x0, [sp, 96]
	ldr	w2, [x0]
	mov	w0, 52429
	movk	w0, 0xcccc, lsl 16
	umull	x0, w2, w0
	lsr	x0, x0, 32
	lsr	w1, w0, 2
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	beq	.L3
	ldr	x0, [sp, 96]
	ldr	w2, [x0]
	mov	w0, 18725
	movk	w0, 0x2492, lsl 16
	umull	x0, w2, w0
	lsr	x0, x0, 32
	sub	w1, w2, w0
	lsr	w1, w1, 1
	add	w0, w1, w0
	lsr	w1, w0, 2
	mov	w0, w1
	lsl	w0, w0, 3
	sub	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	beq	.L3
	ldr	x0, [sp, 96]
	ldr	w1, [x0]
	ldr	w0, [sp, 52]
	lsr	w0, w0, 1
	cmp	w1, w0
	bhi	.L3
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 80]
	ldr	x0, [sp, 96]
	ldr	w0, [x0]
	lsl	w1, w0, 1
	ldr	x0, [sp, 80]
	str	w1, [x0]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	str	x0, [sp, 72]
	b	.L4
.L6:
	ldr	x0, [sp, 72]
	str	x0, [sp, 64]
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 8]
	str	x0, [sp, 72]
.L4:
	ldr	x0, [sp, 72]
	cmp	x0, 0
	beq	.L5
	ldr	x0, [sp, 72]
	ldr	w1, [x0]
	ldr	x0, [sp, 80]
	ldr	w0, [x0]
	cmp	w1, w0
	bcc	.L6
.L5:
	ldr	x0, [sp, 72]
	cmp	x0, 0
	bne	.L7
	ldr	x0, [sp, 88]
	ldr	x1, [sp, 80]
	str	x1, [x0, 8]
	ldr	x0, [sp, 80]
	str	x0, [sp, 88]
	ldr	x0, [sp, 80]
	str	xzr, [x0, 8]
	b	.L8
.L7:
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 80]
	str	x1, [x0, 8]
	ldr	x0, [sp, 80]
	ldr	x1, [sp, 72]
	str	x1, [x0, 8]
.L8:
	ldr	x0, [sp, 80]
	str	x0, [sp, 56]
.L3:
	ldr	x0, [sp, 96]
	ldr	w2, [x0]
	mov	w0, 52429
	movk	w0, 0xcccc, lsl 16
	umull	x0, w2, w0
	lsr	x0, x0, 32
	lsr	w1, w0, 2
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	beq	.L9
	ldr	x0, [sp, 96]
	ldr	w2, [x0]
	mov	w0, 18725
	movk	w0, 0x2492, lsl 16
	umull	x0, w2, w0
	lsr	x0, x0, 32
	sub	w1, w2, w0
	lsr	w1, w1, 1
	add	w0, w1, w0
	lsr	w1, w0, 2
	mov	w0, w1
	lsl	w0, w0, 3
	sub	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	beq	.L9
	ldr	x0, [sp, 96]
	ldr	w1, [x0]
	ldr	w2, [sp, 52]
	mov	w0, 43691
	movk	w0, 0xaaaa, lsl 16
	umull	x0, w2, w0
	lsr	x0, x0, 32
	lsr	w0, w0, 1
	cmp	w1, w0
	bhi	.L9
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 80]
	ldr	x0, [sp, 96]
	ldr	w1, [x0]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w1, w0, w1
	ldr	x0, [sp, 80]
	str	w1, [x0]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	str	x0, [sp, 72]
	b	.L10
.L12:
	ldr	x0, [sp, 72]
	str	x0, [sp, 64]
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 8]
	str	x0, [sp, 72]
.L10:
	ldr	x0, [sp, 72]
	cmp	x0, 0
	beq	.L11
	ldr	x0, [sp, 72]
	ldr	w1, [x0]
	ldr	x0, [sp, 80]
	ldr	w0, [x0]
	cmp	w1, w0
	bcc	.L12
.L11:
	ldr	x0, [sp, 72]
	cmp	x0, 0
	bne	.L13
	ldr	x0, [sp, 88]
	ldr	x1, [sp, 80]
	str	x1, [x0, 8]
	ldr	x0, [sp, 80]
	str	x0, [sp, 88]
	ldr	x0, [sp, 80]
	str	xzr, [x0, 8]
	b	.L14
.L13:
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 80]
	str	x1, [x0, 8]
	ldr	x0, [sp, 80]
	ldr	x1, [sp, 72]
	str	x1, [x0, 8]
.L14:
	ldr	x0, [sp, 80]
	str	x0, [sp, 56]
.L9:
	ldr	x0, [sp, 96]
	ldr	w2, [x0]
	mov	w0, 18725
	movk	w0, 0x2492, lsl 16
	umull	x0, w2, w0
	lsr	x0, x0, 32
	sub	w1, w2, w0
	lsr	w1, w1, 1
	add	w0, w1, w0
	lsr	w1, w0, 2
	mov	w0, w1
	lsl	w0, w0, 3
	sub	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	beq	.L15
	ldr	x0, [sp, 96]
	ldr	w1, [x0]
	ldr	w2, [sp, 52]
	mov	w0, 52429
	movk	w0, 0xcccc, lsl 16
	umull	x0, w2, w0
	lsr	x0, x0, 32
	lsr	w0, w0, 2
	cmp	w1, w0
	bhi	.L15
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 80]
	ldr	x0, [sp, 96]
	ldr	w1, [x0]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w1, w0, w1
	ldr	x0, [sp, 80]
	str	w1, [x0]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	str	x0, [sp, 72]
	b	.L16
.L18:
	ldr	x0, [sp, 72]
	str	x0, [sp, 64]
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 8]
	str	x0, [sp, 72]
.L16:
	ldr	x0, [sp, 72]
	cmp	x0, 0
	beq	.L17
	ldr	x0, [sp, 72]
	ldr	w1, [x0]
	ldr	x0, [sp, 80]
	ldr	w0, [x0]
	cmp	w1, w0
	bcc	.L18
.L17:
	ldr	x0, [sp, 72]
	cmp	x0, 0
	bne	.L19
	ldr	x0, [sp, 88]
	ldr	x1, [sp, 80]
	str	x1, [x0, 8]
	ldr	x0, [sp, 80]
	str	x0, [sp, 88]
	ldr	x0, [sp, 80]
	str	xzr, [x0, 8]
	b	.L15
.L19:
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 80]
	str	x1, [x0, 8]
	ldr	x0, [sp, 80]
	ldr	x1, [sp, 72]
	str	x1, [x0, 8]
.L15:
	ldr	x0, [sp, 96]
	ldr	w2, [x0]
	ldr	w0, [sp, 52]
	mov	w1, 18725
	movk	w1, 0x2492, lsl 16
	umull	x1, w0, w1
	lsr	x1, x1, 32
	sub	w0, w0, w1
	lsr	w0, w0, 1
	add	w0, w0, w1
	lsr	w0, w0, 2
	cmp	w2, w0
	bhi	.L20
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 80]
	ldr	x0, [sp, 96]
	ldr	w1, [x0]
	mov	w0, w1
	lsl	w0, w0, 3
	sub	w1, w0, w1
	ldr	x0, [sp, 80]
	str	w1, [x0]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	str	x0, [sp, 72]
	b	.L21
.L23:
	ldr	x0, [sp, 72]
	str	x0, [sp, 64]
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 8]
	str	x0, [sp, 72]
.L21:
	ldr	x0, [sp, 72]
	cmp	x0, 0
	beq	.L22
	ldr	x0, [sp, 72]
	ldr	w1, [x0]
	ldr	x0, [sp, 80]
	ldr	w0, [x0]
	cmp	w1, w0
	bcc	.L23
.L22:
	ldr	x0, [sp, 72]
	cmp	x0, 0
	bne	.L24
	ldr	x0, [sp, 88]
	ldr	x1, [sp, 80]
	str	x1, [x0, 8]
	ldr	x0, [sp, 80]
	str	x0, [sp, 88]
	ldr	x0, [sp, 80]
	str	xzr, [x0, 8]
	b	.L20
.L24:
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 80]
	str	x1, [x0, 8]
	ldr	x0, [sp, 80]
	ldr	x1, [sp, 72]
	str	x1, [x0, 8]
.L20:
	ldr	x0, [sp, 96]
	ldr	x0, [x0, 8]
	str	x0, [sp, 96]
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
.L2:
	ldr	w1, [sp, 108]
	mov	w0, 4816
	cmp	w1, w0
	ble	.L25
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	b	.L26
.L33:
	ldr	w2, [sp, 36]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 2
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	sub	w1, w2, w0
	cmp	w1, 1
	bne	.L27
	ldr	w1, [sp, 36]
	mov	w0, 34079
	movk	w0, 0x51eb, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 5
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 100
	mul	w0, w0, w2
	sub	w0, w1, w0
	cmp	w0, 11
	beq	.L27
	mov	w0, 1
	str	w0, [sp, 104]
	b	.L28
.L27:
	ldr	w2, [sp, 36]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 2
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	sub	w1, w2, w0
	cmp	w1, 2
	bne	.L29
	ldr	w1, [sp, 36]
	mov	w0, 34079
	movk	w0, 0x51eb, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 5
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 100
	mul	w0, w0, w2
	sub	w0, w1, w0
	cmp	w0, 12
	beq	.L29
	mov	w0, 2
	str	w0, [sp, 104]
	b	.L28
.L29:
	ldr	w2, [sp, 36]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 2
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	sub	w1, w2, w0
	cmp	w1, 3
	bne	.L30
	ldr	w1, [sp, 36]
	mov	w0, 34079
	movk	w0, 0x51eb, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 5
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 100
	mul	w0, w0, w2
	sub	w0, w1, w0
	cmp	w0, 13
	beq	.L30
	mov	w0, 3
	str	w0, [sp, 104]
	b	.L28
.L30:
	str	wzr, [sp, 104]
.L28:
	ldr	x0, [sp, 40]
	str	x0, [sp, 80]
	mov	w0, 1
	str	w0, [sp, 108]
	b	.L31
.L32:
	ldr	x0, [sp, 80]
	ldr	x0, [x0, 8]
	str	x0, [sp, 80]
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
.L31:
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 108]
	cmp	w1, w0
	blt	.L32
	ldr	w4, [sp, 36]
	add	x2, sp, 24
	ldrsw	x1, [sp, 104]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	add	x1, x2, x0
	ldr	x0, [sp, 80]
	ldr	w0, [x0]
	mov	w3, w0
	mov	x2, x1
	mov	w1, w4
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
.L26:
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L33
	mov	w0, 0
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"th"
	.string	"st"
	.string	"nd"
	.string	"rd"
	.text
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
