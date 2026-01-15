	.text
	.p2align	2                               // -- Begin function jvp_refcnt_inc
	.type	jvp_refcnt_inc,@function
jvp_refcnt_inc:                         // @jvp_refcnt_inc
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	add	w8, w8, #1
	str	w8, [x9]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	jvp_refcnt_inc, .Lfunc_end0-jvp_refcnt_inc
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_refcnt_inc