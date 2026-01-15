	.text
	.p2align	2                               // -- Begin function f_max
	.type	f_max,@function
f_max:                                  // @f_max
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w8, [sp, #4]
	str	w8, [sp]                        // 4-byte Folded Spill
	ldr	w0, [sp, #4]
	bl	jv_copy
	mov	w1, w0
	ldr	w0, [sp]                        // 4-byte Folded Reload
	mov	w2, wzr
	bl	minmax_by
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	f_max, .Lfunc_end0-f_max
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_max
	.addrsig_sym minmax_by
	.addrsig_sym jv_copy