	.arch armv8-a
	.file	"0239-sliding-window-maximum.c"
	.text
	.align	2
	.global	createDeque
	.type	createDeque, %function
createDeque:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	mov	x0, 24
	bl	malloc
	str	x0, [sp, 40]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	bl	malloc
	mov	x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 40]
	str	wzr, [x0, 8]
	ldr	x0, [sp, 40]
	mov	w1, -1
	str	w1, [x0, 12]
	ldr	x0, [sp, 40]
	str	wzr, [x0, 16]
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	createDeque, .-createDeque
	.align	2
	.global	pushBack
	.type	pushBack, %function
pushBack:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	w2, [sp]
	b	.L4
.L6:
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 12]
	sub	w1, w0, #1
	ldr	x0, [sp, 8]
	str	w1, [x0, 12]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 16]
	sub	w1, w0, #1
	ldr	x0, [sp, 8]
	str	w1, [x0, 16]
.L4:
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 16]
	cmp	w0, 0
	ble	.L5
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 12]
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 4]
	cmp	w1, w0
	bge	.L6
.L5:
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 12]
	add	w1, w0, 1
	ldr	x0, [sp, 8]
	str	w1, [x0, 12]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 12]
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w1, [sp, 4]
	str	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 12]
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w1, [sp]
	str	w1, [x0, 4]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 16]
	add	w1, w0, 1
	ldr	x0, [sp, 8]
	str	w1, [x0, 16]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	pushBack, .-pushBack
	.align	2
	.global	popFront
	.type	popFront, %function
popFront:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 16]
	cmp	w0, 0
	ble	.L9
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 8]
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w0, [x0, 4]
	ldr	w1, [sp, 4]
	cmp	w1, w0
	bne	.L9
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 8]
	add	w1, w0, 1
	ldr	x0, [sp, 8]
	str	w1, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 16]
	sub	w1, w0, #1
	ldr	x0, [sp, 8]
	str	w1, [x0, 16]
.L9:
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	popFront, .-popFront
	.align	2
	.global	maxSlidingWindow
	.type	maxSlidingWindow, %function
maxSlidingWindow:
.LFB9:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	w2, [sp, 32]
	str	x3, [sp, 24]
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L11
	ldr	x0, [sp, 24]
	str	wzr, [x0]
	mov	x0, 0
	b	.L12
.L11:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	sub	w0, w1, w0
	add	w1, w0, 1
	ldr	x0, [sp, 24]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 64]
	ldr	w0, [sp, 36]
	bl	createDeque
	str	x0, [sp, 56]
	str	wzr, [sp, 76]
	b	.L13
.L15:
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w2, [sp, 76]
	mov	w1, w0
	ldr	x0, [sp, 56]
	bl	pushBack
	ldr	w0, [sp, 32]
	sub	w0, w0, #1
	ldr	w1, [sp, 76]
	cmp	w1, w0
	blt	.L14
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	w0, [x0, 8]
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, x1, x0
	ldr	w2, [sp, 76]
	ldr	w0, [sp, 32]
	sub	w0, w2, w0
	sxtw	x0, w0
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 64]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 32]
	sub	w0, w1, w0
	add	w0, w0, 1
	mov	w1, w0
	ldr	x0, [sp, 56]
	bl	popFront
.L14:
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L13:
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L15
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	bl	free
	ldr	x0, [sp, 56]
	bl	free
	ldr	x0, [sp, 64]
.L12:
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	maxSlidingWindow, .-maxSlidingWindow
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
