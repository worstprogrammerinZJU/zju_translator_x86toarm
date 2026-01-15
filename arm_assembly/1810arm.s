	.text
	.p2align	2                               // -- Begin function compute_padding
	.type	compute_padding,@function
compute_padding:                        // @compute_padding
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w10, [sp, #8]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, wzr
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	ldr	w11, [sp, #8]
	sdiv	w10, w9, w11
	mul	w10, w10, w11
	subs	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	compute_padding, .Lfunc_end0-compute_padding
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym compute_padding