	.text
	.p2align	2                               // -- Begin function config_changed
	.type	config_changed,@function
config_changed:                         // @config_changed
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	wzr, [sp, #4]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #16]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.eq	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x8, AVERROR_INPUT_CHANGED
	ldr	w9, [x8, :lo12:AVERROR_INPUT_CHANGED]
	ldr	w8, [sp, #4]
	orr	w8, w8, w9
	str	w8, [sp, #4]
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_12
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #24]
	ldr	x9, [sp, #16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.ne	.LBB0_10
	b	.LBB0_8
.LBB0_8:
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #32]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #40]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.eq	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	adrp	x8, AVERROR_OUTPUT_CHANGED
	ldr	w9, [x8, :lo12:AVERROR_OUTPUT_CHANGED]
	ldr	w8, [sp, #4]
	orr	w8, w8, w9
	str	w8, [sp, #4]
	b	.LBB0_11
.LBB0_11:
	b	.LBB0_12
.LBB0_12:
	ldr	w0, [sp, #4]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	config_changed, .Lfunc_end0-config_changed
                                        // -- End function
	.type	AVERROR_INPUT_CHANGED,@object   // @AVERROR_INPUT_CHANGED
	.bss
	.globl	AVERROR_INPUT_CHANGED
	.p2align	2
AVERROR_INPUT_CHANGED:
	.word	0                               // 0x0
	.size	AVERROR_INPUT_CHANGED, 4
	.type	AVERROR_OUTPUT_CHANGED,@object  // @AVERROR_OUTPUT_CHANGED
	.globl	AVERROR_OUTPUT_CHANGED
	.p2align	2
AVERROR_OUTPUT_CHANGED:
	.word	0                               // 0x0
	.size	AVERROR_OUTPUT_CHANGED, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym config_changed
	.addrsig_sym AVERROR_INPUT_CHANGED
	.addrsig_sym AVERROR_OUTPUT_CHANGED