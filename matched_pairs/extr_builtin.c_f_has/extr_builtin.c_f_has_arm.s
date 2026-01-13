	.text
	.p2align	2                               // -- Begin function f_has
	.type	f_has,@function
f_has:                                  // @f_has
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	str	w2, [sp]
	ldr	w0, [sp, #4]
	ldr	w1, [sp]
	bl	jv_has
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	f_has, .Lfunc_end0-f_has
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_has
	.addrsig_sym jv_has