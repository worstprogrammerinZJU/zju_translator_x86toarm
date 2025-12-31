	.arch armv8-a
	.file	"1007.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d %d\n"
	.align	3
.LC1:
	.string	"%s"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	mov	x12, 5552
	sub	sp, sp, x12
	.cfi_def_cfa_offset 5552
	stp	x29, x30, [sp]
	.cfi_offset 29, -5552
	.cfi_offset 30, -5544
	mov	x29, sp
	add	x0, sp, 4096
	add	x0, x0, 1032
	mov	x1, 400
	mov	x2, x1
	mov	w1, 0
	bl	memset
	add	x1, sp, 4096
	add	x1, x1, 1440
	add	x0, sp, 4096
	add	x0, x0, 1436
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 5548]
	b	.L2
.L8:
	add	x2, sp, 24
	ldrsw	x1, [sp, 5548]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	add	x0, x2, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 5544]
	b	.L3
.L7:
	ldr	w0, [sp, 5544]
	add	w0, w0, 1
	str	w0, [sp, 5540]
	b	.L4
.L6:
	ldrsw	x2, [sp, 5544]
	ldrsw	x1, [sp, 5548]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	add	x0, x0, 4096
	add	x0, x0, 1456
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #8192
	ldrb	w2, [x0, 2664]
	ldrsw	x3, [sp, 5540]
	ldrsw	x1, [sp, 5548]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	add	x0, x0, 4096
	add	x0, x0, 1456
	add	x0, sp, x0
	add	x0, x0, x3
	sub	x0, x0, #8192
	ldrb	w0, [x0, 2664]
	cmp	w2, w0
	bls	.L5
	ldrsw	x0, [sp, 5548]
	lsl	x0, x0, 2
	add	x1, sp, 4096
	add	x1, x1, 1032
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	ldrsw	x0, [sp, 5548]
	lsl	x0, x0, 2
	add	x1, sp, 4096
	add	x1, x1, 1032
	str	w2, [x1, x0]
.L5:
	ldr	w0, [sp, 5540]
	add	w0, w0, 1
	str	w0, [sp, 5540]
.L4:
	ldr	w0, [sp, 5532]
	ldr	w1, [sp, 5540]
	cmp	w1, w0
	blt	.L6
	ldr	w0, [sp, 5544]
	add	w0, w0, 1
	str	w0, [sp, 5544]
.L3:
	ldr	w0, [sp, 5532]
	ldr	w1, [sp, 5544]
	cmp	w1, w0
	blt	.L7
	ldr	w0, [sp, 5548]
	add	w0, w0, 1
	str	w0, [sp, 5548]
.L2:
	ldr	w0, [sp, 5536]
	ldr	w1, [sp, 5548]
	cmp	w1, w0
	blt	.L8
	str	wzr, [sp, 5548]
	b	.L9
.L13:
	str	wzr, [sp, 5540]
	str	wzr, [sp, 5544]
	b	.L10
.L12:
	ldrsw	x0, [sp, 5540]
	lsl	x0, x0, 2
	add	x1, sp, 4096
	add	x1, x1, 1032
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 5544]
	lsl	x0, x0, 2
	add	x2, sp, 4096
	add	x2, x2, 1032
	ldr	w0, [x2, x0]
	cmp	w1, w0
	ble	.L11
	ldr	w0, [sp, 5544]
	str	w0, [sp, 5540]
.L11:
	ldr	w0, [sp, 5544]
	add	w0, w0, 1
	str	w0, [sp, 5544]
.L10:
	ldr	w0, [sp, 5536]
	ldr	w1, [sp, 5544]
	cmp	w1, w0
	blt	.L12
	add	x2, sp, 24
	ldrsw	x1, [sp, 5540]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x1, x0, 4
	add	x0, x0, x1
	add	x0, x2, x0
	bl	puts
	ldrsw	x0, [sp, 5540]
	lsl	x0, x0, 2
	add	x1, sp, 4096
	add	x1, x1, 1032
	mov	w2, 38528
	movk	w2, 0x98, lsl 16
	str	w2, [x1, x0]
	ldr	w0, [sp, 5548]
	add	w0, w0, 1
	str	w0, [sp, 5548]
.L9:
	ldr	w0, [sp, 5536]
	ldr	w1, [sp, 5548]
	cmp	w1, w0
	blt	.L13
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 5552
	add	sp, sp, x12
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
