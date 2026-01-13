	.text
	.p2align	2                               // -- Begin function min
	.type	min,@function
min:                                    // @min
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #8]
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_2:
	ldr	w8, [sp, #4]
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	min, .Lfunc_end0-min
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym min