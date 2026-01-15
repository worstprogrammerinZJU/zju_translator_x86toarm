	.text
	.p2align	2                               // -- Begin function f_max_by_impl
	.type	f_max_by_impl,@function
f_max_by_impl:                          // @f_max_by_impl
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	str	w2, [sp]
	ldr	w0, [sp, #4]
	ldr	w1, [sp]
	mov	w2, wzr
	bl	minmax_by
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	f_max_by_impl, .Lfunc_end0-f_max_by_impl
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_max_by_impl
	.addrsig_sym minmax_by