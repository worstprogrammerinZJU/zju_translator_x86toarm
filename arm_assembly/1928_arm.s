	.arch armv8-a
	.file	"1928.c"
	.text
	.global	peanut
	.bss
	.align	3
	.type	peanut, %object
	.size	peanut, 30000
peanut:
	.zero	30000
	.text
	.align	2
	.global	cmp
	.type	cmp, %function
cmp:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x1, [sp, 8]
	add	x0, sp, 32
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	ldr	x1, [sp]
	add	x0, sp, 16
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bge	.L2
	mov	w0, 1
	b	.L5
.L2:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	ble	.L4
	mov	w0, -1
	b	.L5
.L4:
	mov	w0, 0
.L5:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	cmp, .-cmp
	.align	2
	.global	fab
	.type	fab, %function
fab:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	ble	.L7
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	sub	w0, w1, w0
	b	.L8
.L7:
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 12]
	sub	w0, w1, w0
.L8:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	fab, .-fab
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d%d%d"
	.align	3
.LC2:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 76]
	b	.L10
.L18:
	add	x2, sp, 36
	add	x1, sp, 52
	add	x0, sp, 48
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 64]
	mov	w0, 1
	str	w0, [sp, 72]
	b	.L11
.L15:
	mov	w0, 1
	str	w0, [sp, 68]
	b	.L12
.L14:
	add	x0, sp, 44
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 44]
	cmp	w0, 0
	beq	.L13
	ldr	w2, [sp, 44]
	adrp	x0, peanut
	add	x3, x0, :lo12:peanut
	ldrsw	x1, [sp, 64]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	str	w2, [x0]
	adrp	x0, peanut
	add	x2, x0, :lo12:peanut
	ldrsw	x1, [sp, 64]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [sp, 72]
	str	w1, [x0, 4]
	adrp	x0, peanut
	add	x2, x0, :lo12:peanut
	ldrsw	x1, [sp, 64]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [sp, 68]
	str	w1, [x0, 8]
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
.L13:
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L12:
	ldr	w0, [sp, 52]
	ldr	w1, [sp, 68]
	cmp	w1, w0
	ble	.L14
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
.L11:
	ldr	w0, [sp, 48]
	ldr	w1, [sp, 72]
	cmp	w1, w0
	ble	.L15
	ldrsw	x1, [sp, 64]
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 12
	adrp	x0, peanut
	add	x0, x0, :lo12:peanut
	bl	qsort
	str	wzr, [sp, 44]
	str	wzr, [sp, 72]
	str	wzr, [sp, 68]
	str	wzr, [sp, 60]
	adrp	x0, peanut
	add	x0, x0, :lo12:peanut
	ldr	w0, [x0, 8]
	str	w0, [sp, 56]
	b	.L16
.L17:
	adrp	x0, peanut
	add	x2, x0, :lo12:peanut
	ldrsw	x1, [sp, 68]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 4]
	ldr	w1, [sp, 60]
	bl	fab
	mov	w19, w0
	adrp	x0, peanut
	add	x2, x0, :lo12:peanut
	ldrsw	x1, [sp, 68]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 8]
	ldr	w1, [sp, 56]
	bl	fab
	add	w0, w19, w0
	add	w0, w0, 1
	ldr	w1, [sp, 72]
	add	w0, w1, w0
	str	w0, [sp, 72]
	adrp	x0, peanut
	add	x2, x0, :lo12:peanut
	ldrsw	x1, [sp, 68]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 4]
	str	w0, [sp, 60]
	adrp	x0, peanut
	add	x2, x0, :lo12:peanut
	ldrsw	x1, [sp, 68]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 8]
	str	w0, [sp, 56]
	adrp	x0, peanut
	add	x2, x0, :lo12:peanut
	ldrsw	x1, [sp, 68]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L16:
	adrp	x0, peanut
	add	x2, x0, :lo12:peanut
	ldrsw	x1, [sp, 68]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 4]
	ldr	w1, [sp, 60]
	bl	fab
	mov	w1, w0
	ldr	w0, [sp, 72]
	add	w19, w1, w0
	adrp	x0, peanut
	add	x2, x0, :lo12:peanut
	ldrsw	x1, [sp, 68]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 8]
	ldr	w1, [sp, 56]
	bl	fab
	add	w2, w19, w0
	adrp	x0, peanut
	add	x3, x0, :lo12:peanut
	ldrsw	x1, [sp, 68]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	ldr	w0, [x0, 4]
	add	w1, w2, w0
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L17
	ldr	w0, [sp, 44]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L10:
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 76]
	cmp	w1, w0
	blt	.L18
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
