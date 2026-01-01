	.arch armv8-a
	.file	"3070.c"
	.text
	.global	f
	.bss
	.align	3
	.type	f, %object
	.size	f, 400032
f:
	.zero	400032
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.align	3
.LC1:
	.string	"%ld"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	wzr, [sp, 28]
	adrp	x0, f
	add	x0, x0, :lo12:f
	str	wzr, [x0]
	adrp	x0, f
	add	x0, x0, :lo12:f
	mov	w1, 1
	str	w1, [x0, 4]
	mov	x0, 2
	str	x0, [sp, 40]
	b	.L2
.L9:
	ldr	x0, [sp, 40]
	sub	x1, x0, #1
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	w1, [x0, x1, lsl 2]
	ldr	x0, [sp, 40]
	sub	x2, x0, #2
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	w0, [x0, x2, lsl 2]
	add	w1, w1, w0
	mov	w0, 35757
	movk	w0, 0x68db, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 12
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 10000
	mul	w0, w0, w2
	sub	w0, w1, w0
	adrp	x1, f
	add	x1, x1, :lo12:f
	ldr	x2, [sp, 40]
	str	w0, [x1, x2, lsl 2]
	str	xzr, [sp, 32]
	b	.L3
.L6:
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	x1, [sp, 32]
	ldr	w1, [x0, x1, lsl 2]
	ldr	x0, [sp, 40]
	sub	x2, x0, #1
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bne	.L4
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	x1, [sp, 40]
	ldr	w1, [x0, x1, lsl 2]
	ldr	x0, [sp, 32]
	add	x2, x0, 1
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bne	.L4
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L5
.L4:
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
.L3:
	ldr	x0, [sp, 40]
	sub	x0, x0, #1
	ldr	x1, [sp, 32]
	cmp	x1, x0
	blt	.L6
.L5:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L13
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L2:
	ldr	x1, [sp, 40]
	mov	x0, 34464
	movk	x0, 0x1, lsl 16
	cmp	x1, x0
	ble	.L9
	b	.L10
.L13:
	nop
	b	.L10
.L11:
	ldr	x1, [sp, 16]
	mov	x0, 30479
	movk	x0, 0xf608, lsl 16
	movk	x0, 0xb272, lsl 32
	movk	x0, 0x45e7, lsl 48
	smulh	x0, x1, x0
	asr	x2, x0, 12
	asr	x0, x1, 63
	sub	x0, x2, x0
	mov	x2, 15000
	mul	x0, x0, x2
	sub	x0, x1, x0
	adrp	x1, f
	add	x1, x1, :lo12:f
	ldr	w0, [x1, x0, lsl 2]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
.L10:
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	x0, [sp, 16]
	cmn	x0, #1
	bne	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
