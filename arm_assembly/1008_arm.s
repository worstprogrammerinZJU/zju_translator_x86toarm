	.arch armv8-a
	.file	"1008.c"
	.text
	.section	.rodata
	.align	3
.LC2:
	.string	"%d"
	.align	3
.LC3:
	.string	"%d\n"
	.align	3
.LC4:
	.string	"%d. %s %d"
	.align	3
.LC5:
	.string	"%d %s %d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -368]!
	.cfi_def_cfa_offset 368
	.cfi_offset 29, -368
	.cfi_offset 30, -360
	mov	x29, sp
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 208
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldp	q0, q1, [x1, 64]
	stp	q0, q1, [x0, 64]
	ldp	q0, q1, [x1, 96]
	stp	q0, q1, [x0, 96]
	ldr	x1, [x1, 125]
	str	x1, [x0, 125]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 16
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldp	q0, q1, [x1, 64]
	stp	q0, q1, [x0, 64]
	ldp	q0, q1, [x1, 96]
	stp	q0, q1, [x0, 96]
	ldp	q0, q1, [x1, 128]
	stp	q0, q1, [x0, 128]
	ldr	q0, [x1, 160]
	str	q0, [x0, 160]
	ldr	w1, [x1, 176]
	str	w1, [x0, 176]
	add	x0, sp, 352
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	ldr	w0, [sp, 352]
	mov	w1, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	str	wzr, [sp, 364]
	b	.L2
.L7:
	add	x2, sp, 344
	add	x1, sp, 200
	add	x0, sp, 348
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__isoc99_scanf
	str	wzr, [sp, 360]
	b	.L3
.L6:
	add	x2, sp, 208
	ldrsw	x1, [sp, 360]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	add	x0, x2, x0
	add	x1, sp, 200
	bl	strcmp
	cmp	w0, 0
	beq	.L9
	ldr	w0, [sp, 360]
	add	w0, w0, 1
	str	w0, [sp, 360]
.L3:
	ldr	w0, [sp, 360]
	cmp	w0, 18
	ble	.L6
	b	.L5
.L9:
	nop
.L5:
	ldr	w1, [sp, 344]
	mov	w0, 365
	mul	w2, w1, w0
	ldr	w1, [sp, 360]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w1, w2, w0
	ldr	w0, [sp, 348]
	add	w0, w1, w0
	str	w0, [sp, 356]
	ldr	w0, [sp, 356]
	mov	w1, 57471
	movk	w1, 0x7e07, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 7
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 344]
	ldr	w1, [sp, 344]
	mov	w0, -260
	mul	w0, w1, w0
	ldr	w1, [sp, 356]
	add	w0, w1, w0
	str	w0, [sp, 356]
	ldr	w1, [sp, 356]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 3
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 2
	add	w0, w0, w2
	lsl	w0, w0, 2
	sub	w0, w1, w0
	str	w0, [sp, 360]
	ldr	w1, [sp, 356]
	mov	w0, 60495
	movk	w0, 0x4ec4, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 2
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 13
	mul	w0, w0, w2
	sub	w0, w1, w0
	add	w0, w0, 1
	str	w0, [sp, 348]
	ldr	w4, [sp, 348]
	add	x2, sp, 16
	ldrsw	x1, [sp, 360]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x2, x0
	ldr	w1, [sp, 344]
	mov	w3, w1
	mov	x2, x0
	mov	w1, w4
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	ldr	w0, [sp, 364]
	add	w0, w0, 1
	str	w0, [sp, 364]
.L2:
	ldr	w0, [sp, 352]
	ldr	w1, [sp, 364]
	cmp	w1, w0
	blt	.L7
	mov	w0, 0
	ldp	x29, x30, [sp], 368
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"pop"
	.zero	3
	.string	"no"
	.zero	4
	.string	"zip"
	.zero	3
	.string	"zotz"
	.zero	2
	.string	"tzec"
	.zero	2
	.string	"xul"
	.zero	3
	.string	"yoxkin"
	.string	"mol"
	.zero	3
	.string	"chen"
	.zero	2
	.string	"yax"
	.zero	3
	.string	"zac"
	.zero	3
	.string	"ceh"
	.zero	3
	.string	"mac"
	.zero	3
	.string	"kankin"
	.string	"muan"
	.zero	2
	.string	"pax"
	.zero	3
	.string	"koyab"
	.zero	1
	.string	"cumhu"
	.zero	1
	.string	"uayet"
	.zero	1
	.align	3
.LC1:
	.string	"imix"
	.zero	4
	.string	"ik"
	.zero	6
	.string	"akbal"
	.zero	3
	.string	"kan"
	.zero	5
	.string	"chicchan"
	.string	"cimi"
	.zero	4
	.string	"manik"
	.zero	3
	.string	"lamat"
	.zero	3
	.string	"muluk"
	.zero	3
	.string	"ok"
	.zero	6
	.string	"chuen"
	.zero	3
	.string	"eb"
	.zero	6
	.string	"ben"
	.zero	5
	.string	"ix"
	.zero	6
	.string	"mem"
	.zero	5
	.string	"cib"
	.zero	5
	.string	"caban"
	.zero	3
	.string	"eznab"
	.zero	3
	.string	"canac"
	.zero	3
	.string	"ahau"
	.zero	4
	.text
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
