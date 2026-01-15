	.text
	.p2align	2                               // -- Begin function f_delpaths
	.type	f_delpaths,@function
f_delpaths:                             // @f_delpaths
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	str	w2, [sp]
	ldr	w0, [sp, #4]
	ldr	w1, [sp]
	bl	jv_delpaths
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	f_delpaths, .Lfunc_end0-f_delpaths
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_delpaths
	.addrsig_sym jv_delpaths