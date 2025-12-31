	.arch armv8-a
	.file	"2328.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"too high"
	.align	3
.LC2:
	.string	"too low"
	.align	3
.LC3:
	.string	"Stan may be honest"
	.align	3
.LC4:
	.string	"Stan is dishonest"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	add	x0, sp, 40
	movi	v0.4s, 0
	stp	q0, q0, [x0]
	str	q0, [x0, 28]
	add	x0, sp, 88
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
.L14:
	bl	getchar
	add	x0, sp, 16
	bl	gets
	add	x2, sp, 16
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 88]
	str	w0, [sp, 92]
	b	.L4
.L5:
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 2
	add	x1, sp, 40
	mov	w2, 1
	str	w2, [x1, x0]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
.L4:
	ldr	w0, [sp, 92]
	cmp	w0, 10
	ble	.L5
	b	.L6
.L3:
	add	x2, sp, 16
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L7
	mov	w0, 1
	str	w0, [sp, 92]
	b	.L8
.L9:
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 2
	add	x1, sp, 40
	mov	w2, 1
	str	w2, [x1, x0]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
.L8:
	ldr	w0, [sp, 88]
	ldr	w1, [sp, 92]
	cmp	w1, w0
	ble	.L9
	b	.L6
.L7:
	ldr	w0, [sp, 88]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L10
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
	b	.L11
.L10:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	puts
.L11:
	mov	w0, 1
	str	w0, [sp, 92]
	b	.L12
.L13:
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 2
	add	x1, sp, 40
	str	wzr, [x1, x0]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
.L12:
	ldr	w0, [sp, 92]
	cmp	w0, 10
	ble	.L13
.L6:
	add	x0, sp, 88
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L2:
	ldr	w0, [sp, 88]
	cmp	w0, 0
	bne	.L14
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
