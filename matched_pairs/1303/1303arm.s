	.text
	.p2align	2                               // -- Begin function jvp_refcnt_unshared
	.type	jvp_refcnt_unshared,@function
jvp_refcnt_unshared:                    // @jvp_refcnt_unshared
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w8, gt
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	subs	w8, w8, #1
	cset	w8, eq
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jvp_refcnt_unshared, .Lfunc_end0-jvp_refcnt_unshared
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_refcnt_unshared
	.addrsig_sym assert