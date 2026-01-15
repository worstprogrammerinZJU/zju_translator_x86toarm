	.text
	.p2align	2                               // -- Begin function setup_array
	.type	setup_array,@function
setup_array:                            // @setup_array
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	str	w3, [sp, #8]
	ldr	w0, [sp, #12]
	bl	av_sample_fmt_is_planar
	cbz	x0, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldrb	w0, [sp, #12]
	bl	av_get_bytes_per_sample
	ldr	w8, [sp, #8]
	mul	w8, w0, w8
	str	w8, [sp]
	ldrb	w8, [sp, #12]
	str	w8, [sp, #12]
	str	wzr, [sp, #4]
	b	.LBB0_2
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	adrp	x9, SWR_CH_MAX
	ldr	w9, [x9, :lo12:SWR_CH_MAX]
	subs	w8, w8, w9
	b.ge	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	x8, [sp, #16]
	ldr	w9, [sp, #4]
	ldr	w10, [sp]
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw #2
	ldur	x9, [x29, #-8]
	ldrsw	x10, [sp, #4]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_2
.LBB0_5:
	b	.LBB0_7
.LBB0_6:
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-8]
	str	x8, [x9]
	b	.LBB0_7
.LBB0_7:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	setup_array, .Lfunc_end0-setup_array
                                        // -- End function
	.type	SWR_CH_MAX,@object              // @SWR_CH_MAX
	.bss
	.globl	SWR_CH_MAX
	.p2align	2
SWR_CH_MAX:
	.word	0                               // 0x0
	.size	SWR_CH_MAX, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym setup_array
	.addrsig_sym av_sample_fmt_is_planar
	.addrsig_sym av_get_bytes_per_sample
	.addrsig_sym SWR_CH_MAX