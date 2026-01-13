	.text
	.globl	ty2s                            // -- Begin function ty2s
	.p2align	2
	.type	ty2s,@function
ty2s:                                   // @ty2s
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	bl	make_dict
	ldr	x1, [sp, #8]
	bl	do_ty2s
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	ty2s, .Lfunc_end0-ty2s
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_ty2s
	.addrsig_sym make_dict