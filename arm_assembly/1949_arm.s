	.arch armv8-a
	.file	"1949.c"
	.text
	.global	n
	.bss
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	max
	.align	2
	.type	max, %object
	.size	max, 4
max:
	.zero	4
	.global	m
	.align	2
	.type	m, %object
	.size	m, 4
m:
	.zero	4
	.global	time
	.align	3
	.type	time, %object
	.size	time, 40004
time:
	.zero	40004
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d%d"
	.align	3
.LC2:
	.string	"%d\n"
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
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L2
.L7:
	add	x1, sp, 36
	add	x0, sp, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 40]
	adrp	x0, max
	add	x0, x0, :lo12:max
	str	wzr, [x0]
	b	.L3
.L5:
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w1, [sp, 32]
	adrp	x0, time
	add	x0, x0, :lo12:time
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, max
	add	x0, x0, :lo12:max
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L4
	ldr	w1, [sp, 32]
	adrp	x0, time
	add	x0, x0, :lo12:time
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, max
	add	x0, x0, :lo12:max
	str	w1, [x0]
.L4:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L3:
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L5
	adrp	x0, time
	add	x0, x0, :lo12:time
	ldrsw	x1, [sp, 44]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w2, [sp, 28]
	adrp	x0, max
	add	x0, x0, :lo12:max
	ldr	w0, [x0]
	add	w0, w2, w0
	add	w2, w1, w0
	adrp	x0, time
	add	x0, x0, :lo12:time
	ldrsw	x1, [sp, 44]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, time
	add	x0, x0, :lo12:time
	ldrsw	x1, [sp, 44]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L6
	adrp	x0, time
	add	x0, x0, :lo12:time
	ldrsw	x1, [sp, 44]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	w1, [x0]
.L6:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L7
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
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
