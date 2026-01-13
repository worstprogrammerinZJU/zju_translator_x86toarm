	.text
	.globl	concat_datas                    // -- Begin function concat_datas
	.p2align	2
	.type	concat_datas,@function
concat_datas:                           // @concat_datas
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	stur	wzr, [x29, #-4]
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #8]
	ldr	w8, [x8, x9, lsl #2]
	mov	w0, w8
	ldur	w8, [x29, #-4]
	mov	w1, w8
	bl	concat_data
	str	w0, [sp, #4]
	ldur	w8, [x29, #-4]
	mov	w0, w8
	bl	free_data
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_4:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	concat_datas, .Lfunc_end0-concat_datas
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym concat_data
	.addrsig_sym free_data