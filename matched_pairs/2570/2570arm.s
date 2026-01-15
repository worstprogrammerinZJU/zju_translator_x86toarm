	.text
	.globl	mean_array                      // -- Begin function mean_array
	.p2align	2
	.type	mean_array,@function
mean_array:                             // @mean_array
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w1, [sp, #4]
	bl	sum_array
	ldr	w8, [sp, #4]
	sdiv	w8, w0, w8
	scvtf	s0, w8
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	mean_array, .Lfunc_end0-mean_array
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sum_array