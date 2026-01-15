	.text
	.globl	jv_number_with_literal          // -- Begin function jv_number_with_literal
	.p2align	2
	.type	jv_number_with_literal,@function
jv_number_with_literal:                 // @jv_number_with_literal
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	jvp_literal_number_new
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_number_with_literal, .Lfunc_end0-jv_number_with_literal
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_literal_number_new