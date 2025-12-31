	.arch armv8-a
	.file	"1002.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.align	3
.LC1:
	.string	"No duplicates."
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	wzr, [sp, 68]
	str	xzr, [sp, 56]
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 76]
	b	.L2
.L15:
	str	wzr, [sp, 72]
	b	.L3
.L6:
	ldrb	w0, [sp, 39]
	cmp	w0, 47
	bls	.L4
	ldrb	w0, [sp, 39]
	cmp	w0, 57
	bhi	.L4
	ldr	w1, [sp, 72]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w1, w0
	ldrb	w0, [sp, 39]
	add	w0, w1, w0
	sub	w0, w0, #48
	str	w0, [sp, 72]
	b	.L3
.L4:
	ldrb	w0, [sp, 39]
	cmp	w0, 64
	bls	.L5
	ldrb	w0, [sp, 39]
	cmp	w0, 80
	bhi	.L5
	ldr	w1, [sp, 72]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w2, w0
	ldrb	w0, [sp, 39]
	sub	w0, w0, #65
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	add	w0, w2, w0
	add	w0, w0, 2
	str	w0, [sp, 72]
	b	.L3
.L5:
	ldrb	w0, [sp, 39]
	cmp	w0, 81
	bls	.L3
	ldrb	w0, [sp, 39]
	cmp	w0, 89
	bhi	.L3
	ldr	w1, [sp, 72]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w2, w0
	ldrb	w0, [sp, 39]
	sub	w0, w0, #81
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	add	w0, w2, w0
	add	w0, w0, 7
	str	w0, [sp, 72]
.L3:
	bl	getchar
	strb	w0, [sp, 39]
	ldrb	w0, [sp, 39]
	cmp	w0, 10
	bne	.L6
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L7
	mov	x0, 24
	bl	malloc
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	w1, [sp, 72]
	str	w1, [x0]
	ldr	x0, [sp, 56]
	str	wzr, [x0, 4]
	ldr	x0, [sp, 56]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 56]
	str	xzr, [x0, 16]
	b	.L8
.L7:
	ldr	x0, [sp, 56]
	str	x0, [sp, 48]
	b	.L9
.L13:
	ldr	x0, [sp, 48]
	str	x0, [sp, 40]
	ldr	x0, [sp, 48]
	ldr	w0, [x0]
	ldr	w1, [sp, 72]
	cmp	w1, w0
	bne	.L10
	mov	w0, 1
	str	w0, [sp, 68]
	ldr	x0, [sp, 48]
	ldr	w0, [x0, 4]
	add	w1, w0, 1
	ldr	x0, [sp, 48]
	str	w1, [x0, 4]
	b	.L11
.L10:
	ldr	x0, [sp, 48]
	ldr	w0, [x0]
	ldr	w1, [sp, 72]
	cmp	w1, w0
	ble	.L12
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 16]
	str	x0, [sp, 48]
	b	.L9
.L12:
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 8]
	str	x0, [sp, 48]
.L9:
	ldr	x0, [sp, 48]
	cmp	x0, 0
	bne	.L13
.L11:
	ldr	x0, [sp, 48]
	cmp	x0, 0
	bne	.L8
	mov	x0, 24
	bl	malloc
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 72]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	str	wzr, [x0, 4]
	ldr	x0, [sp, 24]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 24]
	str	xzr, [x0, 16]
	ldr	x0, [sp, 40]
	ldr	w0, [x0]
	ldr	w1, [sp, 72]
	cmp	w1, w0
	bge	.L14
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 24]
	str	x1, [x0, 8]
	b	.L8
.L14:
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 24]
	str	x1, [x0, 16]
.L8:
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L2:
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 76]
	cmp	w1, w0
	ble	.L15
	ldr	w0, [sp, 68]
	cmp	w0, 0
	bne	.L16
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
	b	.L17
.L16:
	ldr	x0, [sp, 56]
	bl	dfs
.L17:
	mov	w0, 0
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC2:
	.string	"%.3d-%.4d %d\n"
	.text
	.align	2
	.global	dfs
	.type	dfs, %function
dfs:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L23
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	bl	dfs
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 4]
	cmp	w0, 0
	ble	.L22
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	mov	w1, 35757
	movk	w1, 0x68db, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 12
	asr	w0, w0, 31
	sub	w4, w1, w0
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	mov	w1, 35757
	movk	w1, 0x68db, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w2, w1, 12
	asr	w1, w0, 31
	sub	w1, w2, w1
	mov	w2, 10000
	mul	w1, w1, w2
	sub	w1, w0, w1
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 4]
	add	w0, w0, 1
	mov	w3, w0
	mov	w2, w1
	mov	w1, w4
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
.L22:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	bl	dfs
	b	.L19
.L23:
	nop
.L19:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	dfs, .-dfs
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
