	.arch armv8-a
	.file	"3239.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d "
	.align	3
.LC1:
	.string	"%d\n"
	.align	3
.LC2:
	.string	"%d"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	b	.L2
.L41:
	ldr	w2, [sp, 20]
	mov	w0, 43691
	movk	w0, 0x2aaa, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	lsl	w0, w0, 1
	sub	w1, w2, w0
	cmp	w1, 2
	beq	.L3
	ldr	w2, [sp, 20]
	mov	w0, 43691
	movk	w0, 0x2aaa, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	lsl	w0, w0, 1
	sub	w1, w2, w0
	cmp	w1, 3
	beq	.L3
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L4
.L5:
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
.L4:
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L5
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L6
.L7:
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
.L6:
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L7
	mov	w0, 10
	bl	putchar
	b	.L2
.L3:
	ldr	w0, [sp, 20]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 20]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	str	w0, [sp, 28]
	b	.L9
.L10:
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
.L9:
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L10
	ldr	w0, [sp, 24]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L11
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L12
.L13:
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
.L12:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	blt	.L13
	ldr	w0, [sp, 24]
	add	w0, w0, 3
	str	w0, [sp, 28]
	b	.L14
.L15:
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
.L14:
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L15
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L16
.L17:
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
.L16:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L17
	b	.L18
.L11:
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L19
.L20:
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
.L19:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	blt	.L20
	ldr	w0, [sp, 24]
	add	w0, w0, 3
	str	w0, [sp, 28]
	b	.L21
.L22:
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
.L21:
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L22
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L23
.L24:
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
.L23:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L24
.L18:
	mov	w0, 10
	bl	putchar
	b	.L2
.L8:
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	str	w0, [sp, 28]
	b	.L25
.L26:
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
.L25:
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L26
	ldr	w0, [sp, 24]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L27
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L28
.L29:
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
.L28:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	blt	.L29
	ldr	w0, [sp, 24]
	add	w0, w0, 3
	str	w0, [sp, 28]
	b	.L30
.L31:
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
.L30:
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L31
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L32
.L33:
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
.L32:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L33
	b	.L34
.L27:
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L35
.L36:
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
.L35:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	blt	.L36
	ldr	w0, [sp, 24]
	add	w0, w0, 3
	str	w0, [sp, 28]
	b	.L37
.L38:
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
.L37:
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L38
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L39
.L40:
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
.L39:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L40
.L34:
	ldr	w0, [sp, 20]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
.L2:
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L41
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
