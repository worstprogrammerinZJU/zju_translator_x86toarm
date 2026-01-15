	.text
	.p2align	2                               // -- Begin function f_notequal
	.type	f_notequal,@function
f_notequal:                             // @f_notequal
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
	subs	w8, w0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	jv_bool
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	f_notequal, .Lfunc_end0-f_notequal
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_notequal
	.addrsig_sym jv_free
	.addrsig_sym jv_bool
	.addrsig_sym jv_equal