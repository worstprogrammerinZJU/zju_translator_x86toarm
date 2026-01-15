	.text
	.p2align	2                               // -- Begin function roundup
	.type	roundup,@function
roundup:                                // @roundup
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	str	wzr, [sp, #12]
	b	.LBB0_6
.LBB0_2:
	mov	w8, #1
	str	w8, [sp, #4]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	b.le	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #4]
	lsl	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_3
.LBB0_5:
	ldr	w8, [sp, #4]
	str	w8, [sp, #12]
	b	.LBB0_6
.LBB0_6:
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	roundup, .Lfunc_end0-roundup
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym roundup