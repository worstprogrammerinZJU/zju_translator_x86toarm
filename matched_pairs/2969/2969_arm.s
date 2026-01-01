	.arch armv8-a
	.file	"2969.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%s"
	.align	3
.LC1:
	.string	"impossible"
	.align	3
.LC2:
	.string	"%d"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #1088
	.cfi_def_cfa_offset 1088
	stp	x29, x30, [sp]
	.cfi_offset 29, -1088
	.cfi_offset 30, -1080
	mov	x29, sp
	add	x0, sp, 1024
	stp	xzr, xzr, [x0]
	add	x0, sp, 1024
	stp	xzr, xzr, [x0, 16]
	str	xzr, [sp, 1056]
	str	wzr, [sp, 1084]
	str	wzr, [sp, 1080]
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 1076]
	b	.L2
.L3:
	ldrsw	x0, [sp, 1076]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	sub	w3, w0, #48
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 1024
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 1024
	str	w2, [x1, x0]
	ldr	w0, [sp, 1076]
	add	w0, w0, 1
	str	w0, [sp, 1076]
.L2:
	ldrsw	x0, [sp, 1076]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 1024]
	cmp	w0, 0
	bne	.L4
	ldr	w0, [sp, 1044]
	cmp	w0, 0
	bne	.L4
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L5
.L4:
	ldr	w1, [sp, 1028]
	ldr	w0, [sp, 1032]
	lsl	w0, w0, 1
	add	w2, w1, w0
	ldr	w1, [sp, 1036]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w1, w2, w0
	ldr	w0, [sp, 1040]
	lsl	w0, w0, 2
	add	w2, w1, w0
	ldr	w1, [sp, 1044]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	add	w2, w2, w0
	ldr	w1, [sp, 1048]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	lsl	w0, w0, 1
	add	w2, w2, w0
	ldr	w1, [sp, 1052]
	mov	w0, w1
	lsl	w0, w0, 3
	sub	w0, w0, w1
	add	w1, w2, w0
	ldr	w0, [sp, 1056]
	lsl	w0, w0, 3
	add	w2, w1, w0
	ldr	w1, [sp, 1060]
	mov	w0, w1
	lsl	w0, w0, 3
	add	w0, w0, w1
	add	w0, w2, w0
	str	w0, [sp, 1068]
	ldr	w1, [sp, 1068]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w1, w0
	lsr	x2, x0, 32
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 1
	add	w0, w0, w2
	sub	w0, w1, w0
	str	w0, [sp, 1064]
	ldr	w0, [sp, 1024]
	cmp	w0, 0
	bne	.L6
	mov	w0, 1
	str	w0, [sp, 1084]
.L6:
	ldr	w0, [sp, 1064]
	cmp	w0, 1
	bne	.L7
	mov	w0, 1
	str	w0, [sp, 1076]
	b	.L8
.L11:
	ldrsw	x0, [sp, 1076]
	lsl	x0, x0, 2
	add	x1, sp, 1024
	ldr	w0, [x1, x0]
	cmp	w0, 0
	ble	.L9
	ldrsw	x0, [sp, 1076]
	lsl	x0, x0, 2
	add	x1, sp, 1024
	ldr	w0, [x1, x0]
	sub	w2, w0, #1
	ldrsw	x0, [sp, 1076]
	lsl	x0, x0, 2
	add	x1, sp, 1024
	str	w2, [x1, x0]
	b	.L10
.L9:
	ldr	w0, [sp, 1076]
	add	w0, w0, 3
	str	w0, [sp, 1076]
.L8:
	ldr	w0, [sp, 1076]
	cmp	w0, 8
	ble	.L11
.L10:
	ldr	w0, [sp, 1076]
	cmp	w0, 9
	ble	.L12
	ldr	w0, [sp, 1032]
	cmp	w0, 1
	ble	.L13
	ldr	w0, [sp, 1032]
	sub	w0, w0, #2
	str	w0, [sp, 1032]
	b	.L12
.L13:
	ldr	w0, [sp, 1032]
	cmp	w0, 0
	ble	.L14
	ldr	w0, [sp, 1032]
	sub	w0, w0, #1
	str	w0, [sp, 1032]
	ldr	w0, [sp, 1044]
	ldr	w1, [sp, 1084]
	cmp	w1, w0
	bge	.L15
	ldr	w0, [sp, 1044]
	sub	w0, w0, #1
	str	w0, [sp, 1044]
	b	.L12
.L15:
	ldr	w0, [sp, 1056]
	cmp	w0, 0
	ble	.L16
	ldr	w0, [sp, 1056]
	sub	w0, w0, #1
	str	w0, [sp, 1056]
	b	.L12
.L16:
	mov	w0, 1
	str	w0, [sp, 1080]
	b	.L12
.L14:
	ldr	w1, [sp, 1044]
	ldr	w0, [sp, 1084]
	add	w0, w0, 1
	cmp	w1, w0
	ble	.L17
	ldr	w0, [sp, 1044]
	sub	w0, w0, #2
	str	w0, [sp, 1044]
	b	.L12
.L17:
	ldr	w0, [sp, 1044]
	ldr	w1, [sp, 1084]
	cmp	w1, w0
	bge	.L18
	ldr	w0, [sp, 1044]
	sub	w0, w0, #1
	str	w0, [sp, 1044]
	ldr	w0, [sp, 1056]
	cmp	w0, 0
	ble	.L19
	ldr	w0, [sp, 1056]
	sub	w0, w0, #1
	str	w0, [sp, 1056]
	b	.L12
.L19:
	mov	w0, 1
	str	w0, [sp, 1080]
	b	.L12
.L18:
	ldr	w0, [sp, 1056]
	cmp	w0, 1
	ble	.L20
	ldr	w0, [sp, 1056]
	sub	w0, w0, #2
	str	w0, [sp, 1056]
	b	.L12
.L20:
	mov	w0, 1
	str	w0, [sp, 1080]
	b	.L12
.L7:
	ldr	w0, [sp, 1064]
	cmp	w0, 2
	bne	.L12
	ldr	w0, [sp, 1032]
	cmp	w0, 0
	ble	.L21
	ldr	w0, [sp, 1032]
	sub	w0, w0, #1
	str	w0, [sp, 1032]
	b	.L12
.L21:
	ldr	w0, [sp, 1044]
	ldr	w1, [sp, 1084]
	cmp	w1, w0
	bge	.L22
	ldr	w0, [sp, 1044]
	sub	w0, w0, #1
	str	w0, [sp, 1044]
	b	.L12
.L22:
	ldr	w0, [sp, 1056]
	cmp	w0, 0
	ble	.L23
	ldr	w0, [sp, 1056]
	sub	w0, w0, #1
	str	w0, [sp, 1056]
	b	.L12
.L23:
	mov	w0, 1
	str	w0, [sp, 1076]
	mov	w0, 2
	str	w0, [sp, 1072]
	b	.L24
.L27:
	ldrsw	x0, [sp, 1076]
	lsl	x0, x0, 2
	add	x1, sp, 1024
	ldr	w0, [x1, x0]
	sub	w2, w0, #1
	ldrsw	x0, [sp, 1076]
	lsl	x0, x0, 2
	add	x1, sp, 1024
	str	w2, [x1, x0]
	ldr	w0, [sp, 1072]
	sub	w0, w0, #1
	str	w0, [sp, 1072]
	ldr	w0, [sp, 1072]
	cmp	w0, 0
	beq	.L37
.L25:
	ldrsw	x0, [sp, 1076]
	lsl	x0, x0, 2
	add	x1, sp, 1024
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bgt	.L27
	b	.L26
.L37:
	nop
.L26:
	ldr	w0, [sp, 1076]
	add	w0, w0, 3
	str	w0, [sp, 1076]
.L24:
	ldr	w0, [sp, 1072]
	cmp	w0, 0
	ble	.L28
	ldr	w0, [sp, 1076]
	cmp	w0, 8
	ble	.L25
.L28:
	ldr	w0, [sp, 1072]
	cmp	w0, 0
	ble	.L12
	mov	w0, 1
	str	w0, [sp, 1080]
.L12:
	ldr	w0, [sp, 1080]
	cmp	w0, 1
	bne	.L30
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L5
.L30:
	ldr	w1, [sp, 1028]
	ldr	w0, [sp, 1032]
	add	w1, w1, w0
	ldr	w0, [sp, 1036]
	add	w1, w1, w0
	ldr	w0, [sp, 1040]
	add	w1, w1, w0
	ldr	w0, [sp, 1044]
	add	w1, w1, w0
	ldr	w0, [sp, 1048]
	add	w1, w1, w0
	ldr	w0, [sp, 1052]
	add	w1, w1, w0
	ldr	w0, [sp, 1056]
	add	w1, w1, w0
	ldr	w0, [sp, 1060]
	add	w0, w1, w0
	cmp	w0, 0
	bne	.L31
	mov	w0, 48
	bl	putchar
	b	.L5
.L31:
	ldr	w1, [sp, 1044]
	ldr	w0, [sp, 1084]
	sub	w0, w1, w0
	str	w0, [sp, 1044]
	mov	w0, 9
	str	w0, [sp, 1076]
	b	.L32
.L35:
	ldrsw	x0, [sp, 1076]
	lsl	x0, x0, 2
	add	x1, sp, 1024
	ldr	w0, [x1, x0]
	str	w0, [sp, 1072]
	b	.L33
.L34:
	ldr	w1, [sp, 1076]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 1072]
	sub	w0, w0, #1
	str	w0, [sp, 1072]
.L33:
	ldr	w0, [sp, 1072]
	cmp	w0, 0
	bgt	.L34
	ldr	w0, [sp, 1076]
	sub	w0, w0, #1
	str	w0, [sp, 1076]
.L32:
	ldr	w0, [sp, 1076]
	cmp	w0, 0
	bge	.L35
	ldr	w0, [sp, 1084]
	cmp	w0, 1
	bne	.L5
	mov	w0, 53
	bl	putchar
.L5:
	mov	w0, 10
	bl	putchar
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 1088
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
