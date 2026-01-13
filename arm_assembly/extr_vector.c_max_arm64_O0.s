	.text
	.p2align	2                               // -- Begin function max
	.type	max,@function
max:                                    // @max
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #12]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	ldr	w8, [sp, #8]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	max, .Lfunc_end0-max
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym max