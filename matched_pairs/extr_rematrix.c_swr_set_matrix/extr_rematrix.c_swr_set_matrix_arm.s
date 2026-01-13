	.text
	.globl	swr_set_matrix                  // -- Begin function swr_set_matrix
	.p2align	2
	.type	swr_set_matrix,@function
swr_set_matrix:                         // @swr_set_matrix
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	ldur	x8, [x29, #-16]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #40]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x8, EINVAL
	ldr	w0, [x8, :lo12:EINVAL]
	bl	AVERROR
	stur	w0, [x29, #-4]
	b	.LBB0_18
.LBB0_3:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8]
	mov	w1, wzr
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	mov	w2, #8
	str	w2, [sp, #16]                   // 4-byte Folded Spill
	bl	memset
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	w2, [sp, #16]                   // 4-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	bl	memset
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #16]
	subs	w8, w8, #0
	b.le	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #16]
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_6
.LBB0_5:
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #32]
	bl	av_get_channel_layout_nb_channels
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	str	w8, [sp, #32]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #20]
	subs	w8, w8, #0
	b.le	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #20]
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_9
.LBB0_8:
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #28]
	bl	av_get_channel_layout_nb_channels
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_9
.LBB0_9:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	str	w8, [sp, #28]
	str	wzr, [sp, #20]
	b	.LBB0_10
.LBB0_10:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_12 Depth 2
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	b.ge	.LBB0_17
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_10 Depth=1
	str	wzr, [sp, #24]
	b	.LBB0_12
.LBB0_12:                               //   Parent Loop BB0_10 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #32]
	subs	w8, w8, w9
	b.ge	.LBB0_15
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_12 Depth=2
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #24]
	ldr	x8, [x8, x9, lsl #3]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #20]
	ldr	x9, [x9, x10, lsl #3]
	ldrsw	x10, [sp, #24]
	str	x8, [x9, x10, lsl #3]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	ldrsw	x10, [sp, #20]
	ldr	x9, [x9, x10, lsl #3]
	ldrsw	x10, [sp, #24]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_12 Depth=2
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_12
.LBB0_15:                               //   in Loop: Header=BB0_10 Depth=1
	ldursw	x9, [x29, #-28]
	ldur	x8, [x29, #-24]
	add	x8, x8, x9, lsl #3
	stur	x8, [x29, #-24]
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_10
.LBB0_17:
	ldur	x9, [x29, #-16]
	mov	w8, #1
	str	w8, [x9, #24]
	stur	wzr, [x29, #-4]
	b	.LBB0_18
.LBB0_18:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	swr_set_matrix, .Lfunc_end0-swr_set_matrix
                                        // -- End function
	.type	EINVAL,@object                  // @EINVAL
	.bss
	.globl	EINVAL
	.p2align	2
EINVAL:
	.word	0                               // 0x0
	.size	EINVAL, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym AVERROR
	.addrsig_sym memset
	.addrsig_sym av_get_channel_layout_nb_channels
	.addrsig_sym EINVAL