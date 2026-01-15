	.text
	.p2align	2                               // -- Begin function conntickat
	.type	conntickat,@function
conntickat:                             // @conntickat
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	wzr, [sp, #12]
	str	wzr, [sp, #8]
	adrp	x8, INT64_MAX
	ldr	w8, [x8, :lo12:INT64_MAX]
	str	w8, [sp, #4]
	ldr	x0, [sp, #16]
	bl	conn_waiting
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, SAFETY_MARGIN
	ldr	w8, [x8, :lo12:SAFETY_MARGIN]
	str	w8, [sp, #12]
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #16]
	bl	has_reserved_job
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #16]
	bl	connsoonestjob
	ldr	w8, [x0]
	str	w8, [sp]                        // 4-byte Folded Spill
	bl	nanoseconds
	ldr	w8, [sp]                        // 4-byte Folded Reload
	subs	w8, w8, w0
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	str	w8, [sp, #4]
	mov	w8, #1
	str	w8, [sp, #8]
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	tbnz	x8, #63, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	w0, [sp, #4]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
                                        // kill: def $w8 killed $w8 killed $x8
	mov	w9, #51712
	movk	w9, #15258, lsl #16
	mul	w1, w8, w9
	bl	min
	str	w0, [sp, #4]
	mov	w8, #1
	str	w8, [sp, #8]
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #8]
	cbz	w8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	bl	nanoseconds
	ldr	w8, [sp, #4]
	add	w8, w0, w8
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_8:
	stur	wzr, [x29, #-4]
	b	.LBB0_9
.LBB0_9:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	conntickat, .Lfunc_end0-conntickat
                                        // -- End function
	.type	INT64_MAX,@object               // @INT64_MAX
	.bss
	.globl	INT64_MAX
	.p2align	2
INT64_MAX:
	.word	0                               // 0x0
	.size	INT64_MAX, 4
	.type	SAFETY_MARGIN,@object           // @SAFETY_MARGIN
	.globl	SAFETY_MARGIN
	.p2align	2
SAFETY_MARGIN:
	.word	0                               // 0x0
	.size	SAFETY_MARGIN, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym conntickat
	.addrsig_sym conn_waiting
	.addrsig_sym has_reserved_job
	.addrsig_sym connsoonestjob
	.addrsig_sym nanoseconds
	.addrsig_sym min
	.addrsig_sym INT64_MAX
	.addrsig_sym SAFETY_MARGIN