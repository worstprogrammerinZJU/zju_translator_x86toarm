	.text
	.p2align	2                               // -- Begin function f_setpath
	.type	f_setpath,@function
f_setpath:                              // @f_setpath
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	str	w3, [sp, #12]
	ldur	w0, [x29, #-12]
	ldr	w1, [sp, #16]
	ldr	w2, [sp, #12]
	bl	jv_setpath
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	f_setpath, .Lfunc_end0-f_setpath
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_setpath
	.addrsig_sym jv_setpath