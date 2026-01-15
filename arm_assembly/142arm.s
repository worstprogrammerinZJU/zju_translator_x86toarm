	.text
	.p2align	2                               // -- Begin function f_equal
	.type	f_equal,@function
f_equal:                                // @f_equal
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	str	w3, [sp, #12]
	ldur	w0, [x29, #-12]
	bl	jv_free
	ldr	w0, [sp, #16]
	ldr	w1, [sp, #12]
	bl	jv_equal
	bl	jv_bool
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	f_equal, .Lfunc_end0-f_equal
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_equal
	.addrsig_sym jv_free
	.addrsig_sym jv_bool
	.addrsig_sym jv_equal