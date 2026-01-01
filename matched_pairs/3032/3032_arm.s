	.arch armv8-a
	.file	"3032.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d "
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -160]!
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 156]
	b	.L2
.L11:
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 152]
	b	.L3
.L4:
	ldr	w0, [sp, 152]
	add	w2, w0, 1
	ldrsw	x0, [sp, 152]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	ldr	w0, [sp, 152]
	add	w0, w0, 1
	str	w0, [sp, 152]
.L3:
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 152]
	cmp	w1, w0
	blt	.L4
	mov	w0, 1
	str	w0, [sp, 136]
	mov	w0, 1
	str	w0, [sp, 144]
	ldr	w0, [sp, 16]
	str	w0, [sp, 140]
	mov	w0, 1
	str	w0, [sp, 148]
	b	.L5
.L8:
	mov	w0, 1
	str	w0, [sp, 152]
	b	.L6
.L7:
	ldrsw	x0, [sp, 140]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [sp, 144]
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 144]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	str	w0, [sp, 144]
	ldrsw	x0, [sp, 140]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	str	w0, [sp, 140]
	ldr	w0, [sp, 152]
	add	w0, w0, 1
	str	w0, [sp, 152]
.L6:
	ldr	w1, [sp, 152]
	ldr	w0, [sp, 148]
	cmp	w1, w0
	ble	.L7
	ldrsw	x0, [sp, 144]
	lsl	x0, x0, 2
	add	x1, sp, 80
	ldr	w2, [sp, 148]
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 144]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	str	w0, [sp, 144]
	ldr	w0, [sp, 148]
	add	w0, w0, 1
	str	w0, [sp, 148]
.L5:
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 148]
	cmp	w1, w0
	ble	.L8
	mov	w0, 1
	str	w0, [sp, 152]
	b	.L9
.L10:
	ldrsw	x0, [sp, 152]
	lsl	x0, x0, 2
	add	x1, sp, 80
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 152]
	add	w0, w0, 1
	str	w0, [sp, 152]
.L9:
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 152]
	cmp	w1, w0
	ble	.L10
	mov	w0, 10
	bl	putchar
	ldr	w0, [sp, 156]
	add	w0, w0, 1
	str	w0, [sp, 156]
.L2:
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 156]
	cmp	w1, w0
	blt	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 160
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
