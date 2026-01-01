	.arch armv8-a
	.file	"2725.c"
	.text
	.global	seed
	.data
	.align	3
	.type	seed, %object
	.size	seed, 8
seed:
	.xword	1
	.global	x
	.bss
	.align	3
	.type	x, %object
	.size	x, 416
x:
	.zero	416
	.global	y
	.align	3
	.type	y, %object
	.size	y, 416
y:
	.zero	416
	.section	.rodata
	.align	3
.LC0:
	.string	"%.2lf %.2lf\n"
	.align	3
.LC1:
	.string	"UNCERTAIN!"
	.align	3
.LC2:
	.string	"END"
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
	add	x0, sp, 16
	bl	gets
	b	.L2
.L10:
	ldrb	w0, [sp, 16]
	sub	w0, w0, #65
	str	w0, [sp, 40]
	ldrb	w0, [sp, 17]
	cmp	w0, 0
	beq	.L3
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 40]
	str	xzr, [x0, x1, lsl 3]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 40]
	str	xzr, [x0, x1, lsl 3]
	mov	w0, 2
	str	w0, [sp, 44]
	b	.L4
.L5:
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 40]
	ldr	d1, [x0, x1, lsl 3]
	fmov	d0, 1.0e+1
	fmul	d1, d1, d0
	ldrsw	x0, [sp, 44]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	scvtf	d0, w0
	fadd	d0, d1, d0
	mov	x0, 4631952216750555136
	fmov	d1, x0
	fsub	d0, d0, d1
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 40]
	str	d0, [x0, x1, lsl 3]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L4:
	ldrsw	x0, [sp, 44]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 32
	bne	.L5
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	b	.L6
.L7:
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 40]
	ldr	d1, [x0, x1, lsl 3]
	fmov	d0, 1.0e+1
	fmul	d1, d1, d0
	ldrsw	x0, [sp, 44]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	scvtf	d0, w0
	fadd	d0, d1, d0
	mov	x0, 4631952216750555136
	fmov	d1, x0
	fsub	d0, d0, d1
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 40]
	str	d0, [x0, x1, lsl 3]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L6:
	ldrsw	x0, [sp, 44]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L7
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 40]
	ldr	d0, [x0, x1, lsl 3]
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 40]
	add	x1, x1, 26
	str	d0, [x0, x1, lsl 3]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 40]
	ldr	d0, [x0, x1, lsl 3]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 40]
	add	x1, x1, 26
	str	d0, [x0, x1, lsl 3]
	b	.L8
.L3:
	bl	random
	scvtf	d0, w0
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 40]
	str	d0, [x0, x1, lsl 3]
	bl	random
	scvtf	d0, w0
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 40]
	str	d0, [x0, x1, lsl 3]
	bl	random
	scvtf	d0, w0
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 40]
	add	x1, x1, 26
	str	d0, [x0, x1, lsl 3]
	bl	random
	scvtf	d0, w0
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 40]
	add	x1, x1, 26
	str	d0, [x0, x1, lsl 3]
.L8:
	add	x0, sp, 16
	bl	gets
	ldrb	w0, [sp, 16]
	cmp	w0, 64
	bls	.L15
	ldrb	w0, [sp, 16]
	cmp	w0, 90
	bls	.L10
.L15:
	ldrb	w0, [sp, 18]
	sub	w0, w0, #65
	str	w0, [sp, 40]
	ldrb	w0, [sp, 20]
	sub	w0, w0, #65
	str	w0, [sp, 44]
	ldrb	w0, [sp, 22]
	sub	w0, w0, #65
	str	w0, [sp, 36]
	ldrb	w0, [sp, 16]
	cmp	w0, 49
	bne	.L11
	mov	w3, 0
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	bl	first
	mov	w3, 1
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	bl	first
	b	.L12
.L11:
	ldrb	w0, [sp, 16]
	cmp	w0, 50
	bne	.L13
	mov	w3, 0
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	bl	second
	mov	w3, 1
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	bl	second
	b	.L12
.L13:
	ldrb	w0, [sp, 16]
	cmp	w0, 51
	bne	.L12
	mov	w3, 0
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	bl	third
	mov	w3, 1
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	bl	third
.L12:
	add	x0, sp, 16
	bl	gets
	ldrb	w0, [sp, 16]
	cmp	w0, 48
	bls	.L14
	ldrb	w0, [sp, 16]
	cmp	w0, 51
	bls	.L15
.L14:
	ldrb	w0, [sp, 16]
	sub	w0, w0, #65
	str	w0, [sp, 40]
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 40]
	ldr	d1, [x0, x1, lsl 3]
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 40]
	add	x1, x1, 26
	ldr	d0, [x0, x1, lsl 3]
	fsub	d0, d1, d0
	fabs	d0, d0
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fcmpe	d0, d1
	bmi	.L21
	b	.L16
.L21:
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 40]
	ldr	d1, [x0, x1, lsl 3]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 40]
	add	x1, x1, 26
	ldr	d0, [x0, x1, lsl 3]
	fsub	d0, d1, d0
	fabs	d0, d0
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fcmpe	d0, d1
	bmi	.L22
	b	.L16
.L22:
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 40]
	ldr	d0, [x0, x1, lsl 3]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 40]
	ldr	d1, [x0, x1, lsl 3]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L19
.L16:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
.L19:
	add	x0, sp, 16
	bl	gets
.L2:
	add	x2, sp, 16
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L10
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.global	first
	.type	first, %function
first:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	w2, [sp, 4]
	str	w3, [sp]
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 12]
	ldrsw	x1, [sp]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d1, [x2, x0, lsl 3]
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 8]
	ldrsw	x1, [sp]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 4]
	ldrsw	x1, [sp]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 12]
	ldrsw	x1, [sp]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d1, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 8]
	ldrsw	x1, [sp]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 4]
	ldrsw	x1, [sp]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	first, .-first
	.align	2
	.global	second
	.type	second, %function
second:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	d8, [sp, 16]
	.cfi_offset 72, -64
	str	w0, [sp, 44]
	str	w1, [sp, 40]
	str	w2, [sp, 36]
	str	w3, [sp, 32]
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d1, [x2, x0, lsl 3]
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fcmp	d1, d0
	bne	.L25
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 36]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d1, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fsub	d1, d1, d0
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fadd	d0, d1, d0
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 36]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
	b	.L27
.L25:
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d1, [x2, x0, lsl 3]
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fsub	d0, d1, d0
	str	d0, [sp, 72]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d1, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fsub	d0, d1, d0
	str	d0, [sp, 64]
	ldr	d1, [sp, 72]
	ldr	d0, [sp, 64]
	bl	atan2
	str	d0, [sp, 56]
	ldr	d0, [sp, 72]
	fmul	d1, d0, d0
	ldr	d0, [sp, 64]
	fmul	d0, d0, d0
	fadd	d0, d1, d0
	bl	sqrt
	str	d0, [sp, 48]
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d8, [x2, x0, lsl 3]
	ldr	d0, [sp, 56]
	bl	sin
	fmov	d1, d0
	ldr	d0, [sp, 48]
	fmul	d0, d1, d0
	fsub	d0, d8, d0
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 36]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d8, [x2, x0, lsl 3]
	ldr	d0, [sp, 56]
	bl	cos
	fmov	d1, d0
	ldr	d0, [sp, 48]
	fmul	d0, d1, d0
	fadd	d0, d8, d0
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 36]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
.L27:
	nop
	ldr	d8, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	second, .-second
	.align	2
	.global	third
	.type	third, %function
third:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	d8, [sp, 16]
	.cfi_offset 72, -64
	str	w0, [sp, 44]
	str	w1, [sp, 40]
	str	w2, [sp, 36]
	str	w3, [sp, 32]
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d1, [x2, x0, lsl 3]
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fcmp	d1, d0
	bne	.L29
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 36]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d1, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fsub	d1, d1, d0
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fadd	d0, d1, d0
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 36]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
	b	.L31
.L29:
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d1, [x2, x0, lsl 3]
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fsub	d0, d1, d0
	str	d0, [sp, 72]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d1, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d0, [x2, x0, lsl 3]
	fsub	d0, d1, d0
	str	d0, [sp, 64]
	ldr	d1, [sp, 72]
	ldr	d0, [sp, 64]
	bl	atan2
	str	d0, [sp, 56]
	ldr	d0, [sp, 72]
	fmul	d1, d0, d0
	ldr	d0, [sp, 64]
	fmul	d0, d0, d0
	fadd	d0, d1, d0
	bl	sqrt
	str	d0, [sp, 48]
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d8, [x2, x0, lsl 3]
	ldr	d0, [sp, 56]
	bl	sin
	fmov	d1, d0
	ldr	d0, [sp, 48]
	fmul	d0, d1, d0
	fadd	d0, d8, d0
	adrp	x0, x
	add	x2, x0, :lo12:x
	ldrsw	x3, [sp, 36]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	d8, [x2, x0, lsl 3]
	ldr	d0, [sp, 56]
	bl	cos
	fmov	d1, d0
	ldr	d0, [sp, 48]
	fmul	d0, d1, d0
	fsub	d0, d8, d0
	adrp	x0, y
	add	x2, x0, :lo12:y
	ldrsw	x3, [sp, 36]
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	str	d0, [x2, x0, lsl 3]
.L31:
	nop
	ldr	d8, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	third, .-third
	.align	2
	.global	random
	.type	random, %function
random:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	adrp	x0, seed
	add	x0, x0, :lo12:seed
	ldr	x1, [x0]
	mov	x0, 64377
	movk	x0, 0x1fe3, lsl 16
	movk	x0, 0x5af, lsl 32
	movk	x0, 0x41a7, lsl 48
	smulh	x0, x1, x0
	asr	x2, x0, 15
	asr	x0, x1, 63
	sub	x0, x2, x0
	mov	x2, 62237
	movk	x2, 0x1, lsl 16
	mul	x0, x0, x2
	sub	x0, x1, x0
	mov	x1, 16807
	mul	x1, x0, x1
	adrp	x0, seed
	add	x0, x0, :lo12:seed
	ldr	x0, [x0]
	mov	x2, 64377
	movk	x2, 0x1fe3, lsl 16
	movk	x2, 0x5af, lsl 32
	movk	x2, 0x41a7, lsl 48
	smulh	x2, x0, x2
	asr	x2, x2, 15
	asr	x0, x0, 63
	sub	x2, x0, x2
	mov	x0, 2836
	mul	x0, x2, x0
	add	x0, x1, x0
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 0
	blt	.L33
	adrp	x0, seed
	add	x0, x0, :lo12:seed
	ldr	x1, [sp, 8]
	str	x1, [x0]
	b	.L34
.L33:
	ldr	x1, [sp, 8]
	mov	x0, 2147483647
	add	x1, x1, x0
	adrp	x0, seed
	add	x0, x0, :lo12:seed
	str	x1, [x0]
.L34:
	adrp	x0, seed
	add	x0, x0, :lo12:seed
	ldr	d0, [x0]
	scvtf	d0, d0
	mov	x0, 4636737291354636288
	fmov	d1, x0
	fmul	d0, d0, d1
	mov	x0, 281474972516352
	movk	x0, 0x41df, lsl 48
	fmov	d1, x0
	fdiv	d0, d0, d1
	str	d0, [sp]
	ldr	d0, [sp]
	fcvtzs	w0, d0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	random, .-random
	.section	.rodata
	.align	3
.LC3:
	.word	-1698910392
	.word	1048238066
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
