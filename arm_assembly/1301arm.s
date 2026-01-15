	.text
	.p2align	2                               // -- Begin function jvp_refcnt_dec
	.type	jvp_refcnt_dec,@function
jvp_refcnt_dec:                         // @jvp_refcnt_dec
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	jvp_refcnt_dec, .Lfunc_end0-jvp_refcnt_dec
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_refcnt_dec