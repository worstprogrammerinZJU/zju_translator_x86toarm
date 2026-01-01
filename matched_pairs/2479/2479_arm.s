	.arch armv8-a
	.file	"2479.c"
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
.LFB0:
	.cfi_startproc
	sub	x12, sp, #458752
	.cfi_def_cfa 12, 458752
.LPSRL0:
	sub	sp, sp, 65536
	str	xzr, [sp, 1024]
	cmp	sp, x12
	b.ne	.LPSRL0
	.cfi_def_cfa_register 31
	mov	x12, 41296
	sub	sp, sp, x12
	.cfi_def_cfa_offset 500048
	stp	x29, x30, [sp]
	.cfi_offset 29, -500048
	.cfi_offset 30, -500040
	mov	x29, sp
	add	x0, sp, 499712
	add	x0, x0, 304
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x0, sp, 491520
	str	wzr, [x0, 8520]
	b	.L2
.L19:
	mov	w0, -10001
	add	x1, sp, 491520
	str	w0, [x1, 8508]
	add	x0, sp, 499712
	add	x0, x0, 308
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x0, sp, 491520
	str	wzr, [x0, 8524]
	b	.L3
.L6:
	add	x1, sp, 16
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 1
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 1
	add	x1, sp, 16
	ldrsh	w0, [x1, x0]
	mov	w1, w0
	add	x0, sp, 491520
	ldr	w0, [x0, 8508]
	cmp	w0, w1
	bge	.L4
	add	x0, sp, 491520
	ldr	w0, [x0, 8508]
	add	x1, sp, 491520
	str	w0, [x1, 8504]
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 1
	add	x1, sp, 16
	ldrsh	w0, [x1, x0]
	add	x1, sp, 491520
	str	w0, [x1, 8508]
	b	.L5
.L4:
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 1
	add	x1, sp, 16
	ldrsh	w0, [x1, x0]
	mov	w1, w0
	add	x0, sp, 491520
	ldr	w0, [x0, 8504]
	cmp	w0, w1
	bge	.L5
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 1
	add	x1, sp, 16
	ldrsh	w0, [x1, x0]
	add	x1, sp, 491520
	str	w0, [x1, 8504]
.L5:
	add	x0, sp, 491520
	ldr	w0, [x0, 8524]
	add	w0, w0, 1
	add	x1, sp, 491520
	str	w0, [x1, 8524]
.L3:
	add	x0, sp, 491520
	ldr	w0, [x0, 8500]
	add	x1, sp, 491520
	ldr	w1, [x1, 8524]
	cmp	w1, w0
	blt	.L6
	mov	w0, -10001
	add	x1, sp, 491520
	str	w0, [x1, 8512]
	add	x0, sp, 491520
	str	wzr, [x0, 8516]
	add	x0, sp, 491520
	str	wzr, [x0, 8524]
	b	.L7
.L10:
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 1
	add	x1, sp, 16
	ldrsh	w0, [x1, x0]
	mov	w1, w0
	add	x0, sp, 491520
	ldr	w0, [x0, 8516]
	add	w0, w0, w1
	add	x1, sp, 491520
	str	w0, [x1, 8516]
	add	x0, sp, 491520
	ldr	w1, [x0, 8516]
	add	x0, sp, 491520
	ldr	w0, [x0, 8512]
	cmp	w1, w0
	ble	.L8
	add	x0, sp, 491520
	ldr	w0, [x0, 8516]
	add	x1, sp, 491520
	str	w0, [x1, 8512]
.L8:
	add	x0, sp, 491520
	ldr	w0, [x0, 8516]
	cmp	w0, 0
	bge	.L9
	add	x0, sp, 491520
	str	wzr, [x0, 8516]
.L9:
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 2
	add	x1, sp, 299008
	add	x1, x1, 1008
	add	x2, sp, 491520
	ldr	w2, [x2, 8512]
	str	w2, [x1, x0]
	add	x0, sp, 491520
	ldr	w0, [x0, 8524]
	add	w0, w0, 1
	add	x1, sp, 491520
	str	w0, [x1, 8524]
.L7:
	add	x0, sp, 491520
	ldr	w0, [x0, 8500]
	add	x1, sp, 491520
	ldr	w1, [x1, 8524]
	cmp	w1, w0
	blt	.L10
	mov	w0, -10001
	add	x1, sp, 491520
	str	w0, [x1, 8512]
	add	x0, sp, 491520
	str	wzr, [x0, 8516]
	add	x0, sp, 491520
	ldr	w0, [x0, 8500]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 98304
	add	x1, x1, 1712
	str	wzr, [x1, x0]
	add	x0, sp, 491520
	ldr	w0, [x0, 8500]
	sub	w0, w0, #1
	add	x1, sp, 491520
	str	w0, [x1, 8524]
	b	.L11
.L14:
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 1
	add	x1, sp, 16
	ldrsh	w0, [x1, x0]
	mov	w1, w0
	add	x0, sp, 491520
	ldr	w0, [x0, 8516]
	add	w0, w0, w1
	add	x1, sp, 491520
	str	w0, [x1, 8516]
	add	x0, sp, 491520
	ldr	w1, [x0, 8516]
	add	x0, sp, 491520
	ldr	w0, [x0, 8512]
	cmp	w1, w0
	ble	.L12
	add	x0, sp, 491520
	ldr	w0, [x0, 8516]
	add	x1, sp, 491520
	str	w0, [x1, 8512]
.L12:
	add	x0, sp, 491520
	ldr	w0, [x0, 8516]
	cmp	w0, 0
	bge	.L13
	add	x0, sp, 491520
	str	wzr, [x0, 8516]
.L13:
	add	x0, sp, 491520
	ldr	w0, [x0, 8524]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 98304
	add	x1, x1, 1712
	add	x2, sp, 491520
	ldr	w2, [x2, 8512]
	str	w2, [x1, x0]
	add	x0, sp, 491520
	ldr	w0, [x0, 8524]
	sub	w0, w0, #1
	add	x1, sp, 491520
	str	w0, [x1, 8524]
.L11:
	add	x0, sp, 491520
	ldr	w0, [x0, 8524]
	cmp	w0, 0
	bgt	.L14
	mov	w0, -10001
	add	x1, sp, 491520
	str	w0, [x1, 8512]
	add	x0, sp, 491520
	str	wzr, [x0, 8524]
	b	.L15
.L17:
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 2
	add	x1, sp, 299008
	add	x1, x1, 1008
	ldr	w1, [x1, x0]
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 2
	add	x2, sp, 98304
	add	x2, x2, 1712
	ldr	w0, [x2, x0]
	add	w0, w1, w0
	add	x1, sp, 491520
	ldr	w1, [x1, 8512]
	cmp	w1, w0
	bge	.L16
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 2
	add	x1, sp, 299008
	add	x1, x1, 1008
	ldr	w1, [x1, x0]
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 2
	add	x2, sp, 98304
	add	x2, x2, 1712
	ldr	w0, [x2, x0]
	add	w0, w1, w0
	add	x1, sp, 491520
	str	w0, [x1, 8512]
.L16:
	add	x0, sp, 491520
	ldr	w0, [x0, 8524]
	add	w0, w0, 1
	add	x1, sp, 491520
	str	w0, [x1, 8524]
.L15:
	add	x0, sp, 491520
	ldr	w0, [x0, 8500]
	add	x1, sp, 491520
	ldr	w1, [x1, 8524]
	cmp	w1, w0
	blt	.L17
	add	x0, sp, 491520
	ldr	w1, [x0, 8512]
	add	x0, sp, 491520
	ldr	w0, [x0, 8508]
	cmp	w1, w0
	bne	.L18
	add	x0, sp, 491520
	ldr	w1, [x0, 8512]
	add	x0, sp, 491520
	ldr	w0, [x0, 8504]
	add	w0, w1, w0
	add	x1, sp, 491520
	str	w0, [x1, 8512]
.L18:
	add	x0, sp, 491520
	ldr	w1, [x0, 8512]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 491520
	ldr	w0, [x0, 8520]
	add	w0, w0, 1
	add	x1, sp, 491520
	str	w0, [x1, 8520]
.L2:
	add	x0, sp, 491520
	ldr	w0, [x0, 8496]
	add	x1, sp, 491520
	ldr	w1, [x1, 8520]
	cmp	w1, w0
	blt	.L19
	mov	w0, 0
	ldp	x29, x30, [sp]
	.cfi_restore 29
	.cfi_restore 30
	add	sp, sp, 336
	.cfi_def_cfa_offset 499712
	add	sp, sp, 499712
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
