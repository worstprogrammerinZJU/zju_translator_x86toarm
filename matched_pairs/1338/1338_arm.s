	.arch armv8-a
	.file	"1338.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	mov	w1, 1
	str	w1, [x0]
	ldr	x0, [sp, 80]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 80]
	str	x0, [sp, 72]
	ldr	x0, [sp, 80]
	str	x0, [sp, 32]
	mov	w0, 1
	str	w0, [sp, 92]
	b	.L2
.L20:
	ldr	x0, [sp, 80]
	str	x0, [sp, 40]
	ldr	x0, [sp, 80]
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
	ldr	x0, [sp, 80]
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
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 64]
	ldr	x0, [sp, 80]
	ldr	w0, [x0]
	lsl	w1, w0, 1
	ldr	x0, [sp, 64]
	str	w1, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	str	x0, [sp, 56]
	b	.L4
.L6:
	ldr	x0, [sp, 56]
	str	x0, [sp, 48]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	str	x0, [sp, 56]
.L4:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L5
	ldr	x0, [sp, 56]
	ldr	w1, [x0]
	ldr	x0, [sp, 64]
	ldr	w0, [x0]
	cmp	w1, w0
	bcc	.L6
.L5:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L7
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 64]
	str	x1, [x0, 8]
	ldr	x0, [sp, 64]
	str	x0, [sp, 72]
	ldr	x0, [sp, 64]
	str	xzr, [x0, 8]
	b	.L8
.L7:
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 64]
	str	x1, [x0, 8]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 56]
	str	x1, [x0, 8]
.L8:
	ldr	x0, [sp, 64]
	str	x0, [sp, 40]
.L3:
	ldr	x0, [sp, 80]
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
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 64]
	ldr	x0, [sp, 80]
	ldr	w1, [x0]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w1, w0, w1
	ldr	x0, [sp, 64]
	str	w1, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	str	x0, [sp, 56]
	b	.L10
.L12:
	ldr	x0, [sp, 56]
	str	x0, [sp, 48]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	str	x0, [sp, 56]
.L10:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L11
	ldr	x0, [sp, 56]
	ldr	w1, [x0]
	ldr	x0, [sp, 64]
	ldr	w0, [x0]
	cmp	w1, w0
	bcc	.L12
.L11:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L13
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 64]
	str	x1, [x0, 8]
	ldr	x0, [sp, 64]
	str	x0, [sp, 72]
	ldr	x0, [sp, 64]
	str	xzr, [x0, 8]
	b	.L14
.L13:
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 64]
	str	x1, [x0, 8]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 56]
	str	x1, [x0, 8]
.L14:
	ldr	x0, [sp, 64]
	str	x0, [sp, 40]
.L9:
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 64]
	ldr	x0, [sp, 80]
	ldr	w1, [x0]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w1, w0, w1
	ldr	x0, [sp, 64]
	str	w1, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	str	x0, [sp, 56]
	b	.L15
.L17:
	ldr	x0, [sp, 56]
	str	x0, [sp, 48]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	str	x0, [sp, 56]
.L15:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L16
	ldr	x0, [sp, 56]
	ldr	w1, [x0]
	ldr	x0, [sp, 64]
	ldr	w0, [x0]
	cmp	w1, w0
	bcc	.L17
.L16:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L18
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 64]
	str	x1, [x0, 8]
	ldr	x0, [sp, 64]
	str	x0, [sp, 72]
	ldr	x0, [sp, 64]
	str	xzr, [x0, 8]
	b	.L19
.L18:
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 64]
	str	x1, [x0, 8]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 56]
	str	x1, [x0, 8]
.L19:
	ldr	x0, [sp, 80]
	ldr	x0, [x0, 8]
	str	x0, [sp, 80]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
.L2:
	ldr	w0, [sp, 92]
	cmp	w0, 1288
	ble	.L20
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L21
.L24:
	ldr	x0, [sp, 32]
	str	x0, [sp, 64]
	mov	w0, 1
	str	w0, [sp, 92]
	b	.L22
.L23:
	ldr	x0, [sp, 64]
	ldr	x0, [x0, 8]
	str	x0, [sp, 64]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
.L22:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 92]
	cmp	w1, w0
	blt	.L23
	ldr	x0, [sp, 64]
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L21:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L24
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
