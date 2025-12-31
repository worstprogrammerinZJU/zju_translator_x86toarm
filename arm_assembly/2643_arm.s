	.arch armv8-a
	.file	"2643.c"
	.text
	.global	n
	.bss
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	vote
	.align	3
	.type	vote, %object
	.size	vote, 80
vote:
	.zero	80
	.global	name
	.align	3
	.type	name, %object
	.size	name, 2000
name:
	.zero	2000
	.global	party
	.align	3
	.type	party, %object
	.size	party, 2000
party:
	.zero	2000
	.global	input
	.align	3
	.type	input, %object
	.size	input, 100
input:
	.zero	100
	.text
	.align	2
	.global	check
	.type	check, %function
check:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	wzr, [sp, 28]
	b	.L2
.L5:
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, name
	add	x1, x1, :lo12:name
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, input
	add	x0, x0, :lo12:input
	bl	strcmp
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 28]
	b	.L4
.L3:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L5
	mov	w0, -1
.L4:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	check, .-check
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.align	3
.LC1:
	.string	"tie"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L7
.L8:
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, name
	add	x1, x1, :lo12:name
	add	x0, x0, x1
	bl	gets
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, party
	add	x1, x1, :lo12:party
	add	x0, x0, x1
	bl	gets
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L7:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L8
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L9
.L11:
	adrp	x0, input
	add	x0, x0, :lo12:input
	bl	gets
	bl	check
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	cmn	w0, #1
	beq	.L10
	adrp	x0, vote
	add	x0, x0, :lo12:vote
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, vote
	add	x0, x0, :lo12:vote
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
.L10:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L9:
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L11
	str	wzr, [sp, 24]
	mov	w0, 1
	str	w0, [sp, 20]
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L12
.L15:
	adrp	x0, vote
	add	x0, x0, :lo12:vote
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, vote
	add	x0, x0, :lo12:vote
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	ble	.L13
	ldr	w0, [sp, 28]
	str	w0, [sp, 24]
	mov	w0, 1
	str	w0, [sp, 20]
	b	.L14
.L13:
	adrp	x0, vote
	add	x0, x0, :lo12:vote
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, vote
	add	x0, x0, :lo12:vote
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bne	.L14
	str	wzr, [sp, 20]
.L14:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L12:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L15
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L16
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
	b	.L17
.L16:
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, party
	add	x1, x1, :lo12:party
	add	x0, x0, x1
	bl	puts
.L17:
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
