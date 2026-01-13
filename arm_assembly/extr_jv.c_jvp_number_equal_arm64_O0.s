	.text
	.p2align	2                               // -- Begin function jvp_number_equal
	.type	jvp_number_equal,@function
jvp_number_equal:                       // @jvp_number_equal
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	ldur	w0, [x29, #-4]
	ldr	w1, [sp, #8]
	bl	jvp_number_cmp
	subs	x8, x0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jvp_number_equal, .Lfunc_end0-jvp_number_equal
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_number_equal
	.addrsig_sym jvp_number_cmp