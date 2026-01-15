	.text
	.globl	swr_set_channel_mapping         // -- Begin function swr_set_channel_mapping
	.p2align	2
	.type	swr_set_channel_mapping,@function
swr_set_channel_mapping:                // @swr_set_channel_mapping
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x8, EINVAL
	ldr	w0, [x8, :lo12:EINVAL]
	bl	AVERROR
	stur	w0, [x29, #-4]
	b	.LBB0_4
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	stur	wzr, [x29, #-4]
	b	.LBB0_4
.LBB0_4:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	swr_set_channel_mapping, .Lfunc_end0-swr_set_channel_mapping
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
	.addrsig_sym EINVAL