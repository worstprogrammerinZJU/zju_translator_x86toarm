	.text
	.p2align	2                               // -- Begin function align
	.type	align,@function
align:                                  // @align
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w10, [sp, #8]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #12]
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	ldr	w9, [sp, #8]
	add	w8, w8, w9
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp]                        // 4-byte Folded Reload
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	align, .Lfunc_end0-align
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym align