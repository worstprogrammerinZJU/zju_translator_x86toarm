	.text
	.p2align	2                               // -- Begin function get_out_samples
	.type	get_out_samples,@function
get_out_samples:                        // @get_out_samples
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-16]
	ldrsw	x8, [x8]
	add	x8, x8, #2
	ldursw	x9, [x29, #-20]
	add	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	w9, [x8]
	ldr	w8, [sp, #12]
	mul	w8, w8, w9
	str	w8, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	x9, [x8, #24]
	ldrsw	x8, [sp, #12]
	subs	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	ldr	w0, [sp, #12]
	ldur	x8, [x29, #-16]
	ldr	w1, [x8, #16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
                                        // kill: def $w8 killed $w8 killed $x8
	ldr	x9, [sp, #16]
	ldr	w9, [x9]
	mul	w2, w8, w9
	adrp	x8, AV_ROUND_UP
	ldr	w3, [x8, :lo12:AV_ROUND_UP]
	bl	av_rescale_rnd
	add	w8, w0, #2
	str	w8, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
	cbz	x8, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #12]
	adrp	x9, INT_MAX
	ldr	w9, [x9, :lo12:INT_MAX]
	subs	w8, w8, w9
	b.le	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x8, EINVAL
	ldr	w0, [x8, :lo12:EINVAL]
	bl	AVERROR
	stur	w0, [x29, #-4]
	b	.LBB0_5
.LBB0_3:
	ldr	w0, [sp, #12]
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #4]
	mul	w8, w8, w9
	subs	w8, w8, #1
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #8]
	sdiv	w8, w8, w9
	add	w1, w8, #1
	bl	FFMAX
	str	w0, [sp, #12]
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	get_out_samples, .Lfunc_end0-get_out_samples
                                        // -- End function
	.type	AV_ROUND_UP,@object             // @AV_ROUND_UP
	.bss
	.globl	AV_ROUND_UP
	.p2align	2
AV_ROUND_UP:
	.word	0                               // 0x0
	.size	AV_ROUND_UP, 4
	.type	INT_MAX,@object                 // @INT_MAX
	.globl	INT_MAX
	.p2align	2
INT_MAX:
	.word	0                               // 0x0
	.size	INT_MAX, 4
	.type	EINVAL,@object                  // @EINVAL
	.globl	EINVAL
	.p2align	2
EINVAL:
	.word	0                               // 0x0
	.size	EINVAL, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_out_samples
	.addrsig_sym av_rescale_rnd
	.addrsig_sym AVERROR
	.addrsig_sym FFMAX
	.addrsig_sym AV_ROUND_UP
	.addrsig_sym INT_MAX
	.addrsig_sym EINVAL